################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../UnitTest/myMathUt/myMath_test.cpp 

C_SRCS += \
../UnitTest/myMathUt/myMath_helper.c 

OBJS += \
./UnitTest/myMathUt/myMath_helper.o \
./UnitTest/myMathUt/myMath_test.o 

CPP_DEPS += \
./UnitTest/myMathUt/myMath_test.d 

C_DEPS += \
./UnitTest/myMathUt/myMath_helper.d 


# Each subdirectory must supply rules for building sources it contributes
UnitTest/myMathUt/%.o: ../UnitTest/myMathUt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32StaticLib" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

UnitTest/myMathUt/%.o: ../UnitTest/myMathUt/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32StaticLib" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32ProjUt/contrib" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32ProjUt/src" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32ProjUt/UnitTest" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32ProjUt/UnitTest/gtest_c_helpers" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


