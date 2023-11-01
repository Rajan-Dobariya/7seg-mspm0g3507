################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccstheia110/ccs/tools/compiler/ti-cgt-armllvm_2.1.3.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O2 -I"C:/Users/rajan/workspace_ccstheia/7seg-mspm0g3507" -I"C:/Users/rajan/workspace_ccstheia/7seg-mspm0g3507/Debug" -I"C:/ti/mspm0_sdk_1_20_00_05/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_1_20_00_05/source" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/rajan/workspace_ccstheia/7seg-mspm0g3507/Debug/syscfg"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-1012390049: ../7seg.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/sysconfig_1.18.0/sysconfig_cli.bat" -s "C:/ti/mspm0_sdk_1_20_00_05/.metadata/product.json" --script "C:/Users/rajan/workspace_ccstheia/7seg-mspm0g3507/7seg.syscfg" -o "syscfg" --compiler ticlang
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/ti_msp_dl_config.c: build-1012390049 ../7seg.syscfg
syscfg/ti_msp_dl_config.h: build-1012390049
syscfg/Event.dot: build-1012390049
syscfg/: build-1012390049

syscfg/%.o: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccstheia110/ccs/tools/compiler/ti-cgt-armllvm_2.1.3.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O2 -I"C:/Users/rajan/workspace_ccstheia/7seg-mspm0g3507" -I"C:/Users/rajan/workspace_ccstheia/7seg-mspm0g3507/Debug" -I"C:/ti/mspm0_sdk_1_20_00_05/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_1_20_00_05/source" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"syscfg/$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/rajan/workspace_ccstheia/7seg-mspm0g3507/Debug/syscfg"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


