################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include src/subdir.mk
-include StdPeriph_Driver/src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: mySTM32Project.elf

dependents:
	-cd /mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32StaticLib/Debug_main && $(MAKE) clean all

# Tool invocations
mySTM32Project.elf: $(OBJS) $(USER_OBJS) /mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32StaticLib/Debug_main/libmySTM32StaticLib.a /mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32Project/LinkerScript.ld
	@echo 'Building target: $@'
	@echo 'Invoking: MCU GCC Linker'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -L"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32StaticLib/Debug_main" -T"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32Project/LinkerScript.ld" -Wl,-Map=output.map -Wl,--gc-sections -o "mySTM32Project.elf" @"objects.list" $(USER_OBJS) $(LIBS) -lm
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

post-build:
	-@echo 'Generating binary and Printing size information:'
	arm-none-eabi-objcopy -O binary "mySTM32Project.elf" "mySTM32Project.bin"
	arm-none-eabi-size "mySTM32Project.elf"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build
/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32StaticLib/Debug_main/libmySTM32StaticLib.a:

-include ../makefile.targets
