################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32.s 

OBJS += \
./startup/startup_stm32.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32StaticLib" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32Project/StdPeriph_Driver/inc" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32Project/inc" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32Project/CMSIS/device" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32Project/CMSIS/core" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


