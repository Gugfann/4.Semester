/*****************************************************************************
* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: ecp.h
*
* PROJECT....: ECP
*
* DESCRIPTION: Test.
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 050128  KA    Module created.
*
*****************************************************************************/

#ifndef LCD_H_
#define LCD_H_

/***************************** Include files *******************************/
#include "emp_type.h"
/*****************************    Defines    *******************************/

// LCD Pin Toggles

#define ENABLE_PIN_HIGH 	GPIO_PORTD_DATA_R |= 0b00001000;
#define ENABLE_PIN_LOW		GPIO_PORTD_DATA_R &= 0b11110111;

#define SET_DATA_MODE		GPIO_PORTD_DATA_R |= 0b00000100;
#define SET_CMD_MODE		GPIO_PORTD_DATA_R &= 0b11111011;

// LCD Commands

#define CMD_CLEAR_SCREEN 		0x01
#define CMD_RETURN_HOME			0x02
#define CMD_DISPLAY_OFF			0x08
#define CMD_DISPLAY_ON			0x0C
#define CMD_BLINK_ON			0x0D
#define CMD_CURSOR_ON			0x0E
#define CMD_C_B_ON				0x0F
#define CMD_ENTRY_MODE_L		0x04
#define CMD_ENTRY_MODE_L_S		0x05
#define CMD_ENTRY_MODE_R		0x06
#define CMD_ENTRY_MODE_R_S		0x07
#define CMD_CURSOR_SHIFT_L 		0x10
#define CMD_CURSOR_SHIFT_R		0x14
#define CMD_DISPLAY_SHIFT_L		0x18
#define CMD_DISPLAY_SHIFT_R		0x1C

/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/

void init_lcd_screen();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Initializes the LCD screen for use
******************************************************************************/

void flash_enable_pin();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Flashes the enable pin for the proper duration
******************************************************************************/

void lcd_task( INT8U task_no );
/*****************************************************************************
*   Input    : Task number
*   Output   : -
*   Function : Displays data and executes commands from event buffer on
*   		   LCD screen
******************************************************************************/

void set_cursor(INT8U position);
/*****************************************************************************
*   Input    : Desired cursor position
*   Output   : -
*   Function : Moves the cursor to the desired position
******************************************************************************/

void write_data(INT8U data);
/*****************************************************************************
*   Input    : Character to be displayed at cursor position
*   Output   : -
*   Function : Writes data to the current cursor position
******************************************************************************/

void write_command(INT8U cmd);
/*****************************************************************************
*   Input    : Command to be performed
*   Output   : -
*   Function : Sends command to LCD
******************************************************************************/

void push_back(INT8U array[], INT8U item1, INT8U item2);
/*****************************************************************************
*   Input    : Command to be performed
*   Output   : -
*   Function : Sends command to LCD
******************************************************************************/

INT8U pop_front(INT8U array[]);
/*****************************************************************************
*   Input    : Command to be performed
*   Output   : -
*   Function : Sends command to LCD
******************************************************************************/

BOOLEAN queue_empty(INT8U array[]);
/*****************************************************************************
*   Input    : Command to be performed
*   Output   : -
*   Function : Sends command to LCD
******************************************************************************/

/****************************** End Of Module *******************************/
#endif /* LCD_H_ */
