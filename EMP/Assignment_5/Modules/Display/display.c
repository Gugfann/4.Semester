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
#include "Modules/Tasking/tmodel.h"
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

void display_task( INT8U my_id, INT8U my_state, INT8U event, INT8U data )
{
	INT8U event2 = get_msg_event(SEB_PRINT);

	switch (my_state)
	{
	case 0:
		set_state( USER_INPUT );  // default state
		opening_msg();
		break;

	case SHOW_CLOCK:
		show_clock();
		wait_sem(SEM_RTC_UPDATED, 0);
		break;

	case USER_INPUT:

		if(event2)
		{
			if(event2 == '#')
			{
				write_cmd(LCD_CMD_CLEAR_SCREEN);
				write_cmd(LCD_CMD_DISPLAY_ON);
				set_state( SHOW_CLOCK );
				wait ( 10 );
			}
			else
			{
				write_data(event2);
			}
		}
		break;

	default:
		// you dun goofed
		break;
	}
}

void opening_msg()
{
	set_cursor(0,0);

	INT8U besked1[]= {'F','o','r',' ','t','i','d',',',' ','t','r','y','k'};

	run_sequence(besked1,13);

	set_cursor(0,1);

	INT8U besked2[]= {'"','#','"',':',};

	run_sequence(besked2,3);

	write_cmd(LCD_CMD_BLINK_ON);
}

void show_clock()
{
	// setup

	INT8U sec = get_msg_state(SSM_RTC_SEC);
	INT8U min = get_msg_state(SSM_RTC_MIN);
	INT8U hour = get_msg_state(SSM_RTC_HOUR);
	INT8U colon = ':';

	if( sec & 0x01)
		colon = ' ';

	set_cursor(4,0);

	write_data(hour / 10 + '0');
	write_data(hour % 10 + '0');

	write_data(colon);

	write_data(min / 10 + '0');
	write_data(min % 10 + '0');

	write_data(colon);

	write_data(sec / 10 + '0');
	write_data(sec % 10 + '0');

}

void set_cursor(INT8U x, INT8U y)
{
	  INT8U pos;

	  pos = y*0x40 + x;
	  pos |= 0x80;

	  write_cmd(pos);
}

void write_data(INT8U data)
{
	queue_put( &display_lcd_queue , DATA_MODE);
	queue_put( &display_lcd_queue , data);
}

void write_cmd(INT8U cmd)
{
	queue_put( &display_lcd_queue , CMD_MODE);
	queue_put( &display_lcd_queue , cmd);
}

void run_sequence(INT8U array[], INT8U size)
{
	for(int i = 0; i < size; i++)
	{
		write_data(array[i]);
	}
}
/****************************** End Of Module *******************************/
