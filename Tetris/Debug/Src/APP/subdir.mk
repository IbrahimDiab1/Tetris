################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/APP/main.c 

OBJS += \
./Src/APP/main.o 

C_DEPS += \
./Src/APP/main.d 


# Each subdirectory must supply rules for building sources it contributes
Src/APP/%.o Src/APP/%.su Src/APP/%.cyclo: ../Src/APP/%.c Src/APP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-APP

clean-Src-2f-APP:
	-$(RM) ./Src/APP/main.cyclo ./Src/APP/main.d ./Src/APP/main.o ./Src/APP/main.su

.PHONY: clean-Src-2f-APP

