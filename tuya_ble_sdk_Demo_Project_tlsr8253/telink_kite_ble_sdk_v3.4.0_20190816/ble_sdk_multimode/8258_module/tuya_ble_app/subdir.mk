################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tuya_ble_app/tuya_ble_app_demo.c \
../tuya_ble_app/tuya_uart_common_handler.c 

OBJS += \
./tuya_ble_app/tuya_ble_app_demo.o \
./tuya_ble_app/tuya_uart_common_handler.o 


# Each subdirectory must supply rules for building sources it contributes
tuya_ble_app/%.o: ../tuya_ble_app/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TC32 Compiler'
	tc32-elf-gcc -ffunction-sections -fdata-sections -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk\extern_components\mbedtls" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk\sdk\include" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk\sdk\lib" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_components\easylogger\inc" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_components\lib" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_components\tuya_ble_sdk_port" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_components\tlsr" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_components" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_app" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk\app\product_test" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk\app\uart_common" -I"C:\Users\shiliu\Desktop\temp\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\vendor\8258_module" -D__PROJECT_8258_MODULE__=1 -DCHIP_TYPE=CHIP_TYPE_8258 -Wall -O2 -fpack-struct -fshort-enums -finline-small-functions -std=gnu99 -fshort-wchar -fms-extensions -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


