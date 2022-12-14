vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_8
vlib questa_lib/msim/processing_system7_vip_v1_0_10
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_24
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/axi_data_fifo_v2_1_21
vlib questa_lib/msim/axi_register_slice_v2_1_22
vlib questa_lib/msim/axi_protocol_converter_v2_1_22

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 questa_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 questa_lib/msim/processing_system7_vip_v1_0_10
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 questa_lib/msim/axi_gpio_v2_0_24
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 questa_lib/msim/axi_data_fifo_v2_1_21
vmap axi_register_slice_v2_1_22 questa_lib/msim/axi_register_slice_v2_1_22
vmap axi_protocol_converter_v2_1_22 questa_lib/msim/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/bd_axi_gpio/ip/bd_axi_gpio_processing_system7_0_0/sim/bd_axi_gpio_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/bd_axi_gpio/ip/bd_axi_gpio_rst_ps7_0_50M_0/sim/bd_axi_gpio_rst_ps7_0_50M_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24  -93 \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/bd_axi_gpio/ip/bd_axi_gpio_axi_gpio_0_0/sim/bd_axi_gpio_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_22  "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/ec67/hdl" "+incdir+../../../../axi_gpio.gen/sources_1/bd/bd_axi_gpio/ipshared/34f8/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/bd_axi_gpio/ip/bd_axi_gpio_auto_pc_0/sim/bd_axi_gpio_auto_pc_0.v" \
"../../../bd/bd_axi_gpio/sim/bd_axi_gpio.v" \

vlog -work xil_defaultlib \
"glbl.v"

