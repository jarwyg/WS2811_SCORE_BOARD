/*
 * uart.h
 *
 *  Created on: Mar 5, 2024
 *      Author: user
 */

#ifndef UART_UART_H_
#define UART_UART_H_


#define UART_BAUD 9600
#define UBRR ((F_CPU+UART_BAUD*8UL) / (16UL*UART_BAUD)-1)


void uart_init(uint16_t _UBRR);
void uart_putc(char data);
void uart_puts(char * s);
void uart_putlong(uint32_t number, uint8_t radix);

#endif /* UART_UART_H_ */
