/*****************************************************************************
* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: leds.c
*
* PROJECT....: ECP
*
* DESCRIPTION: See module specification file (.h-file).
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 090215  MoH   Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "devices.h"
#include "gpio.h"
#include "leds.h"
#include "tmodel.h"
#include "swtimers.h"

void set_leds( red, yellow, green )
BOOLEAN red, yellow, green;
{
  turn_led( LED_RED,    red    );
  turn_led( LED_YELLOW, yellow );
  turn_led( LED_GREEN,  green  );
}

void init_led_timers()
{
	start_swtimer(ST_RED_LED, SEB_TO_RED_LED, MILLISEC(RED_TOGGLE_TIME));
	start_swtimer(ST_YELLOW_LED, SEB_TO_YELLOW_LED, MILLISEC(YELLOW_TOGGLE_TIME));
	start_swtimer(ST_GREEN_LED, SEB_TO_GREEN_LED, MILLISEC(GREEN_TOGGLE_TIME));
}

void flash_task( INT8U task_no )
{
	INT8U time_out_red;
	INT8U time_out_yellow;
	INT8U time_out_green;

	time_out_red = get_msg_event(SEB_TO_RED_LED);
	time_out_yellow = get_msg_event(SEB_TO_YELLOW_LED);
	time_out_green = get_msg_event(SEB_TO_GREEN_LED);

	if ( time_out_red )
	{
		turn_led( LED_RED, TOGGLE_LED);
		start_swtimer(ST_RED_LED, SEB_TO_RED_LED, MILLISEC(RED_TOGGLE_TIME));
	}
	if ( time_out_yellow )
	{
		turn_led( LED_YELLOW, TOGGLE_LED);
		start_swtimer(ST_YELLOW_LED, SEB_TO_YELLOW_LED, MILLISEC(YELLOW_TOGGLE_TIME));
	}
	if ( time_out_green )
	{
		turn_led( LED_GREEN, TOGGLE_LED);
		start_swtimer(ST_GREEN_LED, SEB_TO_GREEN_LED, MILLISEC(GREEN_TOGGLE_TIME));
	}

}
