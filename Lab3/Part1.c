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
#include <stdio.h>
#define POT_MIN 0
#define POT_MAX 1023

float getSlope(uint16_t out_start, uint16_t out_end) {
    //Gets the slope used to scale the potentiometer's reading to a given output
    float slope = 0;
    float temp1=out_end-out_start;
    float temp2 = POT_MAX-POT_MIN;
    slope = (temp1) / temp2;
    return slope;
}

int getOutput(float slope, uint16_t input, uint16_t out_start) {
    //Scales an input to the appropriate output
    float output = 0;
    float temp = (input-POT_MIN);
    output = out_start + slope * (temp);
 
    return (int)output;
}

char getPattern(int numLED) {
    //gets the pattern required to set numLEDs on
    char pattern = 0;
    for (int i = 0; i < numLED; i++) {
        pattern <<= 1;
        pattern |= 1;
    }
    return pattern;
}

void setLED(uint16_t input) {
    //Sets the 3 LED banks to act as a bar-graph for the value of input
    float slope = getSlope(0, 12);
    int numLED = getOutput(slope, input, 0);
    char pattern = 0;
    LED_OffBank(LED_BANK1, 0xFF);
    LED_OffBank(LED_BANK2, 0xFF);
    LED_OffBank(LED_BANK3, 0xFF);
    if (numLED == 0) {
        LED_OffBank(LED_BANK1, 0xFF);
        LED_OffBank(LED_BANK2, 0xFF);
        LED_OffBank(LED_BANK3, 0xFF);
        return;
    }
    if (numLED <= 4) {
        pattern = getPattern(numLED);
        LED_OnBank(LED_BANK1, pattern);
    } else if (numLED > 4 && numLED <= 8) {
        LED_OnBank(LED_BANK1, 0xFF);
        pattern = getPattern(numLED - 4);
        LED_OnBank(LED_BANK2, pattern);
    } else if (numLED > 8) {
        LED_OnBank(LED_BANK1, 0xFF);
        LED_OnBank(LED_BANK2, 0xFF);
        pattern = getPattern(numLED - 8);
        LED_OnBank(LED_BANK3, pattern);
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
#ifndef SERVO_MIN_TEST
int main(void) {
    BOARD_Init();
    Servo_Init();
    int pot_reading = 0;
    while (1) {
        //main event loop
        if (AD_IsNewDataReady()) {
            pot_reading = AD_ReadADPin(AD_PORTW3);
            setLED(pot_reading);
            float ServoSlope = getSlope(MINPULSE, MAXPULSE);
            int pulse = getOutput(ServoSlope, pot_reading, MINPULSE);
            RC_SetPulseTime(RC_PORTW07, pulse);
        }
    }
    return 0;
}
#else
int main(void){
    BOARD_Init();
    Servo_Init();
    int foo = RC_GetPulseTime(RC_PORTW07);
    for(int i =0;i<10000;i++){
        asm("NOP");
    }
    int x = 1;
    printf("Changing pulse by %d",x);
    RC_SetPulseTime(RC_PORTW07,foo+x);
    while(1);
    return 0;
}
#endif