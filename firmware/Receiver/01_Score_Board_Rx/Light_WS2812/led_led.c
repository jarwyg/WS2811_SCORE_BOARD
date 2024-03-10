/*
 * led_led.c
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


#include "light_ws2812.h"
#include "led_led.h"
#include "../I2C_TWI/pcf8563p.h"

struct cRGB led[MAXPIX];

int8_t set_A, set_B;
int8_t punkty_A, punkty_B;
uint8_t dwukropek = 0;

uint8_t play_time_mm = 0, play_time_ss = 0;

uint8_t numbers[16][7]  = {
		{1,1,1,1,1,1,0},//0
		{0,1,1,0,0,0,0},//1
		{1,1,0,1,1,0,1},//2
		{1,1,1,1,0,0,1},//3
		{0,1,1,0,0,1,1},//4
		{1,0,1,1,0,1,1},//5?
		{1,0,1,1,1,1,1},//6
		{1,1,1,0,0,0,0},//7
		{1,1,1,1,1,1,1},//8
		{1,1,1,1,0,1,1},//9
		{1,1,1,0,1,1,1},//A
		{0,0,1,1,1,1,1},//B
		{1,0,0,1,1,1,0},//C
		{0,1,1,1,1,0,1},//D
		{1,0,0,1,1,1,1},//E
		{1,0,0,0,1,1,1}//F
};

uint8_t col_val=0;



void disp_Time(uint8_t hhh, uint8_t mmm, uint32_t ccc){
	//********  zegar  ********

	if( hhh/10 ) disp_number( hhh/10 ,7,ccc);
	else disp_number( hhh/10 ,7,0);
	disp_number( hhh%10 ,14,ccc);


	disp_number( mmm/10  ,21,ccc);
	disp_number( mmm%10  ,28,ccc);

	if(dwukropek) setPixel(1,42,ccc);
	else 		  setPixel(0,42,ccc);

	//********  zegar  ********


}


void update_LED(void){

	if(off_timer != 0){


		if(set_A > 9 ) set_A = 9;
		if(set_A < 0 ) set_A = 0;
		disp_number(set_A,0,sA);

		if(set_B > 9 ) set_B = 9;
		if(set_B < 0 ) set_B = 0;
		disp_number(set_B,35,sB);



		if(play_time_on == 1){
			disp_Time(play_time_mm, play_time_ss, czasgry);
		}else{
			disp_Time(pcf8563_rtc.hours, pcf8563_rtc.minutes, zegarr);
		}


		if(punkty_A > 99)punkty_A = 99;
		if(punkty_A < 0)punkty_A = 0;
		if(punkty_A/10) disp_number( punkty_A/10 ,43,pA);
		else disp_number( punkty_A/10 ,43,0);
		disp_number( punkty_A%10 ,50,pA);



		if(punkty_B > 99)punkty_B = 99;
		if(punkty_B < 0)punkty_B = 0;
		if(punkty_B/10) disp_number( punkty_B/10 ,57,pB);
		else disp_number( punkty_B/10 ,57,0);
		disp_number( punkty_B%10 ,64,pB);



		ws2812_setleds(led,MAXPIX);
	} else {
		disp_cls();

	}

}




void disp_cls(void){
	for (uint8_t i = 0 ; i<MAXPIX ; i++){
		led[i].r=0;
		led[i].g=0;
		led[i].b=0;
	}

	ws2812_setleds(led,MAXPIX);

}


void disp_number(uint8_t num, uint8_t poz, uint32_t color){
	for(uint8_t i = 0 ; i<7 ; i++){
		if(numbers[num][i]==1){
			led[i+(poz)].r = color>>16;
			led[i+(poz)].g = color;
			led[i+(poz)].b = color>>8;
		}
		else{
			led[i+(poz)].r = 0;
			led[i+(poz)].g = 0;
			led[i+(poz)].b = 0;

		}
	}
}



void setPixel(uint8_t val, uint8_t poz, uint32_t color){

	if(val){
		led[(poz)].r = color>>16;
		led[(poz)].g = color;
		led[(poz)].b = color>>8;
	}
	else if(val == 0){
		led[(poz)].r = 0;
		led[(poz)].g = 0;
		led[(poz)].b = 0;

	}
}




void hsv_to_rgb(struct cRGB *myRGB, uint8_t h, uint8_t s, uint8_t v){
	uint8_t region,reminder,p,q,t;
	if(s==0) myRGB->r = myRGB->g = myRGB->b = v;
	else{
		region = h*6 /256;
		reminder = (h*6)%256;

		p = (v * (255 - s)) / 256;
		q = (v * (255 *reminder)/256) /256;
		t = (v * (255 - (s * (255 - reminder))/256))/256;


		switch(region){
			case 0:
				myRGB->r = v; myRGB->b = t; myRGB->g = p;
				break;
			case 1:
				myRGB->r = q; myRGB->b = v; myRGB->g = p;
				break;
			case 2:
				myRGB->r = p; myRGB->b = v; myRGB->g = t;
				break;
			case 3:
				myRGB->r = p; myRGB->b = q; myRGB->g = v;
				break;
			case 4:
				myRGB->r = t; myRGB->b = p; myRGB->g = v;
				break;
			case 5:
				myRGB->r = v; myRGB->b = p; myRGB->g = q;
				break;

		}
	}
}
