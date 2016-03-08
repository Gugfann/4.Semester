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
#include "lcd.h"
#include "tmodel.h"
#include "messages.h"
#include "swtimers.h"

/*****************************    Defines    *******************************/

#define MAX_ITEMS 64

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern volatile INT16S ticks;
INT8U cmd_queue[MAX_ITEMS];
INT8U data_queue[MAX_ITEMS];
INT8U low_nibble;
INT8U high_nibble;
INT8U cmd_event;
INT8U data_event;
INT8S cmd_itr = -1;
INT8S data_itr = -1;
INT8U lcd_timeout;
BOOLEAN lcd_ready = 1;


/*****************************   Functions   *******************************/

void init_lcd_screen()
/*****************************************************************************
 *   Input    :
 *   Output   :
 *   Function :
 ******************************************************************************/
{

	while ( ticks < 20 ); // wait for 100 ms
	ticks = 0;

// (1)
	GPIO_PORTC_DATA_R = 0x30; 			// Function set - 8 bit interface
	flash_enable_pin();

	while ( ticks < 2 ); // wait for 10 ms
	ticks = 0;

// (2)
	GPIO_PORTC_DATA_R = 0x30; 			// Function set - 8 bit interface
	flash_enable_pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (3)
	GPIO_PORTC_DATA_R = 0x30; 			// Function set - 8 bit interface
	flash_enable_pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (4)
	GPIO_PORTC_DATA_R = 0x20; 			// Function set - 4 bit interface
	flash_enable_pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (5)
	GPIO_PORTC_DATA_R = 0x20; 			// Function set - 4 bit interface
	flash_enable_pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R = 0x80; 			// DB3 = 1 (2 lines), DB2 = 0 (5 x 8)
	flash_enable_pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (6)
	GPIO_PORTC_DATA_R = 0x00; //
	flash_enable_pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R = 0xD0; 			// DB3 = 1 - Display on/off control ( DB2 = 1: Display On,
	flash_enable_pin();					//									  DB1 = 1: Cursor On,
										// 									  DB0 = 1: Blinking On )

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (7)
	GPIO_PORTC_DATA_R = 0x00; //
	flash_enable_pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R = 0x60; 			// DB2 = 1 - Entry set ( DB1 = 1: Increment
	flash_enable_pin();					//						 DB0 = 0: Accompanies display shift )

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (8)
	GPIO_PORTC_DATA_R = 0x00; //
	flash_enable_pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R = 0x10; 			// Clear Display
	flash_enable_pin();					//

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

	for(INT8U i = 0; i < MAX_ITEMS; i++)
	{
		cmd_queue[i] = 0;
		data_queue[i] = 0;
	}
}

void flash_enable_pin()
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{
	ENABLE_PIN_HIGH;
	//for(int i = 0; i < 40000; i++);
	ENABLE_PIN_LOW;
}

void lcd_task( INT8U task_no )

/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{
	cmd_event = get_msg_event(SEB_CMD_LCD);
	data_event = get_msg_event(SEB_DATA_LCD);
	lcd_timeout = get_msg_event(SEB_TO_LCD);

	if(lcd_timeout)
		lcd_ready = 1;

	if(cmd_event)
	{
		low_nibble 	= (cmd_event & 0x0F);
		high_nibble = ((cmd_event & 0xF0) >> 4);

		cmd_itr++;
		cmd_queue[cmd_itr] = low_nibble;
		cmd_itr++;
		cmd_queue[cmd_itr] = high_nibble;
	}

	if(data_event)
	{
		low_nibble 	= (data_event & 0x0F);
		high_nibble = ((data_event & 0xF0) >> 4);

		data_itr++;
		data_queue[data_itr] = low_nibble;
		data_itr++;
		data_queue[data_itr] = high_nibble;
	}

	if( cmd_itr >= 0 && lcd_ready )			// Items exist in queue
	{
		SET_CMD_MODE;

		GPIO_PORTC_DATA_R &= 0x0F;
		GPIO_PORTC_DATA_R |= (cmd_queue[cmd_itr] << 4);
		flash_enable_pin();

		cmd_itr--;
		lcd_ready = 0;
		start_swtimer(ST_LCD, SEB_TO_LCD, MILLISEC(5));
	}

	if( data_itr >= 0 && lcd_ready )
	{
		SET_DATA_MODE;

		GPIO_PORTC_DATA_R &= 0x0F;
		GPIO_PORTC_DATA_R |= (data_queue[data_itr] << 4);
		flash_enable_pin();

		data_itr--;
		lcd_ready = 0;
		start_swtimer(ST_LCD, SEB_TO_LCD, MILLISEC(5));
	}
}

void set_cursor(INT8U position)
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{

}

void write_data(INT8U data)
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{

}

void write_command(INT8U cmd)
{
	INT8U low_nibble = (cmd & 0x0F);
	INT8U high_nibble = ((cmd & 0xF0) >> 4);
	SET_CMD_MODE;

	GPIO_PORTC_DATA_R &= 0x0F;
	GPIO_PORTC_DATA_R |= (high_nibble << 4);
	flash_enable_pin();

	// wait
	INT8U timeout_lcd = get_msg_event(SEB_TO_LCD);

	if ( timeout_lcd )
	{
		GPIO_PORTC_DATA_R &= 0x0F;
		GPIO_PORTC_DATA_R |= (low_nibble << 4);
		flash_enable_pin();
	}
	// send ready event

}

/****************************** End Of Module *******************************/
