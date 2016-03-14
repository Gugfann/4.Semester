/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: main.c
*
* PROJECT....: EMP Assignment 3
*
* DESCRIPTION: The main file running the entire program
*
* Change Log:
*****************************************************************************
* Date    Id    Change
* 26-Feb-2016
* --------------------
*  160226  JA    Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <tm4c123gh6pm.h>
#include <stdint.h>
#include "Modules/EMP/emp_type.h"
#include "Modules/SysTick/systick.h"
#include "Modules/LCD/lcd.h"
#include "Modules/GPIO/GPIO.h"
#include "Modules/SWTimers/swtimers.h"
#include "Modules/Button/button.h"
#include "Modules/Tasking/tmodel.h"
#include "Modules/Display/display.h"
#include "Modules/RTC/rtc.h"
#include <Queue/Queue.h>
#include <UI/ui.h>
#include <UART/uart0.h>
#include <EMP/emp_type.h>
#include <Numpad/Numpad.h>

/*****************************    Defines    *******************************/


/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/
volatile INT16S ticks = 0;

struct Queue display_lcd_queue;
struct Queue uart0_rx_queue;
struct Queue uart0_tx_queue;
struct Queue numpad_input_queue;


/*****************************   Functions   *******************************/

int main(void)
//   Input    : -
//   Output   : -
//   Function : main function. Runs the init function and then loops

{
	//Initialization
	disable_global_int();
	SysTick_init();
	GPIO_init();
	swtimers_init();
	RTCS_init();

	UART0_init(19200, 8, 1, 0);
	enable_global_int();
	LCD_init();
	queue_init(&display_lcd_queue);
	queue_init(&uart0_rx_queue);
	numpad_init();

	open_queue(Q_LCD);

	start_task( TASK_RTC, RTC_task);
	start_task( TASK_DISPLAY, display_task);
	start_task( TASK_LCD, LCD_task);
	start_task( TASK_NUMPAD, numpad_task);
	start_task( TASK_UI, ui_task);

	schedule();

	return (0);
}

/****************************** End Of Module *******************************/

