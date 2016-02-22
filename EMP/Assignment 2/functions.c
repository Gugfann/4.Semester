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
#include "functions.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

/*****************************   Functions   *******************************/
void init()
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
	SYSCTL_RCGC2_R = SYSCTL_RCGC2_GPIOF; //Something has to happen after this to use some cycles

	SysTickInit();
	enable_global_int();

	GPIO_PORTF_DIR_R = 0x0E;

	GPIO_PORTF_DEN_R = 0x1E;

	GPIO_PORTF_PUR_R = 0x10;
}

void next(void)
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
 	if(direction == 'u')
 	{
    	color++;
    } else
    {
		color--;
	}
    	color &= 0b111;
    	GPIO_PORTF_DATA_R &= 0b11110001;
    	GPIO_PORTF_DATA_R |= (((color & 0b1) << 2) | (color & 0b10) | ((color & 0b100) >> 2)) << 1;
}

INT8U normal_state()
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{

	while ( BUTTON_OFF )
	{

	};

	return PUSH_STATE;
}

INT8U push()
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
	if(counter - rising_edge < DOUBLE_CLICK_TIME)
	{
		if (direction == 'd')
			direction = 'u';
		else
			direction = 'd';
	}
	rising_edge = counter;
	next();
	debounce();

	while( !(BUTTON_OFF) )
	{

	};

	debounce();

	if(counter - rising_edge > HOLD_TIME)
	{
		return AUTO_MODE_STATE;
	}
	else
	{
		return NORMAL_STATE;
	}
}

INT8U auto_mode()
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{

	while ( BUTTON_OFF )
	{
		if(counter > previous_counter + TOGGLE_RATE)
		{
			next();
			previous_counter = counter;
		}
	};
	return NORMAL_STATE;
}

void debounce()
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
	INT64U prev_count = counter;
	while( counter < prev_count + DEBOUNCE_TIME )
	{

	};
}

/****************************** End Of Module *******************************/
