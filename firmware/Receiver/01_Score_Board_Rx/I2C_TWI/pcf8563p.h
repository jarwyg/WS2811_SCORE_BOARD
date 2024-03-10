/*
 * uart.c
 *
 *  Created on: Mar 5, 2024
 *      Author: user
 */

#ifndef PCF8563P_H_
#define PCF8563P_H_

#define ADR_PCF8563P_R	0xA3
#define ADR_PCF8563P_W	0xA2



#define PCF8563P_SECONDS		0x02
#define PCF8563P_MINUTES		0x03
#define PCF8563P_HOURS			0x04
#define PCF8563P_DAYS			0x05
#define PCF8563P_WEEKDAYS		0x06
#define PCF8563P_MONTHS			0x07
#define PCF8563P_YEARS			0x08

typedef struct{
	uint8_t seconds;
	uint8_t minutes;
	uint8_t hours;
	uint8_t day;
	uint8_t weekdays;
	uint8_t month;
	uint8_t year;
}RTC_PCF8563;

extern volatile RTC_PCF8563 pcf8563_rtc;

void rtc_init(void);

void rtc_write_date(void);
void rtc_refresh_date(void);


#endif /* PCF8563P_H_ */
