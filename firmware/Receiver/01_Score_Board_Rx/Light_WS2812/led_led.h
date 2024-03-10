/*
 * led_led.h
 *
 *  Created on: Mar 17, 2018
 *      Author: user
 */

#ifndef LIGHT_WS2812_LED_LED_H_
#define LIGHT_WS2812_LED_LED_H_



#define pA 0xff0000 //punkty czerwone
#define pB 0x00ff00 // punkty zielone

#define sA 0xff0000 //sety czerwone
#define sB 0x00ff00 //sety zielone

#define zegarr 0x00ffff
#define czasgry 0xff00ff


uint8_t game_time_active;


uint16_t off_timer;

uint8_t play_time_on;

extern uint8_t play_time_mm, play_time_ss;

#define SECONDS_TO_SUSPEND 3600 //3600


extern uint8_t col_val;

extern int8_t set_A, set_B;
extern int8_t punkty_A, punkty_B;
extern uint8_t godziny, minuty;
extern uint8_t dwukropek;

void disp_number(uint8_t num, uint8_t poz, uint32_t color);

void update_LED(void);
void setPixel(uint8_t val, uint8_t poz, uint32_t color);
void disp_cls(void);

#endif /* LIGHT_WS2812_LED_LED_H_ */
