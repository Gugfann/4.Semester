/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: functions.c
*
* PROJECT....: EMP Assignment 1
*
* DESCRIPTION: See module specification file (.h-file).
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
#include "led_ctrl.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

/*****************************   Functions   *******************************/

INT8U led_ctrl(INT8U event)
{
	if (counter_timer)
		if (!--counter_timer)
			event = TE_TIMEOUT;

	if(event)
	{

		switch (led_state) {
		case NORMAL:
			switch (event)
			{
				case BE_SINGLE_PUSH:
					led_state = NORWEGIAN;
					break;

				case BE_DOUBLE_TAP:
					led_state = EMERGENCY
					break;

				case BE_LONG_PUSH:

					break;

				default:
					break;
			}
			break;

		case NORWEGIAN:
			switch (event)
			{
				case BE_SINGLE_PUSH:

					break;

				case BE_DOUBLE_TAP:
					led_state = EMERGENCY;
					break;

				case BE_LONG_PUSH:
					led_state = NORMAL;
					break;

				default:
					break;
			}
			break;

		case EMERGENCY:
			led_output = RED;
			switch (event)
			{

				case BE_SINGLE_PUSH:
					led_state = NORWEGIAN;
					break;

				case BE_DOUBLE_TAP:

					break;

				case BE_LONG_PUSH:
					led_state = NORMAL;
					break;

				default:
					break;
			}
			break;

		default:
			break;
		}
	}
}

