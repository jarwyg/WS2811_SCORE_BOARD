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

#define LED_R_BATT (1<<PC1)
#define LED_R_BATT_ON PORTC &= ~LED_R_BATT
#define LED_R_BATT_OFF PORTC |= LED_R_BATT

#define LED_G_OPER (1<<PC2)
#define LED_G_OPER_ON PORTC &= ~LED_G_OPER
#define LED_G_OPER_OFF PORTC |= LED_G_OPER

volatile uint8_t timer_0, timer_1,timer_2;
uint8_t timer_1_lock, timer_2_lock;

void parse_uart_data( char * pBuf );

void beep(void);
void CheckBattery(void);

void sendMsg(uint8_t pipe);
void SendStr(const char *charr);

void CheckKeys(uint8_t key_pressed);

#endif /* COMMON_H_ */
