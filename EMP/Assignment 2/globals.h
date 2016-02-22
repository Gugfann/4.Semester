/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: globals.h
*
* PROJECT....: EMP Assignment 1
*
* DESCRIPTION: Globally available variables
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 160213  JA    Module created.
*
*****************************************************************************/

#include "emp_type.h"

#ifndef GLOBALS
	#define GLOBALS

/***************************** Include files *******************************/

/*****************************    Defines    *******************************/

/********************** External declaration of Variables ******************/
extern INT64U previous_counter;
extern INT8S direction;
extern INT8U color;
extern INT64U counter;
extern INT8U state;
extern INT64U rising_edge;

/*****************************   Constants   *******************************/

/*************************  Function interfaces ****************************/

extern void test2(void);
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Test function
******************************************************************************/


/****************************** End Of Module *******************************/

#endif
