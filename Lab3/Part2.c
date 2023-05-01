/*
 * File:   Part2.c
 * Author: Nadia Shabbar, Tristen Miller
 * 
 * Drives a DC
 *
 * Created on May 1, 2023, 2:44 PM
 */

#include "xc.h"
#include "BOARD.h"
//#include "RC_Servo.h"
#include "AD.h"
#include "LED.h"
#include "pwm.h"
#include <stdio.h>

#define POT_MIN 0
#define POT_MAX 1023

float getSlope(uint16_t out_start, uint16_t out_end) {
    //Gets the slope used to scale the potentiometer's reading to a given output
    float slope = 0;
    float temp1 = out_end - out_start;
    float temp2 = POT_MAX - POT_MIN;
    slope = (temp1) / temp2;
    return slope;
}

int getOutput(float slope, uint16_t input, uint16_t out_start) {
    //Scales an input to the appropriate output
    float output = 0;
    float temp = (input - POT_MIN);
    output = out_start + slope * (temp);

    return (int) output;
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

void DC_Motor_Init(void) {
    PWM_Init();
    AD_Init();
    LED_Init();
    LED_AddBanks(LED_BANK1 | LED_BANK2 | LED_BANK3);
    AD_AddPins(AD_PORTW5);
    PWM_AddPins(PWM_PORTY12);
}
#ifdef PART2
int main(void) {
    BOARD_Init();
    DC_Motor_Init();
    uint16_t pot_reading =0;
    while(1){
        if(AD_IsNewDataReady()){
            pot_reading = AD_ReadADPin(AD_PORTW5);
            setLED(pot_reading);
            float MotorSlope = getSlope(MIN_PWM,MAX_PWM);
            int Pulse_Width = getOutput(MotorSlope,pot_reading,MIN_PWM);
            PWM_SetDutyCycle(PWM_PORTY12,Pulse_Width);
            
        }
    }
    return 0;
}
#endif
