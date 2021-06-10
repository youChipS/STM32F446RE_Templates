################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../UnitTest/gtest_c_helpers/gtest_helper.cpp 

OBJS += \
./UnitTest/gtest_c_helpers/gtest_helper.o 

CPP_DEPS += \
./UnitTest/gtest_c_helpers/gtest_helper.d 


# Each subdirectory must supply rules for building sources it contributes
UnitTest/gtest_c_helpers/%.o: ../UnitTest/gtest_c_helpers/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32StaticLib" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32ProjUt/contrib" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32ProjUt/src" -I"/mnt/6C62DEEA62DEB852/Playground/STM32_NUCLEOF446RE_gtest/mySTM32ProjUt/UnitTest" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


