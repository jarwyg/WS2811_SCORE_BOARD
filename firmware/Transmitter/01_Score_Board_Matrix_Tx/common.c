/*
 * common.c
 *
 *  Created on: Sep 10, 2018
 *      Author: user
 */


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include <avr/wdt.h>

#include "common.h"
#include "ADC/ADC.h"
#include "UART/uart.h"
#include "nrf24l01/nrf24l01.h"

//nrf24l01 variables
uint8_t bufferout[NRF24L01_PAYLOAD];
uint8_t bufferin[NRF24L01_PAYLOAD];


uint8_t addrtx0[NRF24L01_ADDRSIZE] = NRF24L01_ADDRP0;
uint8_t addrtx1[NRF24L01_ADDRSIZE] = NRF24L01_ADDRP1;
uint8_t addrtx2[NRF24L01_ADDRSIZE] = NRF24L01_ADDRP2;
uint8_t addrtx3[NRF24L01_ADDRSIZE] = NRF24L01_ADDRP3;
uint8_t addrtx4[NRF24L01_ADDRSIZE] = NRF24L01_ADDRP4;
uint8_t addrtx5[NRF24L01_ADDRSIZE] = NRF24L01_ADDRP5;



void beep(void)
{
	BUZZ_ON;
	_delay_ms(10);
	BUZZ_OFF;
}



void SendStr(uint8_t *charr){

	strcpy((char*)bufferout, (char*)charr);
	nrf24l01_settxaddr(addrtx0);
	nrf24l01_write((uint8_t*)bufferout);

#ifdef DBG
	uart_puts((char*)charr);
	uart_puts("\r\n");
#endif

}



/*
void sendMsg(uint8_t pipe) {
	if (pipe == 0) {
		//set tx address for pipe 0
		nrf24l01_settxaddr(addrtx0);
	} else if (pipe == 1) {
		//set tx address for pipe 1
		nrf24l01_settxaddr(addrtx1);
	} else if (pipe == 2) {
		//set tx address for pipe 2
		nrf24l01_settxaddr(addrtx2);
	} else if (pipe == 3) {
		//set tx address for pipe 3
		nrf24l01_settxaddr(addrtx3);
	} else if (pipe == 4) {
		//set tx address for pipe 4
		nrf24l01_settxaddr(addrtx4);
	} else if (pipe == 5) {
		//set tx address for pipe 5
		nrf24l01_settxaddr(addrtx5);
	}

	nrf24l01_write((uint8_t*)bufferout);

}
*/


void CheckKeys(uint8_t key_pressed){

#ifdef DBG
	uart_putlong(key_pressed,10);
	uart_puts("\r\n");
#endif

	if( key_pressed == 35 || key_pressed == 43 ) {
		SendStr((uint8_t*)"RSTS");//reset setów
		_delay_ms(K_DELAY_TIME);
	}
	if( key_pressed == 36 || key_pressed == 44 ) {
		SendStr((uint8_t*)"RSTP");//reset punktów
		_delay_ms(K_DELAY_TIME);
	}

	if( key_pressed == 12 ) {
		SendStr((uint8_t*)"D2P-");//Y1
		_delay_ms(K_DELAY_TIME);
	}
	if( key_pressed == 11 ) {
		SendStr((uint8_t*)"D2P+");//Y2
		_delay_ms(K_DELAY_TIME);
	}
	if( key_pressed == 10 ) {
		SendStr((uint8_t*)"D2S-");//Y3
		_delay_ms(K_DELAY_TIME);
	}
	if( key_pressed == 9 ) {
		SendStr((uint8_t*)"D2S+");//Y4
		_delay_ms(K_DELAY_TIME);
	}

	if( key_pressed == 8 ) {
		SendStr((uint8_t*)"TRST");
		_delay_ms(K_DELAY_TIME);
	}
	if( key_pressed == 7 ) {
		SendStr((uint8_t*)"TPPS");
		_delay_ms(K_DELAY_TIME);
	}


	if( key_pressed == 6 ) {
		SendStr((uint8_t*)"MIN+");
		_delay_ms(K_DELAY_TIME);
	}
	if( key_pressed == 5 ) {
		SendStr((uint8_t*)"HOR+");
		_delay_ms(K_DELAY_TIME);
	}

	if( key_pressed == 4 ) {
		SendStr((uint8_t*)"D1P-");//R1
		_delay_ms(K_DELAY_TIME);
	}
	if( key_pressed == 3 ) {
		SendStr((uint8_t*)"D1P+");//R2
		_delay_ms(K_DELAY_TIME);
	}
	if( key_pressed == 2 ) {
		SendStr((uint8_t*)"D1S-");//R3
		_delay_ms(K_DELAY_TIME);
	}
	if( key_pressed == 1 ) {
		SendStr((uint8_t*)"D1S+");//R4
		_delay_ms(K_DELAY_TIME);
	}


}



void go_to_sleep(void)
{
    uint8_t adcsra = ADCSRA;       //save the ADC Control and Status Register A
    ADCSRA = 0;                    //disable the ADC

    //SMCR |= (1<<SM1);//SLEEP_MODE_PWR_DOWN
	set_sleep_mode(SLEEP_MODE_PWR_DOWN);
	sleep_mode();

    ADCSRA = adcsra;               //restore ADCSRA
}
