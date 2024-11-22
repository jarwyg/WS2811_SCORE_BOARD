################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../I2C_TWI/i2c.c \
../I2C_TWI/pcf8563p.c 

OBJS += \
./I2C_TWI/i2c.o \
./I2C_TWI/pcf8563p.o 

C_DEPS += \
./I2C_TWI/i2c.d \
./I2C_TWI/pcf8563p.d 


# Each subdirectory must supply rules for building sources it contributes
I2C_TWI/%.o: ../I2C_TWI/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


