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
// Device Types
// ------------
//
// LED devices
// -----------
//
#define LED_STATUS 	11
#define LED_RED		21
#define LED_YELLOW	22
#define LED_GREEN	23
//
//

#define ENABLE_PIN_HIGH 	GPIO_PORTD_DATA_R | 0b00001000;
#define ENABLE_PIN_LOW		GPIO_PORTD_DATA_R & 0b11110111;

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

void clear_display();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Clears the LCD screen
******************************************************************************/

void set_cursor(INT8U position);
/*****************************************************************************
*   Input    : Desired cursor position
*   Output   : -
*   Function : Moves the cursor to the desired position
******************************************************************************/

void write_char(char);
/*****************************************************************************
*   Input    : Character to be displayed at cursor position
*   Output   : -
*   Function : Writes character to the current cursor position
******************************************************************************/



/****************************** End Of Module *******************************/
#endif /* LCD_H_ */
