onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xil_defaultlib -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_5 -L lib_fifo_v1_0_14 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_datamover_v5_1_24 -L axi_sg_v4_1_13 -L axi_dma_v7_1_23 -L proc_sys_reset_v5_0_13 -L xlconcat_v2_1_4 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_22 -L axi_data_fifo_v2_1_21 -L axi_crossbar_v2_1_23 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_4 -L axi_protocol_converter_v2_1_22 -L axi_clock_converter_v2_1_21 -L blk_mem_gen_v8_4_4 -L axi_dwidth_converter_v2_1_22 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.bd_dma xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {bd_dma.udo}

run -all

quit -force
