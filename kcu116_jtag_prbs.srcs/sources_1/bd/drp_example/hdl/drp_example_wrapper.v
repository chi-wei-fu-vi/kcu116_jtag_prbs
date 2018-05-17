//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Thu May 17 10:07:38 2018
//Host        : lzhou-dt2-vi-local running 64-bit CentOS Linux release 7.2.1511 (Core)
//Command     : generate_target drp_example_wrapper.bd
//Design      : drp_example_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module drp_example_wrapper
   (DRP2_daddr,
    DRP2_den,
    DRP2_di,
    DRP2_do,
    DRP2_drdy,
    DRP2_dwe,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    ch0_gtyrxn_in,
    ch0_gtyrxp_in,
    ch0_gtytxn_out,
    ch0_gtytxp_out,
    ch1_gtyrxn_in,
    ch1_gtyrxp_in,
    ch1_gtytxn_out,
    ch1_gtytxp_out,
    ch2_gtyrxn_in,
    ch2_gtyrxp_in,
    ch2_gtytxn_out,
    ch2_gtytxp_out,
    ch3_gtyrxn_in,
    ch3_gtyrxp_in,
    ch3_gtytxn_out,
    ch3_gtytxp_out,
    clk_out1,
    clk_out2,
    cm0_gtrefclk00_int,
    default_sysclk_300_clk_n,
    default_sysclk_300_clk_p,
    ext_reset_in,
    link_down_latched_out,
    link_status_out,
    mgtrefclk0_x0y2_clk_n,
    mgtrefclk0_x0y2_clk_p,
    reset);
  output [6:0]DRP2_daddr;
  output DRP2_den;
  output [15:0]DRP2_di;
  input [15:0]DRP2_do;
  input DRP2_drdy;
  output DRP2_dwe;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input ch0_gtyrxn_in;
  input ch0_gtyrxp_in;
  output ch0_gtytxn_out;
  output ch0_gtytxp_out;
  input ch1_gtyrxn_in;
  input ch1_gtyrxp_in;
  output ch1_gtytxn_out;
  output ch1_gtytxp_out;
  input ch2_gtyrxn_in;
  input ch2_gtyrxp_in;
  output ch2_gtytxn_out;
  output ch2_gtytxp_out;
  input ch3_gtyrxn_in;
  input ch3_gtyrxp_in;
  output ch3_gtytxn_out;
  output ch3_gtytxp_out;
  output clk_out1;
  output clk_out2;
  output [0:0]cm0_gtrefclk00_int;
  input default_sysclk_300_clk_n;
  input default_sysclk_300_clk_p;
  input ext_reset_in;
  output link_down_latched_out;
  output link_status_out;
  input mgtrefclk0_x0y2_clk_n;
  input mgtrefclk0_x0y2_clk_p;
  input reset;

  wire [6:0]DRP2_daddr;
  wire DRP2_den;
  wire [15:0]DRP2_di;
  wire [15:0]DRP2_do;
  wire DRP2_drdy;
  wire DRP2_dwe;
  wire [31:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire [0:0]S_AXI_arready;
  wire [0:0]S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire [0:0]S_AXI_awready;
  wire [0:0]S_AXI_awvalid;
  wire [0:0]S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire [0:0]S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [0:0]S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire [0:0]S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire [0:0]S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire [0:0]S_AXI_wvalid;
  wire ch0_gtyrxn_in;
  wire ch0_gtyrxp_in;
  wire ch0_gtytxn_out;
  wire ch0_gtytxp_out;
  wire ch1_gtyrxn_in;
  wire ch1_gtyrxp_in;
  wire ch1_gtytxn_out;
  wire ch1_gtytxp_out;
  wire ch2_gtyrxn_in;
  wire ch2_gtyrxp_in;
  wire ch2_gtytxn_out;
  wire ch2_gtytxp_out;
  wire ch3_gtyrxn_in;
  wire ch3_gtyrxp_in;
  wire ch3_gtytxn_out;
  wire ch3_gtytxp_out;
  wire clk_out1;
  wire clk_out2;
  wire [0:0]cm0_gtrefclk00_int;
  wire default_sysclk_300_clk_n;
  wire default_sysclk_300_clk_p;
  wire ext_reset_in;
  wire link_down_latched_out;
  wire link_status_out;
  wire mgtrefclk0_x0y2_clk_n;
  wire mgtrefclk0_x0y2_clk_p;
  wire reset;

  drp_example drp_example_i
       (.DRP2_daddr(DRP2_daddr),
        .DRP2_den(DRP2_den),
        .DRP2_di(DRP2_di),
        .DRP2_do(DRP2_do),
        .DRP2_drdy(DRP2_drdy),
        .DRP2_dwe(DRP2_dwe),
        .S_AXI_araddr(S_AXI_araddr),
        .S_AXI_arprot(S_AXI_arprot),
        .S_AXI_arready(S_AXI_arready),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr),
        .S_AXI_awprot(S_AXI_awprot),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(S_AXI_bresp),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rresp(S_AXI_rresp),
        .S_AXI_rvalid(S_AXI_rvalid),
        .S_AXI_wdata(S_AXI_wdata),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wstrb(S_AXI_wstrb),
        .S_AXI_wvalid(S_AXI_wvalid),
        .ch0_gtyrxn_in(ch0_gtyrxn_in),
        .ch0_gtyrxp_in(ch0_gtyrxp_in),
        .ch0_gtytxn_out(ch0_gtytxn_out),
        .ch0_gtytxp_out(ch0_gtytxp_out),
        .ch1_gtyrxn_in(ch1_gtyrxn_in),
        .ch1_gtyrxp_in(ch1_gtyrxp_in),
        .ch1_gtytxn_out(ch1_gtytxn_out),
        .ch1_gtytxp_out(ch1_gtytxp_out),
        .ch2_gtyrxn_in(ch2_gtyrxn_in),
        .ch2_gtyrxp_in(ch2_gtyrxp_in),
        .ch2_gtytxn_out(ch2_gtytxn_out),
        .ch2_gtytxp_out(ch2_gtytxp_out),
        .ch3_gtyrxn_in(ch3_gtyrxn_in),
        .ch3_gtyrxp_in(ch3_gtyrxp_in),
        .ch3_gtytxn_out(ch3_gtytxn_out),
        .ch3_gtytxp_out(ch3_gtytxp_out),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .cm0_gtrefclk00_int(cm0_gtrefclk00_int),
        .default_sysclk_300_clk_n(default_sysclk_300_clk_n),
        .default_sysclk_300_clk_p(default_sysclk_300_clk_p),
        .ext_reset_in(ext_reset_in),
        .link_down_latched_out(link_down_latched_out),
        .link_status_out(link_status_out),
        .mgtrefclk0_x0y2_clk_n(mgtrefclk0_x0y2_clk_n),
        .mgtrefclk0_x0y2_clk_p(mgtrefclk0_x0y2_clk_p),
        .reset(reset));
endmodule
