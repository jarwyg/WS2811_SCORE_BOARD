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
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <avr/wdt.h>

#include "common.h"
#include "ADC/ADC.h"
#include "UART/uart.h"
#include "nrf24l01/nrf24l01.h"

//nrf24l01 variables
char bufferout[NRF24L01_PAYLOAD];
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


void CheckBattery(void){
	if(!timer_0){

		if (pomiar(3) < 540){

#ifdef DBG
			uart_puts("low battery\r\n");
#endif
			PORTC &= ~LED_R_BATT;//on
			BUZZ_ON;
			_delay_ms(100);
			BUZZ_OFF;
		}else{
			PORTC |= LED_R_BATT;//off
		}

#ifdef DBG
		uart_putlong(pomiar(3),10);
		uart_puts("\r\n");
#endif
		timer_0=100;
	}


}


void SendStr(const char *charr){
	strcpy(bufferout, charr);
	sendMsg(0);

#ifdef DBG
	uart_puts((char*)charr);
	uart_puts("\r\n");
#endif

}


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










void CheckKeys(uint8_t key_pressed){

	if( key_pressed == 12 ) {
		SendStr("D2P-");//Y1
		_delay_ms(K_DEL_TIME);
	}
	if( key_pressed == 11 ) {
		SendStr("D2P+");//Y2
		_delay_ms(K_DEL_TIME);
	}
	if( key_pressed == 10 ) {
		SendStr("D2S-");//Y3
		_delay_ms(K_DEL_TIME);
	}
	if( key_pressed == 9 ) {
		SendStr("D2S+");//Y4
		_delay_ms(K_DEL_TIME);
	}

	if( key_pressed == 6 ) {
		SendStr("MIN+");
		_delay_ms(K_DEL_TIME);
	}
	if( key_pressed == 5 ) {
		SendStr("HOR+");
		_delay_ms(K_DEL_TIME);
	}

	if( key_pressed == 4 ) {
		SendStr("D1P-");//R1
		_delay_ms(K_DEL_TIME);
	}
	if( key_pressed == 3 ) {
		SendStr("D1P+");//R2
		_delay_ms(K_DEL_TIME);
	}
	if( key_pressed == 2 ) {
		SendStr("D1S-");//R3
		_delay_ms(K_DEL_TIME);
	}
	if( key_pressed == 1 ) {
		SendStr("D1S+");//R4
		_delay_ms(K_DEL_TIME);
	}





	//drugi klawisz
	if( key_pressed == 8 ) {
		if(timer_1_lock == 0){
			timer_1 = 150;//2 sekunda
			timer_1_lock = 1;
		}
	}
	//short press
	if( (timer_1 > 70) && (timer_1 != 0) && (key_pressed == 0) && (timer_1_lock == 1) ){//short click 300ms max
		SendStr("TRST");//reset timera
		timer_1=0;
		timer_1_lock = 0;
		_delay_ms(K_DEL_TIME);
	}

	//long press after 1000ms
	if(  (timer_1 < 50) && (timer_1_lock == 1) && (key_pressed == 8) ){
		SendStr("RSTP");//reset punktów
		beep();
	}

	if(timer_1 == 0){//auto reset timera
		timer_1_lock = 0;
	}
	//**********************


	if( key_pressed == 7 ) {

		if(timer_2_lock == 0){
			timer_2 = 150;
			timer_2_lock = 1;
		}
	}

	//short press
	if( (timer_2 > 70) && (timer_2 != 0) && (key_pressed == 0 ) && (timer_2_lock == 1) ){//short click 300ms max
		SendStr("TPPS");//play pauza timera
		timer_2=0;
		timer_2_lock = 0;
		_delay_ms(K_DEL_TIME);
	}
	//long press after 1000ms
	if(  (timer_2 < 50) && (timer_2_lock == 1) && (key_pressed == 7) ){
		SendStr("RSTS");//reset setów
		beep();
	}

	if(timer_2 == 0){//auto reset timera
		timer_2_lock = 0;
	}
}





ISR(TIMER0_COMPA_vect){//100Hz
	uint8_t x;

	x = timer_0;
	if(x!=0)timer_0 = --x;

	x = timer_1;
	if(x!=0)timer_1 = --x;

	x = timer_2;
	if(x!=0)timer_2 = --x;

}

