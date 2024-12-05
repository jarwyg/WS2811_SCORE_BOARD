/*
 * uart.c
 *
 *  Created on: Mar 5, 2024
 *      Author: user
 */

#include <avr/io.h>

#include "pcf8563p.h"
#include "i2c.h"

volatile RTC_PCF8563 pcf8563_rtc;


uint8_t dec2bcd(uint8_t dec) {
return ((dec / 10)<<4) | (dec % 10);
}

uint8_t bcd2dec(uint8_t bcd) {
    return ((((bcd) >> 4) & 0x0F) * 10) + ((bcd) & 0x0F);
}


void rtc_init(void){


	uint8_t bufor[1];
	bufor[0] = 0b00010001;
	TWI_write_buf(ADR_PCF8563P_W, 0x01, 1, bufor);


	bufor[0] = 0b10000010;
	TWI_write_buf(ADR_PCF8563P_W, 0x0e, 1, bufor);

	bufor[0] = 1;
	TWI_write_buf(ADR_PCF8563P_W, 0x0F, 1, bufor);

}



void rtc_write_date(void){
	uint8_t temp;


	TWI_start();
	TWI_write(ADR_PCF8563P_W);
	TWI_write(PCF8563P_SECONDS);
	temp = dec2bcd(pcf8563_rtc.seconds);
	TWI_write(temp);
	temp = dec2bcd(pcf8563_rtc.minutes);
	TWI_write(temp);
	temp = dec2bcd(pcf8563_rtc.hours);
	TWI_write(temp);
	temp = dec2bcd(pcf8563_rtc.day);
	TWI_write(temp);
	temp = dec2bcd(pcf8563_rtc.weekdays);
	TWI_write(temp);
	temp = dec2bcd(pcf8563_rtc.month);
	TWI_write(temp);
	temp = dec2bcd(pcf8563_rtc.year);
	TWI_write(temp);
	TWI_stop();
}

void rtc_refresh_date(void){


	uint8_t temp=0;

	TWI_start();
	TWI_write(ADR_PCF8563P_W);
	TWI_write(PCF8563P_SECONDS);
	TWI_start();
	TWI_write(ADR_PCF8563P_R);

	//read seconds
	temp = TWI_read(1) & 0x7f;
	pcf8563_rtc.seconds = bcd2dec(temp);

	//read minutes
	temp = TWI_read(1) & 0x7f;
	pcf8563_rtc.minutes = bcd2dec(temp);

	//read hours
	temp = TWI_read(1) & 0x3f;
	pcf8563_rtc.hours = bcd2dec(temp);

	//read day
	temp = TWI_read(1) & 0x3f;
	pcf8563_rtc.day = bcd2dec(temp);

	//read weekdays
	temp = TWI_read(1) & 0x07;
	pcf8563_rtc.weekdays = temp;

	//read month
	temp = TWI_read(1) & 0x1f;
	pcf8563_rtc.month = bcd2dec(temp);

	//read year
	temp = TWI_read(0);
	pcf8563_rtc.year = bcd2dec(temp);

	TWI_stop();
}
