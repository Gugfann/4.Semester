/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: ui.h
*
* PROJECT....: Assignment 4
*
* DESCRIPTION: Support UART comunicaiton
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 150228  MoH   Module created.
* 040316  DFH	Module opdaget
*
*****************************************************************************/

#ifndef ASSIGNMENT_5_UI_H_
	#define ASSIGNMENT_5_UI_H_

/***************************** Include files *******************************/

/*****************************    Defines    *******************************/

#define NUMPAD_HANDLER 	1
#define UART_HANDLER 	2

/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/

void ui_task(INT8U my_id, INT8U my_state, INT8U event, INT8U data);

void numpad();

/****************************** End Of Module *******************************/
#endif

