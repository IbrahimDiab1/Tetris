################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/APP/Tetris/View/Tetris_View.c \
../Src/APP/Tetris/View/Tetris_View_TFT.c 

OBJS += \
./Src/APP/Tetris/View/Tetris_View.o \
./Src/APP/Tetris/View/Tetris_View_TFT.o 

C_DEPS += \
./Src/APP/Tetris/View/Tetris_View.d \
./Src/APP/Tetris/View/Tetris_View_TFT.d 


# Each subdirectory must supply rules for building sources it contributes
Src/APP/Tetris/View/%.o Src/APP/Tetris/View/%.su Src/APP/Tetris/View/%.cyclo: ../Src/APP/Tetris/View/%.c Src/APP/Tetris/View/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-APP-2f-Tetris-2f-View

clean-Src-2f-APP-2f-Tetris-2f-View:
	-$(RM) ./Src/APP/Tetris/View/Tetris_View.cyclo ./Src/APP/Tetris/View/Tetris_View.d ./Src/APP/Tetris/View/Tetris_View.o ./Src/APP/Tetris/View/Tetris_View.su ./Src/APP/Tetris/View/Tetris_View_TFT.cyclo ./Src/APP/Tetris/View/Tetris_View_TFT.d ./Src/APP/Tetris/View/Tetris_View_TFT.o ./Src/APP/Tetris/View/Tetris_View_TFT.su

.PHONY: clean-Src-2f-APP-2f-Tetris-2f-View

