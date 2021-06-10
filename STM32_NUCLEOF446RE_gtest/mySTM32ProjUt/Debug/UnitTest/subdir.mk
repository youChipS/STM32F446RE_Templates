################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../UnitTest/gtest_helper.cpp \
../UnitTest/myMath_test.cpp 

C_SRCS += \
../UnitTest/myMath_helper.c 

OBJS += \
./UnitTest/gtest_helper.o \
./UnitTest/myMath_helper.o \
./UnitTest/myMath_test.o 

CPP_DEPS += \
./UnitTest/gtest_helper.d \
./UnitTest/myMath_test.d 

C_DEPS += \
./UnitTest/myMath_helper.d 


# Each subdirectory must supply rules for building sources it contributes
UnitTest/%.o: ../UnitTest/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/mnt/6C62DEEA62DEB852/Playground/gtest_STM32_NUCLEO/mySTM32StaticLib" -I"/mnt/6C62DEEA62DEB852/Playground/gtest_STM32_NUCLEO/GoogleTest_Hello_Static/contrib" -I"/mnt/6C62DEEA62DEB852/Playground/gtest_STM32_NUCLEO/GoogleTest_Hello_Static/src" -I"/mnt/6C62DEEA62DEB852/Playground/gtest_STM32_NUCLEO/GoogleTest_Hello_Static/UnitTest" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

UnitTest/%.o: ../UnitTest/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/mnt/6C62DEEA62DEB852/Playground/gtest_STM32_NUCLEO/mySTM32StaticLib" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


