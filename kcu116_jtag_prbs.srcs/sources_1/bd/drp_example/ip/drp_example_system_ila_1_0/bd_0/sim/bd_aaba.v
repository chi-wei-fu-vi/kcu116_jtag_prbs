//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_aaba.bd
//Design : bd_aaba
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_aaba,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_aaba,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "drp_example_system_ila_1_0.hwdef" *) 
module bd_aaba
   (SLOT_0_DRP_daddr,
    SLOT_0_DRP_den,
    SLOT_0_DRP_di,
    SLOT_0_DRP_do,
    SLOT_0_DRP_drdy,
    SLOT_0_DRP_dwe,
    SLOT_1_DRP_daddr,
    SLOT_1_DRP_den,
    SLOT_1_DRP_di,
    SLOT_1_DRP_do,
    SLOT_1_DRP_drdy,
    SLOT_1_DRP_dwe,
    SLOT_2_DRP_daddr,
    SLOT_2_DRP_den,
    SLOT_2_DRP_di,
    SLOT_2_DRP_do,
    SLOT_2_DRP_drdy,
    SLOT_2_DRP_dwe,
    SLOT_3_DRP_daddr,
    SLOT_3_DRP_den,
    SLOT_3_DRP_di,
    SLOT_3_DRP_do,
    SLOT_3_DRP_drdy,
    SLOT_3_DRP_dwe,
    clk,
    probe0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_0_DRP DADDR" *) input [6:0]SLOT_0_DRP_daddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_0_DRP DEN" *) input SLOT_0_DRP_den;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_0_DRP DI" *) input [15:0]SLOT_0_DRP_di;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_0_DRP DO" *) input [15:0]SLOT_0_DRP_do;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_0_DRP DRDY" *) input SLOT_0_DRP_drdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_0_DRP DWE" *) input SLOT_0_DRP_dwe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_1_DRP DADDR" *) input [6:0]SLOT_1_DRP_daddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_1_DRP DEN" *) input SLOT_1_DRP_den;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_1_DRP DI" *) input [15:0]SLOT_1_DRP_di;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_1_DRP DO" *) input [15:0]SLOT_1_DRP_do;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_1_DRP DRDY" *) input SLOT_1_DRP_drdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_1_DRP DWE" *) input SLOT_1_DRP_dwe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_2_DRP DADDR" *) input [9:0]SLOT_2_DRP_daddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_2_DRP DEN" *) input SLOT_2_DRP_den;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_2_DRP DI" *) input [15:0]SLOT_2_DRP_di;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_2_DRP DO" *) input [15:0]SLOT_2_DRP_do;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_2_DRP DRDY" *) input SLOT_2_DRP_drdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_2_DRP DWE" *) input SLOT_2_DRP_dwe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_3_DRP DADDR" *) input [9:0]SLOT_3_DRP_daddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_3_DRP DEN" *) input SLOT_3_DRP_den;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_3_DRP DI" *) input [15:0]SLOT_3_DRP_di;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_3_DRP DO" *) input [15:0]SLOT_3_DRP_do;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_3_DRP DRDY" *) input SLOT_3_DRP_drdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 SLOT_3_DRP DWE" *) input SLOT_3_DRP_dwe;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN drp_example_clk_wiz_2_0_clk_out1, FREQ_HZ 100000000, PHASE 0.0" *) input clk;
  input [0:0]probe0;

  wire [6:0]SLOT_0_DRP_daddr_1;
  wire SLOT_0_DRP_den_1;
  wire [15:0]SLOT_0_DRP_di_1;
  wire [15:0]SLOT_0_DRP_do_1;
  wire SLOT_0_DRP_drdy_1;
  wire SLOT_0_DRP_dwe_1;
  wire [6:0]SLOT_1_DRP_daddr_1;
  wire SLOT_1_DRP_den_1;
  wire [15:0]SLOT_1_DRP_di_1;
  wire [15:0]SLOT_1_DRP_do_1;
  wire SLOT_1_DRP_drdy_1;
  wire SLOT_1_DRP_dwe_1;
  wire [9:0]SLOT_2_DRP_daddr_1;
  wire SLOT_2_DRP_den_1;
  wire [15:0]SLOT_2_DRP_di_1;
  wire [15:0]SLOT_2_DRP_do_1;
  wire SLOT_2_DRP_drdy_1;
  wire SLOT_2_DRP_dwe_1;
  wire [9:0]SLOT_3_DRP_daddr_1;
  wire SLOT_3_DRP_den_1;
  wire [15:0]SLOT_3_DRP_di_1;
  wire [15:0]SLOT_3_DRP_do_1;
  wire SLOT_3_DRP_drdy_1;
  wire SLOT_3_DRP_dwe_1;
  wire clk_1;
  wire [0:0]probe0_1;

  assign SLOT_0_DRP_daddr_1 = SLOT_0_DRP_daddr[6:0];
  assign SLOT_0_DRP_den_1 = SLOT_0_DRP_den;
  assign SLOT_0_DRP_di_1 = SLOT_0_DRP_di[15:0];
  assign SLOT_0_DRP_do_1 = SLOT_0_DRP_do[15:0];
  assign SLOT_0_DRP_drdy_1 = SLOT_0_DRP_drdy;
  assign SLOT_0_DRP_dwe_1 = SLOT_0_DRP_dwe;
  assign SLOT_1_DRP_daddr_1 = SLOT_1_DRP_daddr[6:0];
  assign SLOT_1_DRP_den_1 = SLOT_1_DRP_den;
  assign SLOT_1_DRP_di_1 = SLOT_1_DRP_di[15:0];
  assign SLOT_1_DRP_do_1 = SLOT_1_DRP_do[15:0];
  assign SLOT_1_DRP_drdy_1 = SLOT_1_DRP_drdy;
  assign SLOT_1_DRP_dwe_1 = SLOT_1_DRP_dwe;
  assign SLOT_2_DRP_daddr_1 = SLOT_2_DRP_daddr[9:0];
  assign SLOT_2_DRP_den_1 = SLOT_2_DRP_den;
  assign SLOT_2_DRP_di_1 = SLOT_2_DRP_di[15:0];
  assign SLOT_2_DRP_do_1 = SLOT_2_DRP_do[15:0];
  assign SLOT_2_DRP_drdy_1 = SLOT_2_DRP_drdy;
  assign SLOT_2_DRP_dwe_1 = SLOT_2_DRP_dwe;
  assign SLOT_3_DRP_daddr_1 = SLOT_3_DRP_daddr[9:0];
  assign SLOT_3_DRP_den_1 = SLOT_3_DRP_den;
  assign SLOT_3_DRP_di_1 = SLOT_3_DRP_di[15:0];
  assign SLOT_3_DRP_do_1 = SLOT_3_DRP_do[15:0];
  assign SLOT_3_DRP_drdy_1 = SLOT_3_DRP_drdy;
  assign SLOT_3_DRP_dwe_1 = SLOT_3_DRP_dwe;
  assign clk_1 = clk;
  assign probe0_1 = probe0[0];
  bd_aaba_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(SLOT_0_DRP_do_1),
        .probe10(SLOT_1_DRP_dwe_1),
        .probe11(SLOT_1_DRP_drdy_1),
        .probe12(SLOT_1_DRP_daddr_1),
        .probe13(SLOT_2_DRP_do_1),
        .probe14(SLOT_2_DRP_di_1),
        .probe15(SLOT_2_DRP_den_1),
        .probe16(SLOT_2_DRP_dwe_1),
        .probe17(SLOT_2_DRP_drdy_1),
        .probe18(SLOT_2_DRP_daddr_1),
        .probe19(SLOT_3_DRP_do_1),
        .probe2(SLOT_0_DRP_di_1),
        .probe20(SLOT_3_DRP_di_1),
        .probe21(SLOT_3_DRP_den_1),
        .probe22(SLOT_3_DRP_dwe_1),
        .probe23(SLOT_3_DRP_drdy_1),
        .probe24(SLOT_3_DRP_daddr_1),
        .probe3(SLOT_0_DRP_den_1),
        .probe4(SLOT_0_DRP_dwe_1),
        .probe5(SLOT_0_DRP_drdy_1),
        .probe6(SLOT_0_DRP_daddr_1),
        .probe7(SLOT_1_DRP_do_1),
        .probe8(SLOT_1_DRP_di_1),
        .probe9(SLOT_1_DRP_den_1));
endmodule
