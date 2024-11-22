################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Light_WS2812/led_led.c \
../Light_WS2812/light_ws2812.c 

OBJS += \
./Light_WS2812/led_led.o \
./Light_WS2812/light_ws2812.o 

C_DEPS += \
./Light_WS2812/led_led.d \
./Light_WS2812/light_ws2812.d 


# Each subdirectory must supply rules for building sources it contributes
Light_WS2812/%.o: ../Light_WS2812/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


