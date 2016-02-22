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
#ifndef BUTTON_DRIVER
	#define BUTTON_DRIVER

/***************************** Include files *******************************/
#include "tm4c123gh6pm.h"
#include <stdint.h>
#include "emp_type.h"
#include "globals.h"
#include "emp_type.h"
#include "systick.h"

/*****************************    Defines    *******************************/

	#define BS_IDLE 			0
	#define BS_FIRST_PUSH 		1
	#define BS_FIRST_RELEASE 	2
	#define BS_SECOND_PUSH 		3
	#define BS_LONG_PUSH 		4

	#define BUTTON_OFF 			GPIO_PORTF_DATA_R & 0x10		//Mask for checking the button

	#define TIM_100_MS 			20
	#define TIM_200_MS   		40
	#define TIM_500_MS  		100
	#define TIM_1_SEC     		200
	#define TIM_2_SEC     		400

/********************** External declaration of Variables ******************/

/*****************************   Constants   *******************************/

/*************************  Function interfaces ****************************/

INT8U button_driver();
/*****************************************************************************
*   Input    : -
*   Output   : Button events -> SINGLE_PUSH, DOUBLE_TAP, LONG_PUSH
*   Function : Detects any event on SW1
******************************************************************************/


#endif
