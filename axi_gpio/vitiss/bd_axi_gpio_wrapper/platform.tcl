# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\ZYNQ_7z020\axi_gpio\vitiss\bd_axi_gpio_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\ZYNQ_7z020\axi_gpio\vitiss\bd_axi_gpio_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {bd_axi_gpio_wrapper}\
-hw {E:\ZYNQ_7z020\axi_gpio\bd_axi_gpio_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {E:/ZYNQ_7z020/axi_gpio/vitiss}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {bd_axi_gpio_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
domain active {zynq_fsbl}
platform generate
bsp reload
bsp reload
bsp reload
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
