/*
 * Authors: Nadia Shabbar, Tristen Miller
 */

#include "xc.h"
#include "Stepper.h"
#include "BOARD.h"

int main(void) {
    BOARD_Init();
    Stepper_Init();
   // Stepper_SetRate(200);
    Stepper_InitSteps(REVERSE,1000);
    while(1);
    return 0;
}
