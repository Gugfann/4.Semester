/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: main.c
*
* PROJECT....: EMP
*
* DESCRIPTION: Assignment 1, main module. No main.h file.
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
/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/
extern INT16S ticks;
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
  enable_global_int();

  // Loop forever.
  while(1)
  {
	// System part of the super loop.
    // ------------------------------
	while( !ticks );

	// The following will be executed every 5mS
	ticks--;

	// Application part of the super loop.
	// -----------------------------------
	event = select_button();
	counter_value = counter( event );
	counter_leds( counter_value );
//    if( GPIO_PORTF_DATA_R & 0x10 )
//      GPIO_PORTF_DATA_R &= ~(0x02);
//    else
//      GPIO_PORTF_DATA_R |= 0x02;
  }
  return( 0 );
}

/****************************** End Of Module *******************************/
