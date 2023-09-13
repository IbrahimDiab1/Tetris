################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MCAL/AFIO.c \
../Src/MCAL/DIO.c \
../Src/MCAL/EXTI.c \
../Src/MCAL/GPT.c \
../Src/MCAL/NVIC.c \
../Src/MCAL/RCC.c \
../Src/MCAL/SPI.c \
../Src/MCAL/STK.c 

OBJS += \
./Src/MCAL/AFIO.o \
./Src/MCAL/DIO.o \
./Src/MCAL/EXTI.o \
./Src/MCAL/GPT.o \
./Src/MCAL/NVIC.o \
./Src/MCAL/RCC.o \
./Src/MCAL/SPI.o \
./Src/MCAL/STK.o 

C_DEPS += \
./Src/MCAL/AFIO.d \
./Src/MCAL/DIO.d \
./Src/MCAL/EXTI.d \
./Src/MCAL/GPT.d \
./Src/MCAL/NVIC.d \
./Src/MCAL/RCC.d \
./Src/MCAL/SPI.d \
./Src/MCAL/STK.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MCAL/%.o Src/MCAL/%.su Src/MCAL/%.cyclo: ../Src/MCAL/%.c Src/MCAL/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-MCAL

clean-Src-2f-MCAL:
	-$(RM) ./Src/MCAL/AFIO.cyclo ./Src/MCAL/AFIO.d ./Src/MCAL/AFIO.o ./Src/MCAL/AFIO.su ./Src/MCAL/DIO.cyclo ./Src/MCAL/DIO.d ./Src/MCAL/DIO.o ./Src/MCAL/DIO.su ./Src/MCAL/EXTI.cyclo ./Src/MCAL/EXTI.d ./Src/MCAL/EXTI.o ./Src/MCAL/EXTI.su ./Src/MCAL/GPT.cyclo ./Src/MCAL/GPT.d ./Src/MCAL/GPT.o ./Src/MCAL/GPT.su ./Src/MCAL/NVIC.cyclo ./Src/MCAL/NVIC.d ./Src/MCAL/NVIC.o ./Src/MCAL/NVIC.su ./Src/MCAL/RCC.cyclo ./Src/MCAL/RCC.d ./Src/MCAL/RCC.o ./Src/MCAL/RCC.su ./Src/MCAL/SPI.cyclo ./Src/MCAL/SPI.d ./Src/MCAL/SPI.o ./Src/MCAL/SPI.su ./Src/MCAL/STK.cyclo ./Src/MCAL/STK.d ./Src/MCAL/STK.o ./Src/MCAL/STK.su

.PHONY: clean-Src-2f-MCAL

