# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\ZYNQ_7z020\dma\vitiss\xaxidma_example_simple_poll_1_system\_ide\scripts\systemdebugger_xaxidma_example_simple_poll_1_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\ZYNQ_7z020\dma\vitiss\xaxidma_example_simple_poll_1_system\_ide\scripts\systemdebugger_xaxidma_example_simple_poll_1_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210512180081" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210512180081-23727093-0"}
fpga -file E:/ZYNQ_7z020/dma/vitiss/xaxidma_example_simple_poll_1/_ide/bitstream/bd_dma_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/ZYNQ_7z020/dma/vitiss/dma_plat/export/dma_plat/hw/bd_dma_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source E:/ZYNQ_7z020/dma/vitiss/xaxidma_example_simple_poll_1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow E:/ZYNQ_7z020/dma/vitiss/xaxidma_example_simple_poll_1/Debug/xaxidma_example_simple_poll_1.elf
configparams force-mem-access 0
bpadd -addr &main
