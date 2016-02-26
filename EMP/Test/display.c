/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: lcd.c
*
* PROJECT....: EMP
*
* DESCRIPTION: See module specification file (.h-file).
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 090222  MoH   Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "devices.h"
#include "lcd.h"
#include "tmodel.h"
#include "messages.h"
#include "swtimers.h"
#include "events.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

/*****************************   Functions   *******************************/

void display_task( INT8U task_no )
{
	INT8U event;
	event = get_msg_event( SEB_BUTTON_EVENT );

	if( event )
	{
		switch(event)
		{
			case BE_SINGLE_PUSH:
				put_msg_event( SEB_CMD_LCD, CMD_CURSOR_SHIFT_R );
				break;

			case BE_DOUBBLE_PUSH:
				put_msg_event( SEB_CMD_LCD, CMD_CURSOR_SHIFT_L );
				break;

			case BE_LONG_PUSH:
				put_msg_event( SEB_DATA_LCD, 0x7E );
				break;

			default:
				break;
		}
	}

}

/****************************** End Of Module *******************************/
