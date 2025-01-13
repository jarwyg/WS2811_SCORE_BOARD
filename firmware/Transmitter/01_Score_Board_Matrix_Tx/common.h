/*
 * common.h
 *
 *  Created on: Sep 10, 2018
 *      Author: user
 */

#ifndef COMMON_H_
#define COMMON_H_

#define DBG


#define K_DEL_TIME 200


#define BUZZ (1<<PD7)
#define BUZZ_ON PORTD |= BUZZ
#define BUZZ_OFF PORTD &= ~BUZZ

#define LED_R_LOW_BATT (1<<PB0)
#define LED_R_LOW_BATT_PIN_SET_AS_OUT DDRB |= LED_R_LOW_BATT
#define LED_R_LOW_BATT_ON PORTB &= ~LED_R_LOW_BATT
#define LED_R_LOW_BATT_OFF PORTB |= LED_R_LOW_BATT

#define LED_G_TX (1<<PC5)
#define LED_G_TX_PIN_SET_AS_OUT DDRC |= LED_G_TX
#define LED_G_TX_ON PORTC &= ~LED_G_TX
#define LED_G_TX_OFF PORTC |= LED_G_TX


#define COL_DDR DDRD
#define COL_PORT PORTD
#define COL_PIN PIND

#define COL1_PIN (1<<7)
#define COL2_PIN (1<<6)
#define COL3_PIN (1<<5)

#define ROW_DDR DDRC
#define ROW_PORT PORTC
#define ROW_PIN PINC

#define ROW1_PIN (1<<1)
#define ROW2_PIN (1<<2)
#define ROW3_PIN (1<<3)
#define ROW4_PIN (1<<4)

#define COLUMN_gm   (COL1_PIN|COL2_PIN|COL3_PIN)
#define ROWS_gm   (ROW1_PIN|ROW2_PIN|ROW3_PIN|ROW4_PIN)



volatile uint8_t timer_0, timer_1,timer_2;
uint8_t timer_1_lock, timer_2_lock;

void parse_uart_data( char * pBuf );

void beep(void);
void CheckBattery(void);

void sendMsg(uint8_t pipe);
void SendStr(const char *charr);

void CheckKeys(uint8_t key_pressed);
void go_to_sleep(void);

#endif /* COMMON_H_ */
