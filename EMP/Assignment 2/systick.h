/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: systick.h
*
* PROJECT....: EMP Assignment 1
*
* DESCRIPTION: Implements systick functionality
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 160213  JA    Module created.
*
*****************************************************************************/

#ifndef SYS_TICK
	#define SYS_TICK

/***************************** Include files *******************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"

/*****************************    Defines    *******************************/

// Missing definitions in tm4c123gh6pm.h file
#define NVIC_INT_CTRL_PEND_SYST   0x04000000  // Pend a systick int
#define NVIC_INT_CTRL_UNPEND_SYST 0x02000000  // Unpend a systick int

#define SYSTICK_PRIORITY    0x7E

#define SYSTICK_RELOAD_VALUE 80000 // 5 mS

/********************** External declaration of Variables ******************/
extern INT64U counter;
/*****************************   Constants   *******************************/

/*************************  Function interfaces ****************************/
void SysTick_Handler(void);
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Interrupt function for systick interrupt
******************************************************************************/

void enable_global_int(void);
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Enables global interrupts
******************************************************************************/

void disable_global_int(void);
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Disables global interrupts
******************************************************************************/

void SysTickInit(void);
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Initialises the systick counter
******************************************************************************/

/****************************** End Of Module *******************************/

#endif
