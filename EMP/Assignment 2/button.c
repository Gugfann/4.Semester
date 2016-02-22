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

	#include "button.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

	static INT8U button_state = BS_IDLE;
	static INT16U button_timer;
	INT8U button_event = GE_NO_EVENT;

/*****************************   Functions   *******************************/


INT8U button_driver()
{
	button_event = GE_NO_EVENT;

	switch (button_state)
	{
	case BS_IDLE:
		if(!BUTTON_OFF)
		{
			button_state = BS_FIRST_PUSH;
			button_timer = TIM_2_SEC;
		}
		break;

	case BS_FIRST_PUSH:
		if(! --button_timer) // 2 sek timeout -> long push
		{
			button_state = BS_LONG_PUSH;
			button_event = BE_LONG_PUSH;
		}
		else
		{
			if(BUTTON_OFF)
			{
				button_state = BS_FIRST_RELEASE;
				button_timer = TIM_100_MS;
			}
		}

		break;

	case BS_FIRST_RELEASE:
		if(! --button_timer) // 100 ms timeout -> no double push
		{
			button_state = BS_IDLE;
			button_event = BE_SINGLE_PUSH;
		}
		else
		{
			if(!BUTTON_OFF)
			{
				button_state = BS_SECOND_PUSH;
				button_timer = TIM_2_SEC;
			}
		}
		break;

	case BS_SECOND_PUSH:
		if(! --button_timer) // 2 sek timeout -> long push
		{
			button_state = BS_LONG_PUSH;
			button_event = BE_LONG_PUSH;
		}
		else
		{
			if(BUTTON_OFF)
			{
				button_state = BS_IDLE;
				button_event = BE_DOUBLE_TAP;
			}
		}
		break;

	case BS_LONG_PUSH:
		if(BUTTON_OFF)
		{
			button_state = BS_IDLE;
		}
		break;

	default:
		break;

	}
	return button_event;
}

