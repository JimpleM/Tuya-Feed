################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mcu_sdk/mcu_api.c \
../mcu_sdk/protocol.c \
../mcu_sdk/system.c 

OBJS += \
./mcu_sdk/mcu_api.o \
./mcu_sdk/protocol.o \
./mcu_sdk/system.o 

C_DEPS += \
./mcu_sdk/mcu_api.d \
./mcu_sdk/protocol.d \
./mcu_sdk/system.d 


# Each subdirectory must supply rules for building sources it contributes
mcu_sdk/mcu_api.o: ../mcu_sdk/mcu_api.c mcu_sdk/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"/Users/jimplemichael/Documents/STM32/Tuya/mcu_sdk" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"mcu_sdk/mcu_api.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
mcu_sdk/protocol.o: ../mcu_sdk/protocol.c mcu_sdk/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"/Users/jimplemichael/Documents/STM32/Tuya/mcu_sdk" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"mcu_sdk/protocol.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
mcu_sdk/system.o: ../mcu_sdk/system.c mcu_sdk/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"/Users/jimplemichael/Documents/STM32/Tuya/mcu_sdk" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"mcu_sdk/system.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

