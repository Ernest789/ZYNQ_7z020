vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_8
vlib activehdl/processing_system7_vip_v1_0_10
vlib activehdl/xil_defaultlib
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/lib_fifo_v1_0_14
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_24
vlib activehdl/axi_sg_v4_1_13
vlib activehdl/axi_dma_v7_1_23
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_22
vlib activehdl/axi_data_fifo_v2_1_21
vlib activehdl/axi_crossbar_v2_1_23
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_data_fifo_v2_0_4
vlib activehdl/axi_protocol_converter_v2_1_22
vlib activehdl/axi_clock_converter_v2_1_21
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/axi_dwidth_converter_v2_1_22

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 activehdl/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 activehdl/processing_system7_vip_v1_0_10
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 activehdl/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_24 activehdl/axi_datamover_v5_1_24
vmap axi_sg_v4_1_13 activehdl/axi_sg_v4_1_13
vmap axi_dma_v7_1_23 activehdl/axi_dma_v7_1_23
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 activehdl/axi_register_slice_v2_1_22
vmap axi_data_fifo_v2_1_21 activehdl/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 activehdl/axi_crossbar_v2_1_23
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_4 activehdl/axis_data_fifo_v2_0_4
vmap axi_protocol_converter_v2_1_22 activehdl/axi_protocol_converter_v2_1_22
vmap axi_clock_converter_v2_1_21 activehdl/axi_clock_converter_v2_1_21
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_22 activehdl/axi_dwidth_converter_v2_1_22

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/bd_dma/ip/bd_dma_processing_system7_0_0/sim/bd_dma_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_24 -93 \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/4ab6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -93 \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_23 -93 \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/89d8/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bd_dma/ip/bd_dma_axi_dma_0_0/sim/bd_dma_axi_dma_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bd_dma/ip/bd_dma_rst_ps7_0_50M_0/sim/bd_dma_rst_ps7_0_50M_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/bd_dma/ip/bd_dma_xlconcat_0_0/sim/bd_dma_xlconcat_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/bd_dma/ip/bd_dma_xbar_0/sim/bd_dma_xbar_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_4  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/abd4/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/bd_dma/ip/bd_dma_axis_data_fifo_0_0/sim/bd_dma_axis_data_fifo_0_0.v" \
"../../../bd/bd_dma/sim/bd_dma.v" \

vlog -work axi_protocol_converter_v2_1_22  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/bd_dma/ip/bd_dma_auto_pc_0/sim/bd_dma_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_21  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_22  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma.gen/sources_1/bd/bd_dma/ipshared/2394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/ec67/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/34f8/hdl" "+incdir+../../../../dma.gen/sources_1/bd/bd_dma/ipshared/8713/hdl" "+incdir+D:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/bd_dma/ip/bd_dma_auto_us_0/sim/bd_dma_auto_us_0.v" \
"../../../bd/bd_dma/ip/bd_dma_auto_us_1/sim/bd_dma_auto_us_1.v" \
"../../../bd/bd_dma/ip/bd_dma_auto_pc_1/sim/bd_dma_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

