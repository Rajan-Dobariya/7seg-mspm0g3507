################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
ticlang/%.o: ../ticlang/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
<<<<<<< HEAD
	"C:/ti/ccstheia110/ccs/tools/compiler/ti-cgt-armllvm_2.1.3.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O2 -I"C:/Users/rajan/7seg-mspm0g3507" -I"C:/Users/rajan/7seg-mspm0g3507/Debug" -I"C:/ti/mspm0_sdk_1_20_00_05/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_1_20_00_05/source" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"ticlang/$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/rajan/7seg-mspm0g3507/Debug/syscfg"  $(GEN_OPTS__FLAG) -o"$@" "$<"
=======
	"C:/ti/ccstheia110/ccs/tools/compiler/ti-cgt-armllvm_2.1.3.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O2 -I"C:/Users/rajan/workspace_ccstheia/7seg-mspm0g3507" -I"C:/Users/rajan/workspace_ccstheia/7seg-mspm0g3507/Debug" -I"C:/ti/mspm0_sdk_1_20_00_05/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_1_20_00_05/source" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"ticlang/$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/rajan/workspace_ccstheia/7seg-mspm0g3507/Debug/syscfg"  $(GEN_OPTS__FLAG) -o"$@" "$<"
>>>>>>> 9eab5563b42f49654585804cf86c1ee1b533c8b9
	@echo 'Finished building: "$<"'
	@echo ' '


