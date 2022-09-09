# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\ZYNQ_7z020\ps_xadc\vitiss\ps_xadc_plat\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\ZYNQ_7z020\ps_xadc\vitiss\ps_xadc_plat\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ps_xadc_plat}\
-hw {E:\ZYNQ_7z020\ps_xadc\ps_xadc_bd_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {E:/ZYNQ_7z020/ps_xadc/vitiss}

platform write
platform generate -domains 
platform active {ps_xadc_plat}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
platform generate
