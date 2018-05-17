open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/*]
set_property PARAM.FREQUENCY 15000000 [current_hw_target]
open_hw_target
set_property PROGRAM.FILE {/home/chiwei/work/checkout/kcu116/kcu116_jtag_prbs/kcu116_jtag_prbs.runs/impl_1/drp_example_wrapper.bit} [get_hw_devices xcku5p_0]
set_property PROBES.FILE {/home/chiwei/work/checkout/kcu116/kcu116_jtag_prbs/kcu116_jtag_prbs.runs/impl_1/drp_example_wrapper.ltx} [get_hw_devices xcku5p_0]
set_property FULL_PROBES.FILE {/home/chiwei/work/checkout/kcu116/kcu116_jtag_prbs/kcu116_jtag_prbs.runs/impl_1/drp_example_wrapper.ltx} [get_hw_devices xcku5p_0]
current_hw_device [get_hw_devices xcku5p_0]
refresh_hw_device [lindex [get_hw_devices xcku5p_0] 0]
display_hw_ila_data [ get_hw_ila_data hw_ila_data_1 -of_objects [get_hw_ilas -of_objects [get_hw_devices xcku5p_0] -filter {CELL_NAME=~"drp_example_i/system_ila_0/inst/ila_lib"}]]
display_hw_ila_data [ get_hw_ila_data hw_ila_data_2 -of_objects [get_hw_ilas -of_objects [get_hw_devices xcku5p_0] -filter {CELL_NAME=~"drp_example_i/system_ila_1/inst/ila_lib"}]]
display_hw_ila_data [ get_hw_ila_data hw_ila_data_3 -of_objects [get_hw_ilas -of_objects [get_hw_devices xcku5p_0] -filter {CELL_NAME=~"u_ila_0_0"}]]

set_property PROBES.FILE {/home/chiwei/work/checkout/kcu116/kcu116_jtag_prbs/kcu116_jtag_prbs.runs/impl_1/drp_example_wrapper.ltx} [get_hw_devices xcku5p_0]
set_property FULL_PROBES.FILE {/home/chiwei/work/checkout/kcu116/kcu116_jtag_prbs/kcu116_jtag_prbs.runs/impl_1/drp_example_wrapper.ltx} [get_hw_devices xcku5p_0]
set_property PROGRAM.FILE {/home/chiwei/work/checkout/kcu116/kcu116_jtag_prbs/kcu116_jtag_prbs.runs/impl_1/drp_example_wrapper.bit} [get_hw_devices xcku5p_0]
program_hw_devices [get_hw_devices xcku5p_0]
refresh_hw_device [lindex [get_hw_devices xcku5p_0] 0]

