/*
 * main.c
 *
 *  Created on: Mar 17, 2018
 *      Author: user
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#include <avr/pgmspace.h>
#include <util/delay.h>

#include "nrf24l01/nrf24l01.h"


#include "Light_WS2812/light_ws2812.h"
#include "Light_WS2812/led_led.h"


#include "I2C_TWI/pcf8563p.h"
#include "I2C_TWI/i2c.h"

#include "UART/uart.h"


volatile uint8_t int1_flag = 0;


void disp_time(void){

	rtc_refresh_date();

	dwukropek =! dwukropek;

	update_LED();
}




int main(void) {

	PORTC |= (1<<PC4) | (1<<PC5);//pullup on SDA and SCL - for arduino

	DDRD |= (1<<ws2812_pin);

	char bufferin[NRF24L01_PAYLOAD];


	//enable RTC interrupt (INT1)
	EICRA |= (1 << ISC11);
	EIMSK |= (1 << INT1);
	PORTD |= (1 << PD3);

	uart_init(UBRR);

	nrf24l01_init();


	i2cSetBitrate(100);

	rtc_init();

	sei();

	off_timer = SECONDS_TO_SUSPEND;

	while (1) {


		if(int1_flag){



			if(play_time_on == 1){
				play_time_ss++;
				if(play_time_ss == 60){
					play_time_mm++;
					play_time_ss = 0;
				}
				if(play_time_mm == 60) play_time_mm = 0;
			}


			if(off_timer != 0){
				off_timer--; //decrementing time to disable leds
			}
			disp_time();

			uart_putlong(pcf8563_rtc.hours, 10);
			uart_putc(':');
			uart_putlong(pcf8563_rtc.minutes, 10);
			uart_putc(':');
			uart_putlong(pcf8563_rtc.seconds, 10);
			uart_putc('\r');
			uart_putc('\n');

			int1_flag = 0;
		}

		uint8_t pipe = 0;
		if (nrf24l01_readready(&pipe)) { //if data is ready
			off_timer = SECONDS_TO_SUSPEND;


			//read buffer
			nrf24l01_read((uint8_t*)bufferin);

			if(!strcmp(bufferin, "D1S+")){//setyA++
				set_A++;
			}
			else if(!strcmp(bufferin, "D1S-")){//setyA--
				set_A--;
			}


			else if(!strcmp(bufferin, "D1P+")){//punktyA++
				punkty_A++;
			}
			else if(!strcmp(bufferin, "D1P-")){//punktyA--
				punkty_A--;
			}


			else if(!strcmp(bufferin, "MIN+")){//godziny
				pcf8563_rtc.hours++;
				if(pcf8563_rtc.hours > 24)pcf8563_rtc.hours = 0;
				rtc_write_date();
				disp_time();

			}
			else if(!strcmp(bufferin, "HOR+")){//minuty
				pcf8563_rtc.minutes++;
				if(pcf8563_rtc.minutes > 60)pcf8563_rtc.minutes = 0;
				rtc_write_date();
				disp_time();
			}


			else if(!strcmp(bufferin, "D2S+")){//setyB++
				set_B++;
			}
			else if(!strcmp(bufferin, "D2S-")){//setyB--
				set_B--;
			}


			else if(!strcmp(bufferin, "D2P+")){//punktyB++
				punkty_B++;
			}
			else if(!strcmp(bufferin, "D2P-")){//punktyB--
				punkty_B--;
			}

			else if(!strcmp(bufferin, "RSTS")){//punktyB--
				set_A=0;
				set_B=0;
			}
			else if(!strcmp(bufferin, "RSTP")){//punktyB--
				punkty_A=0;
				punkty_B=0;
			}

			else if(!strcmp(bufferin, "TPPS")){//play time on off
				play_time_on ^= 1;
			}

			else if(!strcmp(bufferin, "TRST")){//play time rst
				play_time_mm = 0;
				play_time_ss = 0;
			}


			update_LED();


		}


	}//end WHILE
}//end MAIN



ISR( INT1_vect ) {
	int1_flag = 1;
}
