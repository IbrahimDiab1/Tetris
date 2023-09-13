################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/Tetris/Model/Tetris_Model.c 

OBJS += \
./Src/Tetris/Model/Tetris_Model.o 

C_DEPS += \
./Src/Tetris/Model/Tetris_Model.d 


# Each subdirectory must supply rules for building sources it contributes
Src/Tetris/Model/%.o Src/Tetris/Model/%.su Src/Tetris/Model/%.cyclo: ../Src/Tetris/Model/%.c Src/Tetris/Model/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-Tetris-2f-Model

clean-Src-2f-Tetris-2f-Model:
	-$(RM) ./Src/Tetris/Model/Tetris_Model.cyclo ./Src/Tetris/Model/Tetris_Model.d ./Src/Tetris/Model/Tetris_Model.o ./Src/Tetris/Model/Tetris_Model.su

.PHONY: clean-Src-2f-Tetris-2f-Model

