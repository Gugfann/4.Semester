/*****************************************************************************
* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: leds.h
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
* 090215  MoH   Module created.
*
*****************************************************************************/

#ifndef LEDS_H_
#define LEDS_H_

/***************************** Include files *******************************/

/*****************************    Defines    *******************************/

#define RED_TOGGLE_TIME		400
#define YELLOW_TOGGLE_TIME	300
#define GREEN_TOGGLE_TIME	250

/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/

void init_led_timers();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Test function
******************************************************************************/

void set_leds( BOOLEAN, BOOLEAN, BOOLEAN );
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Test function
******************************************************************************/

void flash_task( INT8U task_no );
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Test function
******************************************************************************/

/****************************** End Of Module *******************************/
#endif /*LEDS_H_*/
