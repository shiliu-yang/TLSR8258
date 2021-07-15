################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tuya_ble_app/src/reset_button.c \
../tuya_ble_app/src/tuya_ble_app_main.c 

OBJS += \
./tuya_ble_app/src/reset_button.o \
./tuya_ble_app/src/tuya_ble_app_main.o 


# Each subdirectory must supply rules for building sources it contributes
tuya_ble_app/src/%.o: ../tuya_ble_app/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TC32 Compiler'
	tc32-elf-gcc -ffunction-sections -fdata-sections -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk\extern_components\mbedtls" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk\sdk\include" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk\sdk\lib" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_components\easylogger\inc" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_components\lib" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_components\tuya_ble_sdk_port" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_components\tlsr" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_components" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_app" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_app\inc\drive" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_app\inc\sdk" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_app\inc" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk\app\product_test" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\tuya_ble_sdk\app\uart_common" -I"D:\My_Project\TLSR8258\tuya_ble_sdk_Demo_Project_tlsr8253\telink_kite_ble_sdk_v3.4.0_20190816\ble_sdk_multimode\vendor\8258_module" -D__PROJECT_8258_MODULE__=1 -DCHIP_TYPE=CHIP_TYPE_8258 -Wall -O2 -fpack-struct -fshort-enums -finline-small-functions -std=gnu99 -fshort-wchar -fms-extensions -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


