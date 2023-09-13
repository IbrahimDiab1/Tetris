################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/APP/Tetris/Controller/Controller_Buttons.c \
../Src/APP/Tetris/Controller/Tetris_Controller.c 

OBJS += \
./Src/APP/Tetris/Controller/Controller_Buttons.o \
./Src/APP/Tetris/Controller/Tetris_Controller.o 

C_DEPS += \
./Src/APP/Tetris/Controller/Controller_Buttons.d \
./Src/APP/Tetris/Controller/Tetris_Controller.d 


# Each subdirectory must supply rules for building sources it contributes
Src/APP/Tetris/Controller/%.o Src/APP/Tetris/Controller/%.su Src/APP/Tetris/Controller/%.cyclo: ../Src/APP/Tetris/Controller/%.c Src/APP/Tetris/Controller/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-APP-2f-Tetris-2f-Controller

clean-Src-2f-APP-2f-Tetris-2f-Controller:
	-$(RM) ./Src/APP/Tetris/Controller/Controller_Buttons.cyclo ./Src/APP/Tetris/Controller/Controller_Buttons.d ./Src/APP/Tetris/Controller/Controller_Buttons.o ./Src/APP/Tetris/Controller/Controller_Buttons.su ./Src/APP/Tetris/Controller/Tetris_Controller.cyclo ./Src/APP/Tetris/Controller/Tetris_Controller.d ./Src/APP/Tetris/Controller/Tetris_Controller.o ./Src/APP/Tetris/Controller/Tetris_Controller.su

.PHONY: clean-Src-2f-APP-2f-Tetris-2f-Controller

