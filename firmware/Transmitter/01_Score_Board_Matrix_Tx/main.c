
/*
 * main.c
 *
 *  Created on: Sep 10, 2018
 *      Author: user
 */


#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <avr/wdt.h>

#include "UART/uart.h"
#include "nrf24l01/nrf24l01.h"
#include "nrf24l01/nrf24l01registers.h"
#include "ADC/ADC.h"
#include "common.h"


uint8_t key_pressed;






uint8_t check_rows(uint8_t column){
  if(!(PINC & ROW1_PIN)){
    return (column * 4 + 1);
  }
  else if(!(PINC & ROW2_PIN)){
    return (column * 4 + 2);
  }
  else if(!(PINC & ROW3_PIN)){
    return (column * 4 + 3);
  }
  else if(!(PINC & ROW4_PIN)){
    return (column * 4 + 4);
  }
  else{
    return 0;
  }

}


uint8_t scan_keys(void)
{
   uint8_t key = 0;


   uint8_t rows_tmp = 0;

   COL_PORT &= ~COL1_PIN;//COL1 LOW
   rows_tmp = check_rows(0);
   if(rows_tmp){
   key = rows_tmp;
   }
   COL_PORT |= COL1_PIN;//COL1 HIGH


   COL_PORT &= ~COL2_PIN;//COL2 LOW
   rows_tmp = check_rows(1);
   if(rows_tmp){
   key = rows_tmp;
   }
   COL_PORT |= COL2_PIN;//COL2 HIGH

   COL_PORT &= ~COL3_PIN;//COL3 LOW
   rows_tmp = check_rows(2);
   if(rows_tmp){
   key = rows_tmp;
   }
   COL_PORT |= COL3_PIN;//COL3 HIGH



  return key;
}


volatile uint8_t int_flag = 0;
int main(void) {

	uart_init(UBRR);//UART baud 9600
	nrf24l01_init();
//	InitADC();



	TCCR0A |= (1<<WGM01);
	TCCR0B |= (1<<CS00)|(1<<CS02);//PRESCALER = 1024
	//F_CPU = 8000000Hz
	//TIMER_FREQ = 1024
	OCR0A = 77;//F_CPU/PRESCALER/TIMER_FREQ
	TIMSK0 |= (1<<OCIE0A);


	ROW_DDR &= ~ROW1_PIN | ROW2_PIN | ROW3_PIN | ROW4_PIN;//Rows Input
	ROW_PORT |= ROW1_PIN | ROW2_PIN | ROW3_PIN | ROW4_PIN;//Rows Input Pullup

	COL_DDR |= COL1_PIN | COL2_PIN | COL3_PIN;//Col Output
	COL_PORT &= ~(COL1_PIN | COL2_PIN | COL3_PIN);//Col Output LOW

	//Enable PCINT INTERRUPT
    PCICR |= (1<<PCIE1);
    PCMSK1 |= (1<<PCINT9)|(1<<PCINT10)|(1<<PCINT11)|(1<<PCINT12);

    //disable nrf
    nrf24l01_CElo;

	sei();


	while (1) {
		if(int_flag == 1){
			nrf24l01_CEhi;

			//CheckBattery();//check battery voltage


			key_pressed = scan_keys();
			CheckKeys(key_pressed);

//			_delay_ms(100);

			COL_PORT &= ~(COL1_PIN | COL2_PIN | COL3_PIN);//Col Output LOW
			nrf24l01_CElo;

			int_flag = 0;
		}else{

			go_to_sleep();

		}


	}
}



ISR(PCINT1_vect)
{
	int_flag = 1;
}
