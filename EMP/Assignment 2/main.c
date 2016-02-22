/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: main.c
*
* PROJECT....: EMP Assignment 1
*
* DESCRIPTION: The main file running the entire program
*
* Change Log:
*****************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
*  160213  JA    Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/
#include "tm4c123gh6pm.h"
#include <stdint.h>
#include "globals.h"
#include "functions.h"
#include "systick.h"
#include "emp_type.h"


/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

/*****************************   Functions   *******************************/

int main(void)
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : main function. Runs the init function and then loops in a state
*   machine
******************************************************************************/
{
	init();
	while ( 1 )
	{
		// super loop
		if(ticks)
		{
			ticks--;

			button_state = button_driver();
			led_state = counter(button_state);
			led_update(led_state);
		}
	}
	return (0);
}

/****************************** End Of Module *******************************/

