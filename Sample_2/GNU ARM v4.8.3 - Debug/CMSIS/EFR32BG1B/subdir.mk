################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../CMSIS/EFR32BG1B/startup_gcc_efr32bg1b.s 

C_SRCS += \
../CMSIS/EFR32BG1B/system_efr32bg1b.c 

OBJS += \
./CMSIS/EFR32BG1B/startup_gcc_efr32bg1b.o \
./CMSIS/EFR32BG1B/system_efr32bg1b.o 

C_DEPS += \
./CMSIS/EFR32BG1B/system_efr32bg1b.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/EFR32BG1B/%.o: ../CMSIS/EFR32BG1B/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Assembler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -c -x assembler-with-cpp -I"/home/vbhadra/SimplicityStudio/v4_workspace/Sample_2/hal-config" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//platform/halconfig/inc/hal-config" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/halconfig" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/EFR32BG1B/system_efr32bg1b.o: ../CMSIS/EFR32BG1B/system_efr32bg1b.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DHAL_CONFIG=1' '-DEFR32BG1B232F256GM48=1' -I"/home/vbhadra/SimplicityStudio/v4_workspace/Sample_2/hal-config" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//platform/halconfig/inc/hal-config" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/halconfig" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/vbhadra/Downloads/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"CMSIS/EFR32BG1B/system_efr32bg1b.d" -MT"CMSIS/EFR32BG1B/system_efr32bg1b.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


