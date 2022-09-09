# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\ZYNQ_7z020\ps_xadc\vitiss\xadcps_polled_printf_example_1_system\_ide\scripts\systemdebugger_xadcps_polled_printf_example_1_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\ZYNQ_7z020\ps_xadc\vitiss\xadcps_polled_printf_example_1_system\_ide\scripts\systemdebugger_xadcps_polled_printf_example_1_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/ZYNQ_7z020/ps_xadc/vitiss/ps_xadc_plat/export/ps_xadc_plat/hw/ps_xadc_bd_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source E:/ZYNQ_7z020/ps_xadc/vitiss/xadcps_polled_printf_example_1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow E:/ZYNQ_7z020/ps_xadc/vitiss/xadcps_polled_printf_example_1/Debug/xadcps_polled_printf_example_1.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
