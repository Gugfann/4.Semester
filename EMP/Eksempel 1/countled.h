/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: countled.h
*
* PROJECT....: EMP
*
* DESCRIPTION: Turn on counter leds according to countervalue.
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 100925  MoH   Module created.
*
*****************************************************************************/
#ifndef EKSEMPEL_1_COUNTLED_H_
#define EKSEMPEL_1_COUNTLED_H_


/***************************** Include files *******************************/
#include emp_type.h
/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/

void counter_leds( INT8U counter_value );
/*****************************************************************************
*   Input    : The wanted counter value
*   Output   : -
*   Function : Turn on counter leds according to countervalue.
******************************************************************************/


/****************************** End Of Module *******************************/


#endif /* EKSEMPEL_1_COUNTLED_H_ */
