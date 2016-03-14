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
#include <tm4c123gh6pm.h>
#include "Modules/EMP/emp_type.h"
#include "Modules/LCD/lcd.h"
#include "Modules/Tasking/tmodel.h"
#include "Modules/Tasking/messages.h"
#include "Modules/SWTimers/swtimers.h"
#include <Queue/Queue.h>

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern volatile INT16S ticks;
extern struct Queue display_lcd_queue;
INT8U char_buffer[LCD_CHAR_BUFFER_SIZE];
INT8U sequence = 0;

/*****************************   Functions   *******************************/

void LCD_init()
{
	while ( ticks < 20 ); // wait for 100 ms
	ticks = 0;

// (1)
	GPIO_PORTC_DATA_R = 0x30; 			// Function set - 8 bit interface
	LCD_Flash_Enable_Pin();

	while ( ticks < 2 ); // wait for 10 ms
	ticks = 0;

// (2)
	GPIO_PORTC_DATA_R = 0x30; 			// Function set - 8 bit interface
	LCD_Flash_Enable_Pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (3)
	GPIO_PORTC_DATA_R = 0x30; 			// Function set - 8 bit interface
	LCD_Flash_Enable_Pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (4)
	GPIO_PORTC_DATA_R = 0x20; 			// Function set - 4 bit interface
	LCD_Flash_Enable_Pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (5)
	GPIO_PORTC_DATA_R = 0x20; 			// Function set - 4 bit interface
	LCD_Flash_Enable_Pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R = 0x80; 			// DB3 = 1 (2 lines), DB2 = 0 (5 x 8)
	LCD_Flash_Enable_Pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (6)
	GPIO_PORTC_DATA_R = 0x00; //
	LCD_Flash_Enable_Pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R = 0xC0; 			// DB3 = 1 - Display on/off control ( DB2 = 1: Display On,
	LCD_Flash_Enable_Pin();				//									  DB1 = 1: Cursor On,
										// 									  DB0 = 1: Blinking On )

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (7)
	GPIO_PORTC_DATA_R = 0x00; //
	LCD_Flash_Enable_Pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R = 0x60; 			// DB2 = 1 - Entry set ( DB1 = 1: Increment
	LCD_Flash_Enable_Pin();				//						 DB0 = 0: Accompanies display shift )

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

// (8)
	GPIO_PORTC_DATA_R = 0x00; //
	LCD_Flash_Enable_Pin();

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R = 0x10; 			// Clear Display
	LCD_Flash_Enable_Pin();				//

	while ( !ticks ); // wait for 5 ms
	ticks = 0;

	LCD_Set_Cursor(LCD_DEFAULT_POSITION);

}

void LCD_Flash_Enable_Pin()
{
	LCD_ENABLE_PIN_HIGH;
	LCD_ENABLE_PIN_LOW;
}

void LCD_Write(INT8U data, INT8U mode)
{
	INT8U low_nibble = (data & 0x0F);
	INT8U high_nibble = ((data & 0xF0) >> 4);

	if (mode)
	{
		LCD_SET_DATA_MODE;
	}
	else
	{
		LCD_SET_CMD_MODE;
	}

	GPIO_PORTC_DATA_R &= 0x0F;
	GPIO_PORTC_DATA_R |= (high_nibble << 4);
	LCD_Flash_Enable_Pin();

	// Maybe some wait time?

	GPIO_PORTC_DATA_R &= 0x0F;
	GPIO_PORTC_DATA_R |= (low_nibble << 4);
	LCD_Flash_Enable_Pin();
	// send ready event
}

void LCD_Set_Cursor(INT8U address)
{
	if(address < 128)
		LCD_Write( address | 0x80 , CMD_MODE);
}

void LCD_task(INT8U my_id, INT8U my_state, INT8U event, INT8U data)
{
	static INT8U selector = 0;
	static INT8U my_mode = 0;
	static INT8U my_data = 0;

	INT8U received;
	if(get_queue(Q_LCD,&received,0))
	{
		selector++;
		if(selector % 2)
			my_mode = received;
		else
			my_data = received;

		if(my_data && my_mode)
		{
			LCD_Write( my_data, my_mode );
			my_data = 0;
			my_mode = 0;
		}
	}

//	INT8U test = display_lcd_queue.length;
//	if(test)
//	{
//		INT8U mode = queue_get(&display_lcd_queue);
//		INT8U data = queue_get(&display_lcd_queue);
//
//		LCD_Write( data, mode );
//	}

}

/****************************** End Of Module *******************************/
