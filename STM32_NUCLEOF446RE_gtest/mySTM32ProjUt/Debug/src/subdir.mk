################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/main.cpp 

OBJS += \
./src/main.o 

CPP_DEPS += \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32StaticLib" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32ProjUt/contrib" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32ProjUt/UnitTest" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


