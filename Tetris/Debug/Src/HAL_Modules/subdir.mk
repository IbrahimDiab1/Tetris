################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/HAL_Modules/Button.c \
../Src/HAL_Modules/TFT_program.c 

OBJS += \
./Src/HAL_Modules/Button.o \
./Src/HAL_Modules/TFT_program.o 

C_DEPS += \
./Src/HAL_Modules/Button.d \
./Src/HAL_Modules/TFT_program.d 


# Each subdirectory must supply rules for building sources it contributes
Src/HAL_Modules/%.o Src/HAL_Modules/%.su Src/HAL_Modules/%.cyclo: ../Src/HAL_Modules/%.c Src/HAL_Modules/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-HAL_Modules

clean-Src-2f-HAL_Modules:
	-$(RM) ./Src/HAL_Modules/Button.cyclo ./Src/HAL_Modules/Button.d ./Src/HAL_Modules/Button.o ./Src/HAL_Modules/Button.su ./Src/HAL_Modules/TFT_program.cyclo ./Src/HAL_Modules/TFT_program.d ./Src/HAL_Modules/TFT_program.o ./Src/HAL_Modules/TFT_program.su

.PHONY: clean-Src-2f-HAL_Modules

