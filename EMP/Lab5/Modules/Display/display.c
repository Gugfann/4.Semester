/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: display.c
*
* PROJECT....: Assignment 4
*
* DESCRIPTION: Uses the services to perform the desired output
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 090222  MoH   Module created.
* 040316  DFH   Module update
*
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include <tm4c123gh6pm.h>
#include "Modules/EMP/emp_type.h"
#include "Modules/LCD/lcd.h"
#include "tmodel.h"
#include "Modules/Tasking/messages.h"
#include "Modules/SWTimers/swtimers.h"
#include "Modules/Tasking/events.h"
#include "Modules/Display/display.h"
#include <Queue/Queue.h>

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/
extern struct Queue display_lcd_queue;

/*****************************   Functions   *******************************/

void display_task( INT8U task_no )
{
	// setup
	static INT8U display_state = SHOW_CLOCK;

	// harvest events
	INT32U rtc_event = get_msg_event(SEB_TIME_UPDATE);
	INT32U ui_event = 0;    // this event is not implementet yet

	if (rtc_event || ui_event)
	{
		switch (display_state)
		{
		case SHOW_CLOCK:
			show_clock();
			break;

		default:
			// you don gooft
			break;
		}
	}
}

void show_clock()
{
	// setup

	// clear the screen
	//queue_put( &display_lcd_queue , CMD_MODE);
	//queue_put( &display_lcd_queue , LCD_CMD_CLEAR_SCREEN);

	// set the pointer
	queue_put( &display_lcd_queue , CMD_MODE);
	queue_put( &display_lcd_queue , LCD_CMD_RETURN_HOME);

	// write the text
	// hours
	queue_put( &display_lcd_queue , DATA_MODE);
	queue_put( &display_lcd_queue , get_msg_state(SSM_HOURS_HIGH));
	queue_put( &display_lcd_queue , DATA_MODE);
	queue_put( &display_lcd_queue , get_msg_state(SSM_HOURS_LOW));

	queue_put( &display_lcd_queue , DATA_MODE);
	queue_put( &display_lcd_queue , get_msg_state(SSM_COLON));

	// minuts
	queue_put( &display_lcd_queue , DATA_MODE);
	queue_put( &display_lcd_queue , get_msg_state(SSM_MINUTES_HIGH));
	queue_put( &display_lcd_queue , DATA_MODE);
	queue_put( &display_lcd_queue , get_msg_state(SSM_MINUTES_LOW));

	queue_put( &display_lcd_queue , DATA_MODE);
	queue_put( &display_lcd_queue , get_msg_state(SSM_COLON));

	// seconds
	queue_put( &display_lcd_queue , DATA_MODE);
	queue_put( &display_lcd_queue , get_msg_state(SSM_SECONDS_HIGH));
	queue_put( &display_lcd_queue , DATA_MODE);
	queue_put( &display_lcd_queue , get_msg_state(SSM_SECONDS_LOW));

}

/****************************** End Of Module *******************************/
