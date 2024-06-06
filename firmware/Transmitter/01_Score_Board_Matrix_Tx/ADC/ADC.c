/*
 * ADC.c
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

#include "ADC.h"



void InitADC(void){
	//	ADMUX |= (1<<REFS0);// Vcc Ref Voltage
	ADMUX |= (1<<REFS0)|(1<<REFS1);// 1.1v Ref Voltage
	ADCSRA |= (1<<ADEN)|(1<<ADPS1)|(1<<ADPS0);
}


uint16_t pomiar(uint8_t kanal){
	ADMUX = (ADMUX & 0xF8)|kanal;
	ADCSRA |= (1<<ADSC);
	while(ADCSRA & (1<<ADSC));
	return ADCW;
}






