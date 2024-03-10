/*
 * uart.c
 *
 *  Created on: Mar 5, 2024
 *      Author: user
 */


#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>

#include <stdlib.h>

void uart_init(uint16_t _UBRR){
	/* Set baud rate */
	UBRR0H = (uint8_t)(_UBRR>>8);
	UBRR0L = (uint8_t)_UBRR;
	/* Enable transmitter */
	UCSR0B = (1<<TXEN0);

}

void uart_putc(char data){
	/* Wait for empty transmit buffer */
	while ( !( UCSR0A & (1<<UDRE0)) );
	/* Put data into buffer, sends the data */
	UDR0 = data;
}

void uart_puts(char * s){
	while( *s ) uart_putc( *s++ );
}


void uart_putlong(uint32_t number, uint8_t radix){
	char buf[17];
	ltoa( number, buf, radix );
	uart_puts( buf );
}
