
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
	uint8_t to_return = 0;

	if(!(PINC & ROW1_PIN)){
		to_return = (column * 4 + 1);
	}
	if(!(PINC & ROW2_PIN)){
		to_return = (column * 4 + 2);
	}
	if(!(PINC & ROW3_PIN)){
		to_return = (column * 4 + 3);
	}
	if(!(PINC & ROW4_PIN)){
		to_return = (column * 4 + 4);
	}
	if(!(PINC & ROW1_PIN) && !(PINC & ROW2_PIN)){
		to_return = (column * 4 + 35);
	}
	if(!(PINC & ROW3_PIN) && !(PINC & ROW4_PIN)){
		to_return = (column * 4 + 36);
	}

	return to_return;
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


#ifdef DBG
	uart_init(UBRR);//UART baud 9600
#endif

	nrf24l01_init();
	InitADC();
	_delay_ms(100);

	LED_R_LOW_BATT_PIN_SET_AS_OUT;
	LED_R_LOW_BATT_OFF;//low battery LED off

	LED_G_TX_PIN_SET_AS_OUT;
	LED_G_TX_OFF;//tx LED off

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
			_delay_ms(10);

			uint32_t adc_value_average = 0;

			uint16_t adc_value = get_adc_value(0);

			for(uint8_t i = 0 ; i <= 20 ; i++){
				adc_value_average += adc_value;
			}
			adc_value_average = adc_value_average/20;

#ifdef DBG
			uart_putlong(adc_value_average, 10);
			uart_puts("\r\n");
#endif


			if (adc_value_average < 470){//lower than 2,55V
				LED_R_LOW_BATT_ON;//low battery LED on
//				BUZZ_ON;
				_delay_ms(K_DELAY_TIME);
			}else{
				LED_G_TX_ON;//tx LED on
				key_pressed = scan_keys();
				CheckKeys(key_pressed);
			}

			LED_R_LOW_BATT_OFF;//low battery LED off
			LED_G_TX_OFF;//tx LED off
//			BUZZ_OFF;


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
