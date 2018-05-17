
#set_property PACKAGE_PIN Y24 [get_ports clk_out2]
#set_property IOSTANDARD LVCMOS25 [get_ports clk_out2]

#set_property PACKAGE_PIN AB7 [get_ports ext_reset_in]
#set_property IOSTANDARD LVCMOS15 [get_ports ext_reset_in]

set_property PACKAGE_PIN P20 [get_ports { clk_out2 }];
set_property IOSTANDARD LVCMOS18 [get_ports { clk_out2 }];
set_property direction OUT [get_ports { clk_out2 }];
set_property PACKAGE_PIN B9 [get_ports { ext_reset_in }];
set_property IOSTANDARD LVCMOS18 [get_ports { ext_reset_in }];
set_property direction IN [get_ports { ext_reset_in }];
set_property PACKAGE_PIN K22 [get_ports { default_sysclk_300_clk_p }]; # IO_L11P_T1U_N8_GC_66 High Performance 66 INPUT DIFF_SSTL12
set_property IOSTANDARD DIFF_SSTL12 [get_ports { default_sysclk_300_clk_p }];
set_property direction IN [get_ports { default_sysclk_300_clk_p }];
set_property PACKAGE_PIN K23 [get_ports { default_sysclk_300_clk_n }]; # IO_L11N_T1U_N9_GC_66 High Performance 66 INPUT DIFF_SSTL12
set_property IOSTANDARD DIFF_SSTL12 [get_ports { default_sysclk_300_clk_n }];
set_property direction IN [get_ports { default_sysclk_300_clk_n }];

set_property PACKAGE_PIN F1 [get_ports { ch3_gtyrxn_in }]; # MGTYRXN3_226   INPUT 
set_property direction IN [get_ports { ch3_gtyrxn_in }];
set_property PACKAGE_PIN F2 [get_ports { ch3_gtyrxp_in }]; # MGTYRXP3_226   INPUT 
set_property direction IN [get_ports { ch3_gtyrxp_in }];
set_property PACKAGE_PIN G4 [get_ports { ch3_gtytxn_out }]; # MGTYTXN3_226   OUTPUT 
set_property direction OUT [get_ports { ch3_gtytxn_out }];
set_property PACKAGE_PIN G5 [get_ports { ch3_gtytxp_out }]; # MGTYTXP3_226   OUTPUT 
set_property direction OUT [get_ports { ch3_gtytxp_out }];
set_property PACKAGE_PIN H1 [get_ports { ch2_gtyrxn_in }]; # MGTYRXN2_226   INPUT 
set_property direction IN [get_ports { ch2_gtyrxn_in }];
set_property PACKAGE_PIN H2 [get_ports { ch2_gtyrxp_in }]; # MGTYRXP2_226   INPUT 
set_property direction IN [get_ports { ch2_gtyrxp_in }];
set_property PACKAGE_PIN J4 [get_ports { ch2_gtytxn_out }]; # MGTYTXN2_226   OUTPUT 
set_property direction OUT [get_ports { ch2_gtytxn_out }];
set_property PACKAGE_PIN J5 [get_ports { ch2_gtytxp_out }]; # MGTYTXP2_226   OUTPUT 
set_property direction OUT [get_ports { ch2_gtytxp_out }];
set_property PACKAGE_PIN K1 [get_ports { ch1_gtyrxn_in }]; # MGTYRXN1_226   INPUT 
set_property direction IN [get_ports { ch1_gtyrxn_in }];
set_property PACKAGE_PIN K2 [get_ports { ch1_gtyrxp_in }]; # MGTYRXP1_226   INPUT 
set_property direction IN [get_ports { ch1_gtyrxp_in }];
set_property PACKAGE_PIN L4 [get_ports { ch1_gtytxn_out }]; # MGTYTXN1_226   OUTPUT 
set_property direction OUT [get_ports { ch1_gtytxn_out }];
set_property PACKAGE_PIN L5 [get_ports { ch1_gtytxp_out }]; # MGTYTXP1_226   OUTPUT 
set_property direction OUT [get_ports { ch1_gtytxp_out }];
set_property PACKAGE_PIN M1 [get_ports { ch0_gtyrxn_in }]; # MGTYRXN0_226   INPUT 
set_property direction IN [get_ports { ch0_gtyrxn_in }];
set_property PACKAGE_PIN M2 [get_ports { ch0_gtyrxp_in }]; # MGTYRXP0_226   INPUT 
set_property direction IN [get_ports { ch0_gtyrxp_in }];
set_property PACKAGE_PIN N4 [get_ports { ch0_gtytxn_out }]; # MGTYTXN0_226   OUTPUT 
set_property direction OUT [get_ports { ch0_gtytxn_out }];
set_property PACKAGE_PIN N5 [get_ports { ch0_gtytxp_out }]; # MGTYTXP0_226   OUTPUT 
set_property direction OUT [get_ports { ch0_gtytxp_out }];
set_property PACKAGE_PIN P6 [get_ports { mgtrefclk0_x0y2_clk_n }]; # MGTREFCLK0N_226   INPUT 
set_property direction IN [get_ports { mgtrefclk0_x0y2_clk_n }];
set_property PACKAGE_PIN P7 [get_ports { mgtrefclk0_x0y2_clk_p }]; # MGTREFCLK0P_226   INPUT 
set_property direction IN [get_ports { mgtrefclk0_x0y2_clk_p }];

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_out1]
