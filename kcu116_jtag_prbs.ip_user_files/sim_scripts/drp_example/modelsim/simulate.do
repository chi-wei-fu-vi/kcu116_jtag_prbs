onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_12 -L util_vector_logic_v2_0_1 -L jtag_axi -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_16 -L fifo_generator_v13_2_2 -L axi_data_fifo_v2_1_15 -L axi_crossbar_v2_1_17 -L gtwizard_ultrascale_v1_7_3 -L axi_protocol_converter_v2_1_16 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.drp_example xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {drp_example.udo}

run -all

quit -force
