/*
 * File:   Part1.c
 * Author: Nadia Shabbar, Tristen Miller
 *
 * Created on May 1, 2023, 11:14 AM
 */


#include "xc.h"
#include "BOARD.h"
#include "RC_Servo.h"
#include "AD.h"
#include "LED.h"

#define POT_MIN 0
#define POT_MAX 1023

uint16_t getSlope(uint16_t out_start, uint16_t out_end) {
    //Gets the slope used to scale the potentiometer's reading to a given output
    uint16_t slope = 0;
    slope = (out_end - out_start) / (POT_MAX - POT_MIN);
    return slope;
}

int getOutput(uint16_t slope, uint16_t input, uint16_t out_start) {
    //Scales an input to the appropriate output
    int output = 0;
    output = out_start + slope * (input - POT_MAX);
    return output;
}
char getPattern(int numLED){
    //gets the pattern required to set numLEDs on
    char pattern =0;
    for (int i = 0; i< numLED; i++) {
            pattern <<= 1;
            pattern |= 1;
        }
    return pattern;
}
void setLED(uint16_t input) {
    //Sets the 3 LED banks to act as a bar-graph for the value of input
    uint16_t slope = getSlope(0, 12);
    int numLED = getOutput(slope, input, 0);
    char pattern = 0;  
    LED_OffBank(LED_BANK1|LED_BANK2|LED_BANK3,0xFF);
    if (numLED == 0){
        LED_OffBank(LED_BANK1|LED_BANK2|LED_BANK3,0xFF);
        return;
    }
    if (numLED <= 4) {
        pattern = getPattern(numLED);
        LED_OnBank(LED_BANK1,pattern);
    } else if (numLED>4 && numLED <=8){
        LED_OnBank(LED_BANK1,0xFF);
        pattern = getPattern(numLED-4);
        LED_OnBank(LED_BANK2,pattern);
    }else if(numLED>8){
        LED_OnBank(LED_BANK1|LED_BANK2,0xFF);
        pattern = getPattern(numLED-8);
        LED_OnBank(LED_BANK3,pattern);
    }
    return;
}

void Servo_Init(void) {
    //Sets port w3 as an AD input, and port W7 as a digital output using the RC timers
    RC_Init();
    AD_Init();
    AD_AddPins(AD_PORTW3);
    RC_AddPins(RC_PORTW07);
    LED_Init();
    LED_AddBanks(LED_BANK1 | LED_BANK2 | LED_BANK3);
}

int main(void) {
    BOARD_Init();
    Servo_Init();
    int pot_reading =0;
    while(1){
        //main event loop
        if(AD_IsNewDataReady()){
            pot_reading = AD_ReadADPin(AD_PORTW3);
            setLED(pot_reading);
            uint16_t ServoSlope = getSlope(MINPULSE,MAXPULSE);
            int pulse = getOutput(ServoSlope,pot_reading,MINPULSE);
            RC_SetPulseTime(RC_PORTW07,pulse);
        }
    }
    return 0;
}
