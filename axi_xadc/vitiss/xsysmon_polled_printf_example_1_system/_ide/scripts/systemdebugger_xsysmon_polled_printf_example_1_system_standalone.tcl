# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\ZYNQ_7z020\axi_xadc\vitiss\xsysmon_polled_printf_example_1_system\_ide\scripts\systemdebugger_xsysmon_polled_printf_example_1_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\ZYNQ_7z020\axi_xadc\vitiss\xsysmon_polled_printf_example_1_system\_ide\scripts\systemdebugger_xsysmon_polled_printf_example_1_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210512180081" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210512180081-23727093-0"}
fpga -file E:/ZYNQ_7z020/axi_xadc/vitiss/xsysmon_polled_printf_example_1/_ide/bitstream/axi_xadc_bd_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/ZYNQ_7z020/axi_xadc/vitiss/axi_xadc_proj/export/axi_xadc_proj/hw/axi_xadc_bd_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source E:/ZYNQ_7z020/axi_xadc/vitiss/xsysmon_polled_printf_example_1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow E:/ZYNQ_7z020/axi_xadc/vitiss/xsysmon_polled_printf_example_1/Debug/xsysmon_polled_printf_example_1.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
