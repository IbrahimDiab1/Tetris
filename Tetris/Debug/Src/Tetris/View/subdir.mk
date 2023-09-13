################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/Tetris/View/Tetris_View.c \
../Src/Tetris/View/Tetris_View_TFT.c 

OBJS += \
./Src/Tetris/View/Tetris_View.o \
./Src/Tetris/View/Tetris_View_TFT.o 

C_DEPS += \
./Src/Tetris/View/Tetris_View.d \
./Src/Tetris/View/Tetris_View_TFT.d 


# Each subdirectory must supply rules for building sources it contributes
Src/Tetris/View/%.o Src/Tetris/View/%.su Src/Tetris/View/%.cyclo: ../Src/Tetris/View/%.c Src/Tetris/View/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-Tetris-2f-View

clean-Src-2f-Tetris-2f-View:
	-$(RM) ./Src/Tetris/View/Tetris_View.cyclo ./Src/Tetris/View/Tetris_View.d ./Src/Tetris/View/Tetris_View.o ./Src/Tetris/View/Tetris_View.su ./Src/Tetris/View/Tetris_View_TFT.cyclo ./Src/Tetris/View/Tetris_View_TFT.d ./Src/Tetris/View/Tetris_View_TFT.o ./Src/Tetris/View/Tetris_View_TFT.su

.PHONY: clean-Src-2f-Tetris-2f-View

