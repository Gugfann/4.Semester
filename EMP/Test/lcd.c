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
/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern volatile INT16S ticks;

/*****************************   Functions   *******************************/

void init_lcd_screen()
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{
	while(ticks < 50); // wait for 100 ms
	ticks = 0;

	// (1)
	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x30; // Function set - 8 bit interface
	flash_enable_pin();

	while(ticks < 2); // wait for 10 ms
	ticks = 0;

	// (2)
	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x30; // Function set - 8 bit interface
	flash_enable_pin();

	while(!ticks); // wait for 5 ms
	ticks = 0;

	// (3)
	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x30; // Function set - 8 bit interface
	flash_enable_pin();

	while(!ticks); // wait for 5 ms
	ticks = 0;

	// (4)
	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x20; // Function set - 4 bit interface
	flash_enable_pin();

	while(!ticks); // wait for 5 ms
	ticks = 0;

	// (5)
	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x20; // Function set - 4 bit interface
	flash_enable_pin();

	while(!ticks); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x80; // DB3 = 1 (2 lines), DB2 = 0 (5 x 8)
	flash_enable_pin();

	while(!ticks); // wait for 5 ms
	ticks = 0;

	// (6)
	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x00;
	flash_enable_pin();

	while(!ticks); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x80; 		// DB3 = 1 - Display on/off control ( DB2 = 0: Display off,
	flash_enable_pin();				//									  DB1 = 0: Cursor off,
									//									  DB0 = 0: Blinking off )
	while(!ticks); // wait for 5 ms
	ticks = 0;

	// (7)
	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x00; //
	flash_enable_pin();

	while(!ticks); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0xC0; 		// DB0 = 1 - Clear Display
	flash_enable_pin();

	while(!ticks); // wait for 5 ms
	ticks = 0;

	// (8)
	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x00; //
	flash_enable_pin();

	while(!ticks); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x60; 		// DB2 = 1 - Entry set ( DB1 = 1: Increment
	flash_enable_pin();				//						 DB0 = 1: Accompanies display shift )

	while(!ticks); // wait for 5 ms
	ticks = 0;

	// (9)
	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x00; //
	flash_enable_pin();

	while(!ticks); // wait for 5 ms
	ticks = 0;

	GPIO_PORTC_DATA_R &= 0x00;
	GPIO_PORTC_DATA_R |= 0x10; 		// DB3 = 1 - Display on/off control ( DB2 = 1: Display On,
	flash_enable_pin();				//									  DB1 = 1: Cursor On,
									// 									  DB0 = 1: Blinking On )
	while(!ticks); // wait for 5 ms
	ticks = 0;
}

void flash_enable_pin()
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{
	ENABLE_PIN_HIGH;
	for(int i = 0; i < 38000; i++);
	ENABLE_PIN_HIGH;
}

void lcd_task( INT8U task_no )
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{

}

void clear_display()
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{

}

void set_cursor(INT8U position)
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{

}

void write_char(char character)
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{

}

/****************************** End Of Module *******************************/
