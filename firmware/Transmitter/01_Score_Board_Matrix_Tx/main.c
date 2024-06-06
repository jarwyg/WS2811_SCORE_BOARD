
/*
 * main.c
 *
 *  Created on: Sep 10, 2018
 *      Author: user
 */


#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <avr/wdt.h>

#include "UART/uart.h"
#include "nrf24l01/nrf24l01.h"
#include "ADC/ADC.h"
#include "common.h"


uint8_t key_pressed;



#define COL_DDR DDRD
#define COL_PORT PORTD
#define COL_PIN PIND

#define COL1_PIN (1<<7)
#define COL2_PIN (1<<6)
#define COL3_PIN (1<<5)

#define ROW_DDR DDRC
#define ROW_PORT PORTC
#define ROW_PIN PINC

#define ROW1_PIN (1<<1)
#define ROW2_PIN (1<<2)
#define ROW3_PIN (1<<3)
#define ROW4_PIN (1<<4)

#define COLUMN_gm   (COL1_PIN|COL2_PIN|COL3_PIN)
#define ROWS_gm   (ROW1_PIN|ROW2_PIN|ROW3_PIN|ROW4_PIN)


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



int main(void) {

	uart_init(UBRR);//UART baud 9600
	nrf24l01_init();
//	InitADC();



	TCCR0A |= (1<<WGM01);
	TCCR0B |= (1<<CS00)|(1<<CS02);
	OCR0A = 154;
	TIMSK0 |= (1<<OCIE0A);



	ROW_DDR &= ~ROW1_PIN | ROW2_PIN | ROW3_PIN | ROW4_PIN;//Rows Input
	ROW_PORT |= ROW1_PIN | ROW2_PIN | ROW3_PIN | ROW4_PIN;//Rows Input Pullup

	COL_DDR |= COL1_PIN | COL2_PIN | COL3_PIN;//Col Output
	COL_PORT |= COL1_PIN | COL2_PIN | COL3_PIN;//Col Output High


	sei();


	while (1) {

		key_pressed = scan_keys();


		CheckKeys(key_pressed);


//		if(key_pressed){
//			uart_putint(key_pressed,10);
//			uart_putc('\r');
//			uart_putc('\n');
//		}







//		getKeypad();//reading analog values
//		CheckBattery();//check battery voltage

//		CheckKeys();
//		LongShortKeys();//blue buttons
	}
}
