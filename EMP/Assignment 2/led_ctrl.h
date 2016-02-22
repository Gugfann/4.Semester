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

#ifndef LED_CTRL
	#define LED_CTRL

/***************************** Include files *******************************/
#include "tm4c123gh6pm.h"
#include <stdint.h>
#include "emp_type.h"
#include "globals.h"
#include "emp_type.h"
#include "systick.h"

/*****************************    Defines    *******************************/

#define LS_NORMAL 			0
#define LS_NORWEGIAN 		1
#define LS_EMERGENCY		2

/********************** External declaration of Variables ******************/

/*****************************   Constants   *******************************/

/*************************  Function interfaces ****************************/
