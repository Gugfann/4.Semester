/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: main.c
*
* PROJECT....: EMP
*
* DESCRIPTION: Assignment 2, main module. No main.h file.
*
* Change Log:
*****************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 150215  MoH   Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "swtimers.h"
#include "systick.h"
#include "gpio.h"
#include "events.h"
#include "tmodel.h"
#include "messages.h"
#include "devices.h"
#include "leds.h"
#include "lcd.h"
/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/
extern volatile INT16S ticks;
INT16S alive_timer = MILLISEC(500);

/*****************************   Functions   *******************************/


int main(void)
/*****************************************************************************
*   Input    :
*   Output   :
*   Function : The super loop.
******************************************************************************/
{
  INT8U event;
  INT8U counter_value;

  disable_global_int();
  init_systick();
  init_gpio();
  init_led_timers();
  enable_global_int();

  init_lcd_screen(); // uses the timer for initialization

  // Loop forever.
  while(1)
  {
	// System part of the super loop.
	// ------------------------------
	while( !ticks );


	// The following will be executed every 5mS
	ticks--;

	if( ! --alive_timer )
	{
    alive_timer =	MILLISEC( 500 );
	  GPIO_PORTD_DATA_R ^= 0x40;
	}

    // Protected operating system mode
    swt_ctrl();

    // Application mode
    button_task( TASK_BUTTON );
    //flash_task( TASK_FLASHING_LEDS );
    display_task( TASK_DISPLAY );
    lcd_task( TASK_LCD );
    //init_lcd_screen();


  }
}

/****************************** End Of Module *******************************/
