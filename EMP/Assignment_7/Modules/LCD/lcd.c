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
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern xQueueHandle uart0_rx_queue;
extern xQueueHandle LCD_image_queue;
extern xQueueHandle LCD_char_queue;

enum lcd_states {
	 WAIT,
	 NEW_IMAGE,
	 DIRECT_INPUT
};

INT8U lcd_state = 0;

/*****************************   Functions   *******************************/

void LCD_init()
{
	vTaskDelay(100 / portTICK_RATE_MS);
// (1)
	GPIO_PORTC_DATA_R = 0x30; 			// Function set - 8 bit interface
	LCD_Flash_Enable_Pin();

	vTaskDelay(10 / portTICK_RATE_MS);

// (2)
	GPIO_PORTC_DATA_R = 0x30; 			// Function set - 8 bit interface
	LCD_Flash_Enable_Pin();

	vTaskDelay(5 / portTICK_RATE_MS);

// (3)
	GPIO_PORTC_DATA_R = 0x30; 			// Function set - 8 bit interface
	LCD_Flash_Enable_Pin();

	vTaskDelay(5 / portTICK_RATE_MS);

// (4)
	GPIO_PORTC_DATA_R = 0x20; 			// Function set - 4 bit interface
	LCD_Flash_Enable_Pin();

	vTaskDelay(5 / portTICK_RATE_MS);

// (5)
	GPIO_PORTC_DATA_R = 0x20; 			// Function set - 4 bit interface
	LCD_Flash_Enable_Pin();

	vTaskDelay(5 / portTICK_RATE_MS);

	GPIO_PORTC_DATA_R = 0x80; 			// DB3 = 1 (2 lines), DB2 = 0 (5 x 8)
	LCD_Flash_Enable_Pin();

	vTaskDelay(5 / portTICK_RATE_MS);

// (6)
	GPIO_PORTC_DATA_R = 0x00; //
	LCD_Flash_Enable_Pin();

	vTaskDelay(5 / portTICK_RATE_MS);

	GPIO_PORTC_DATA_R = 0xD0; 			// DB3 = 1 - Display on/off control ( DB2 = 1: Display On,
	LCD_Flash_Enable_Pin();				//									  DB1 = 1: Cursor On,
										// 									  DB0 = 1: Blinking On )

	vTaskDelay(5 / portTICK_RATE_MS);

// (7)
	GPIO_PORTC_DATA_R = 0x00; //
	LCD_Flash_Enable_Pin();

	vTaskDelay(5 / portTICK_RATE_MS);

	GPIO_PORTC_DATA_R = 0x60; 			// DB2 = 1 - Entry set ( DB1 = 1: Increment
	LCD_Flash_Enable_Pin();				//						 DB0 = 0: Accompanies display shift )

	vTaskDelay(5 / portTICK_RATE_MS);

// (8)
	GPIO_PORTC_DATA_R = 0x00; //
	LCD_Flash_Enable_Pin();

	vTaskDelay(5 / portTICK_RATE_MS);

	GPIO_PORTC_DATA_R = 0x10; 			// Clear Display
	LCD_Flash_Enable_Pin();				//

	vTaskDelay(5 / portTICK_RATE_MS);

	LCD_Set_Cursor(LCD_DEFAULT_POSITION);

	vTaskDelay(5 / portTICK_RATE_MS);
}

void LCD_Flash_Enable_Pin()
{
	LCD_ENABLE_PIN_HIGH;
	LCD_ENABLE_PIN_LOW;
}

void LCD_Write(INT8U data, INT8U mode) {
	INT8U low_nibble = (data & 0x0F);
	INT8U high_nibble = ((data & 0xF0) >> 4);

	if (mode) {
		LCD_SET_DATA_MODE
		;
	} else {
		LCD_SET_CMD_MODE
		;
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

void LCD_task(void *pvParameters)
{
	LCD_init();

	INT8U received[36];

	while (1) {

	switch(lcd_state)
	{
	case WAIT:
		if (xQueueReceive(LCD_image_queue, &received, 10000))
			lcd_state = NEW_IMAGE;
		break;

	case NEW_IMAGE:
			for (int i = received[36]; i < 36; i++) {
				switch (i) {
				case 32:
					if(!(received[36]))  // Hvis det ikke er et nyt image skal cursoren ikke sættes igen
					{
						LCD_Set_Cursor(received[i]);
						vTaskDelay(5 / portTICK_RATE_MS);
					}
					break;

				case 33:
					if (received[i])
						LCD_Write(LCD_CMD_CURSOR_ON, CMD_MODE);
					vTaskDelay(5 / portTICK_RATE_MS);
					break;

				case 34:
					if (received[i])
						LCD_Write(LCD_CMD_BLINK_ON, CMD_MODE);
					vTaskDelay(5 / portTICK_RATE_MS);
					break;

				case 16:
					LCD_Set_Cursor(0x40);
					vTaskDelay(5 / portTICK_RATE_MS);
					// no break here!

				default:
					LCD_Write(received[i], DATA_MODE);
					vTaskDelay(5 / portTICK_RATE_MS);
					break;
				}
			}
			lcd_state = WAIT;
		break;

	default:
		break;

		//vTaskDelay(100000 / portTICK_RATE_MS);
	}

	}
}

/****************************** End Of Module *******************************/
