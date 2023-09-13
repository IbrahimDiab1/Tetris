################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/Tetris/Controller/Controller_Buttons.c \
../Src/Tetris/Controller/Tetris_Controller.c 

OBJS += \
./Src/Tetris/Controller/Controller_Buttons.o \
./Src/Tetris/Controller/Tetris_Controller.o 

C_DEPS += \
./Src/Tetris/Controller/Controller_Buttons.d \
./Src/Tetris/Controller/Tetris_Controller.d 


# Each subdirectory must supply rules for building sources it contributes
Src/Tetris/Controller/%.o Src/Tetris/Controller/%.su Src/Tetris/Controller/%.cyclo: ../Src/Tetris/Controller/%.c Src/Tetris/Controller/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-Tetris-2f-Controller

clean-Src-2f-Tetris-2f-Controller:
	-$(RM) ./Src/Tetris/Controller/Controller_Buttons.cyclo ./Src/Tetris/Controller/Controller_Buttons.d ./Src/Tetris/Controller/Controller_Buttons.o ./Src/Tetris/Controller/Controller_Buttons.su ./Src/Tetris/Controller/Tetris_Controller.cyclo ./Src/Tetris/Controller/Tetris_Controller.d ./Src/Tetris/Controller/Tetris_Controller.o ./Src/Tetris/Controller/Tetris_Controller.su

.PHONY: clean-Src-2f-Tetris-2f-Controller

