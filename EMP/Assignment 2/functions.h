/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: functions.h
*
* PROJECT....: EMP Assignment 1
*
* DESCRIPTION: Implements all of the functionality used in assignment 1
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 160213  JA    Module created.
*
*****************************************************************************/

#ifndef FUNCTIONS
	#define FUNCTIONS

/***************************** Include files *******************************/
#include "tm4c123gh6pm.h"
#include <stdint.h>
#include "emp_type.h"
#include "globals.h"
#include "emp_type.h"
#include "systick.h"

/*****************************    Defines    *******************************/
#define NORMAL_STATE 0
#define PUSH_STATE 1
#define AUTO_MODE_STATE 2

#define DOUBLE_CLICK_TIME 50    				//time in 5ms's
#define HOLD_TIME 400							//time in 5ms's
#define TOGGLE_RATE 40							//time in 5ms's
#define DEBOUNCE_TIME 3 						//time in 5ms's
#define BUTTON_OFF GPIO_PORTF_DATA_R & 0x10		//Mask for checking the button

/********************** External declaration of Variables ******************/

/*****************************   Constants   *******************************/

/*************************  Function interfaces ****************************/

void init();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Initialises all other modules, which needs to be initialized
*  	for the project
******************************************************************************/

void next(void);
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Changes the RGB-led to the next colour, depending on the
*   current counting direction
******************************************************************************/

INT8U normal_state(void);
/*****************************************************************************
*   Input    : -
*   Output   : INT8U representing the next state to switch to
*   Function : Returns the push state, when the button is pushed
******************************************************************************/

INT8U push(void);
/*****************************************************************************
*   Input    : -
*   Output   : INT8U representing the next state to switch to
*   Function : Handles button functions. Checks whether it was a click, long
*   click or double click and returns the corresponding state
******************************************************************************/

INT8U auto_mode(void);
/*****************************************************************************
*   Input    : -
*   Output   : INT8U representing the next state to switch to
*   Function : Autocounts the color. Returns when button is pressed
******************************************************************************/

void debounce();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Waits for an amount of time specified in DEBOUNCE_TIME to
*   debounce the button
******************************************************************************/

/****************************** End Of Module *******************************/

#endif
