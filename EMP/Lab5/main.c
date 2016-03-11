/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: main.c
*
* PROJECT....: EMP
*
* DESCRIPTION: Assignment 4, main module. No main.h file.
*
* Change Log:
*****************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 150308  MoH   Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "EMP/emp_type.h"
#include "tmodel.h"
#include "UART/uart.h"
#include "LCD/lcd.h"
#include "RTC/rtc.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/
INT8U i;
INT8U  InBuf[128];
/*****************************   Functions   *******************************/


void ui_task(INT8U my_id, INT8U my_state, INT8U event, INT8U data)
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{
  INT8U ch;

  if( get_queue( Q_UART_RX, &ch, WAIT_FOREVER ))
  {
    if( i < 128 )
      InBuf[i++] = ch;
    put_queue( Q_UART_TX, ch, WAIT_FOREVER );
    if( ch == '\r' )
    {
      if( InBuf[0] == '2' )
      {
          put_queue( Q_UART_TX, '2', WAIT_FOREVER );
          put_queue( Q_UART_TX, get_hour()/10+'0', WAIT_FOREVER );
          put_queue( Q_UART_TX, get_hour()%10+'0', WAIT_FOREVER );
          put_queue( Q_UART_TX, get_min()/10+'0', WAIT_FOREVER );
          put_queue( Q_UART_TX, get_min()%10+'0', WAIT_FOREVER );
          put_queue( Q_UART_TX, get_sec()/10+'0', WAIT_FOREVER );
          put_queue( Q_UART_TX, get_sec()%10+'0', WAIT_FOREVER );
      }

      if(( InBuf[0] == '1' ) && ( i >= 7 ))
      {
          put_queue( Q_UART_TX, '1', WAIT_FOREVER );
          set_hour( (InBuf[1]-'0')*10+InBuf[2]-'0');
          set_min( (InBuf[3]-'0')*10+InBuf[4]-'0');
          set_sec( (InBuf[5]-'0')*10+InBuf[6]-'0');
          put_queue( Q_UART_TX, get_hour()/10+'0', WAIT_FOREVER );
          put_queue( Q_UART_TX, get_hour()%10+'0', WAIT_FOREVER );
          put_queue( Q_UART_TX, get_min()/10+'0', WAIT_FOREVER );
          put_queue( Q_UART_TX, get_min()%10+'0', WAIT_FOREVER );
          put_queue( Q_UART_TX, get_sec()/10+'0', WAIT_FOREVER );
          put_queue( Q_UART_TX, get_sec()%10+'0', WAIT_FOREVER );
      }

      put_queue( Q_UART_TX, '\r', WAIT_FOREVER );
      put_queue( Q_UART_TX, '>',  WAIT_FOREVER );
      put_queue( Q_UART_TX, '>',  WAIT_FOREVER );
      put_queue( Q_UART_TX, ' ', WAIT_FOREVER );
      i = 0;
    }
  }

}

int main(void)
{
  //
   // Enable the GPIO port that is used for the on-board LED.
   //
  SYSCTL_RCGC2_R = SYSCTL_RCGC2_GPIOA | SYSCTL_RCGC2_GPIOC | SYSCTL_RCGC2_GPIOD | SYSCTL_RCGC2_GPIOF;
  SYSCTL_RCGC1_R |= 0x00000001;
  //init_systick();
  uart0_init( 9600, 8, 1, 'n' );


  //
  // Enable the GPIO pin for the LED (PF3).  Set the direction as output, and
  // enable the GPIO pin for digital function.
  //
  GPIO_PORTC_DIR_R = 0xF0;
  GPIO_PORTC_DEN_R = 0xF0;

  GPIO_PORTD_DIR_R = 0x4C;
  GPIO_PORTD_DEN_R = 0x4C;

  GPIO_PORTF_DIR_R = 0x0E;
  GPIO_PORTF_DEN_R = 0x1F;

  init_rtcs();

  open_queue( Q_UART_TX );
  open_queue( Q_UART_RX );
  open_queue( Q_LCD );

  start_task( TASK_UART_TX, uart_tx_task );
  start_task( TASK_UART_RX, uart_rx_task );
  start_task( TASK_UI, ui_task );
  start_task( TASK_LCD, lcd_task );
  start_task( TASK_RTC, rtc_task );
  start_task( TASK_DISPLAY_RTC, display_rtc_task );

  schedule();

  return(0);
}

/****************************** End Of Module *******************************/
