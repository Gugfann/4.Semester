/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: ui.c
*
* PROJECT....: Assignment 4
*
* DESCRIPTION: Support UART comunicaiton
*
* Change Log:
*****************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 150228  MoH   Module created
* 040316  DFH   Module updated
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include <EMP/emp_type.h>
#include <UART/uart0.h>
#include <Tasking/tmodel.h>
#include <Queue/Queue.h>
#include <Tasking/messages.h>
#include <Tasking/events.h>
#include "ui.h"
/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern struct Queue uart0_rx_queue;
extern struct Queue numpad_input_queue;

/*****************************   Functions   *******************************/

void ui_task(INT8U my_id, INT8U my_state, INT8U event, INT8U data)
{
	if( !my_state )
	{
		if ( numpad_input_queue.length )
			set_state(NUMPAD_HANDLER);

		if ( get_msg_event(SEB_UART_RX) )
			set_state(UART_HANDLER);
	}

	switch(my_state)
	{
		case NUMPAD_HANDLER:
			numpad();
			break;

		case UART_HANDLER:
			break;
	}
}

void numpad()
{
	INT8U received = queue_get(&numpad_input_queue);
	put_msg_event(SEB_PRINT, received);
//	if(received == '1')
//		put_msg_event(SEB_PRINT, received);
//	if(received == '#')
//		put_msg_event(SEB_PRINT, received);

	wait( 10 );
}
/****************************** End Of Module *******************************/


