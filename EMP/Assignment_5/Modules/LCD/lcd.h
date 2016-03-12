/*****************************************************************************
* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: lcd.h
*
* PROJECT....: Assignment 4
*
* DESCRIPTION: Offers services for the display layer
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 050128  KA    Module created
*
*****************************************************************************/

#ifndef LCD_H_
#define LCD_H_

/***************************** Include files *******************************/
#include "Modules/EMP/emp_type.h"
//#include <String.h>
/*****************************    Defines    *******************************/

// LCD Pin Toggles

#define LCD_ENABLE_PIN_HIGH 	GPIO_PORTD_DATA_R |= 0b00001000;
#define LCD_ENABLE_PIN_LOW		GPIO_PORTD_DATA_R &= 0b11110111;

#define LCD_SET_DATA_MODE		GPIO_PORTD_DATA_R |= 0b00000100;
#define LCD_SET_CMD_MODE		GPIO_PORTD_DATA_R &= 0b11111011;

//Buffer

#define LCD_CHAR_BUFFER_SIZE		32

// Addresses

#define LCD_DEFAULT_POSITION		0x04

// Wtite modes
#define CMD_MODE					0
#define DATA_MODE					1


/*****************************   Constants   *******************************/


/*****************************   Functions   *******************************/

void LCD_init();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Initializes the LCD screen for use
******************************************************************************/

void LCD_Flash_Enable_Pin();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Flashes the enable pin for the proper duration
******************************************************************************/

void LCD_task(INT8U my_id, INT8U my_state, INT8U event, INT8U data);
/*****************************************************************************
*   Input    : Task number
*   Output   : -
*   Function : Displays data and executes commands from event buffer on
*   		   LCD screen
******************************************************************************/

void LCD_Set_Cursor(INT8U position);
/*****************************************************************************
*   Input    : Desired cursor position
*   Output   : -
*   Function : Moves the cursor to the desired position
******************************************************************************/

void LCD_Write(INT8U data, INT8U mode);
/*****************************************************************************
*   Input    : Data to be used at cursor position
*   Input    : Select the mode 0: CMD or 1:DATA mode
*   Output   : -
*   Function :
*   			0   : Sends command to LCD
*   			1   : Writes data to the current cursor position
******************************************************************************/

void LCD_Init();

void LCD_Flash_Enable_Pin();

void LCD_Display_On(BOOLEAN state);

void LCD_Shift(BOOLEAN cursorOrShift, BOOLEAN direction);

void LCD_Set_Cursor(INT8U address);


/****************************** End Of Module *******************************/
#endif /* LCD_H_ */
