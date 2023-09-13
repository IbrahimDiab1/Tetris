################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/MCAL_Modules/AFIO.c \
../Src/MCAL_Modules/DIO.c \
../Src/MCAL_Modules/EXTI.c \
../Src/MCAL_Modules/GPT.c \
../Src/MCAL_Modules/NVIC.c \
../Src/MCAL_Modules/RCC.c \
../Src/MCAL_Modules/SPI.c \
../Src/MCAL_Modules/STK.c 

OBJS += \
./Src/MCAL_Modules/AFIO.o \
./Src/MCAL_Modules/DIO.o \
./Src/MCAL_Modules/EXTI.o \
./Src/MCAL_Modules/GPT.o \
./Src/MCAL_Modules/NVIC.o \
./Src/MCAL_Modules/RCC.o \
./Src/MCAL_Modules/SPI.o \
./Src/MCAL_Modules/STK.o 

C_DEPS += \
./Src/MCAL_Modules/AFIO.d \
./Src/MCAL_Modules/DIO.d \
./Src/MCAL_Modules/EXTI.d \
./Src/MCAL_Modules/GPT.d \
./Src/MCAL_Modules/NVIC.d \
./Src/MCAL_Modules/RCC.d \
./Src/MCAL_Modules/SPI.d \
./Src/MCAL_Modules/STK.d 


# Each subdirectory must supply rules for building sources it contributes
Src/MCAL_Modules/%.o Src/MCAL_Modules/%.su Src/MCAL_Modules/%.cyclo: ../Src/MCAL_Modules/%.c Src/MCAL_Modules/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src-2f-MCAL_Modules

clean-Src-2f-MCAL_Modules:
	-$(RM) ./Src/MCAL_Modules/AFIO.cyclo ./Src/MCAL_Modules/AFIO.d ./Src/MCAL_Modules/AFIO.o ./Src/MCAL_Modules/AFIO.su ./Src/MCAL_Modules/DIO.cyclo ./Src/MCAL_Modules/DIO.d ./Src/MCAL_Modules/DIO.o ./Src/MCAL_Modules/DIO.su ./Src/MCAL_Modules/EXTI.cyclo ./Src/MCAL_Modules/EXTI.d ./Src/MCAL_Modules/EXTI.o ./Src/MCAL_Modules/EXTI.su ./Src/MCAL_Modules/GPT.cyclo ./Src/MCAL_Modules/GPT.d ./Src/MCAL_Modules/GPT.o ./Src/MCAL_Modules/GPT.su ./Src/MCAL_Modules/NVIC.cyclo ./Src/MCAL_Modules/NVIC.d ./Src/MCAL_Modules/NVIC.o ./Src/MCAL_Modules/NVIC.su ./Src/MCAL_Modules/RCC.cyclo ./Src/MCAL_Modules/RCC.d ./Src/MCAL_Modules/RCC.o ./Src/MCAL_Modules/RCC.su ./Src/MCAL_Modules/SPI.cyclo ./Src/MCAL_Modules/SPI.d ./Src/MCAL_Modules/SPI.o ./Src/MCAL_Modules/SPI.su ./Src/MCAL_Modules/STK.cyclo ./Src/MCAL_Modules/STK.d ./Src/MCAL_Modules/STK.o ./Src/MCAL_Modules/STK.su

.PHONY: clean-Src-2f-MCAL_Modules

