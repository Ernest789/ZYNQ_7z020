# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\ZYNQ_7z020\axi_xadc\vitiss\axi_xadc_proj\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\ZYNQ_7z020\axi_xadc\vitiss\axi_xadc_proj\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {axi_xadc_proj}\
-hw {E:\ZYNQ_7z020\axi_xadc\axi_xadc_bd_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {E:/ZYNQ_7z020/axi_xadc/vitiss}

platform write
platform generate -domains 
platform active {axi_xadc_proj}
bsp reload
platform generate
