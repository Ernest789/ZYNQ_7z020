# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\ZYNQ_7z020\dma\vitiss\dma_plat\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\ZYNQ_7z020\dma\vitiss\dma_plat\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {dma_plat}\
-hw {E:\ZYNQ_7z020\dma\bd_dma_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {E:/ZYNQ_7z020/dma/vitiss}

platform write
platform generate -domains 
platform active {dma_plat}
bsp reload
platform generate
