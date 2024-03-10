/*
 * i2c.h
 *
 *  Created on: Mar 17, 2018
 *      Author: user
 */

#ifndef I2C_TWI_I2C_H_
#define I2C_TWI_I2C_H_

#define ACK 1
#define NACK 0


#define I2C_BAUDRATE 100

void i2cSetBitrate(uint16_t bitrateKHz);


void TWI_start(void);
void TWI_stop(void);
void TWI_write(uint8_t bajt);
uint8_t TWI_read(uint8_t ack);

void TWI_write_buf( uint8_t SLA, uint8_t adr, uint8_t len, uint8_t *buf );
void TWI_read_buf(uint8_t SLA, uint8_t adr, uint8_t len, uint8_t *buf);

#endif /* I2C_TWI_I2C_H_ */
