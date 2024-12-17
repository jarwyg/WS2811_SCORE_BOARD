################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include nrf24l01/subdir.mk
-include UART/subdir.mk
-include SPI/subdir.mk
-include ADC/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
01_Score_Board_Matrix_Tx.lss \

FLASH_IMAGE += \
01_Score_Board_Matrix_Tx.hex \

EEPROM_IMAGE += \
01_Score_Board_Matrix_Tx.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: 01_Score_Board_Matrix_Tx.elf secondary-outputs

# Tool invocations
01_Score_Board_Matrix_Tx.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,01_Score_Board_Matrix_Tx.map -mmcu=atmega328p -o "01_Score_Board_Matrix_Tx.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

01_Score_Board_Matrix_Tx.lss: 01_Score_Board_Matrix_Tx.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S 01_Score_Board_Matrix_Tx.elf  >"01_Score_Board_Matrix_Tx.lss"
	@echo 'Finished building: $@'
	@echo ' '

01_Score_Board_Matrix_Tx.hex: 01_Score_Board_Matrix_Tx.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex 01_Score_Board_Matrix_Tx.elf  "01_Score_Board_Matrix_Tx.hex"
	@echo 'Finished building: $@'
	@echo ' '

01_Score_Board_Matrix_Tx.eep: 01_Score_Board_Matrix_Tx.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex 01_Score_Board_Matrix_Tx.elf  "01_Score_Board_Matrix_Tx.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: 01_Score_Board_Matrix_Tx.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega328p 01_Score_Board_Matrix_Tx.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(EEPROM_IMAGE)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) 01_Score_Board_Matrix_Tx.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents

-include ../makefile.targets
