// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:gty_quad_example_top:1.0
// IP Revision: 1

(* X_CORE_INFO = "gty_quad_example_top,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "drp_example_gty_quad_example_top_0_0,gty_quad_example_top,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module drp_example_gty_quad_example_top_0_0 (
  cm0_drpaddr_common_int,
  drpclk,
  cm0_drpdi_common_int,
  cm0_drpen_common_int,
  cm0_drpwe_common_int,
  ch0_drpaddr_int,
  ch1_drpaddr_int,
  ch2_drpaddr_int,
  ch3_drpaddr_int,
  ch0_drpdi_int,
  ch1_drpdi_int,
  ch2_drpdi_int,
  ch3_drpdi_int,
  ch0_drpen_int,
  ch1_drpen_int,
  ch2_drpen_int,
  ch3_drpen_int,
  ch0_drpwe_int,
  ch1_drpwe_int,
  ch2_drpwe_int,
  ch3_drpwe_int,
  cm0_gtrefclk00_int,
  cm0_drpdo_common_int,
  cm0_drprdy_common_int,
  ch0_drpdo_int,
  ch1_drpdo_int,
  ch2_drpdo_int,
  ch3_drpdo_int,
  ch0_drprdy_int,
  ch1_drprdy_int,
  ch2_drprdy_int,
  ch3_drprdy_int,
  mgtrefclk0_x0y2_p,
  mgtrefclk0_x0y2_n,
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
  hb_gtwiz_reset_clk_freerun_in,
  hb_gtwiz_reset_all_in,
  link_down_latched_reset_in,
  link_status_out,
  link_down_latched_out
);

(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 cm0_drp DADDR" *)
input wire [15 : 0] cm0_drpaddr_common_int;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME drpclk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN drp_example_clk_wiz_2_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 drpclk CLK" *)
input wire [0 : 0] drpclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 cm0_drp DI" *)
input wire [15 : 0] cm0_drpdi_common_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 cm0_drp DEN" *)
input wire [0 : 0] cm0_drpen_common_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 cm0_drp DWE" *)
input wire [0 : 0] cm0_drpwe_common_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch0_drp DADDR" *)
input wire [9 : 0] ch0_drpaddr_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch1_drp DADDR" *)
input wire [9 : 0] ch1_drpaddr_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch2_drp DADDR" *)
input wire [9 : 0] ch2_drpaddr_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch3_drp DADDR" *)
input wire [9 : 0] ch3_drpaddr_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch0_drp DI" *)
input wire [15 : 0] ch0_drpdi_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch1_drp DI" *)
input wire [15 : 0] ch1_drpdi_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch2_drp DI" *)
input wire [15 : 0] ch2_drpdi_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch3_drp DI" *)
input wire [15 : 0] ch3_drpdi_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch0_drp DEN" *)
input wire [0 : 0] ch0_drpen_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch1_drp DEN" *)
input wire [0 : 0] ch1_drpen_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch2_drp DEN" *)
input wire [0 : 0] ch2_drpen_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch3_drp DEN" *)
input wire [0 : 0] ch3_drpen_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch0_drp DWE" *)
input wire [0 : 0] ch0_drpwe_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch1_drp DWE" *)
input wire [0 : 0] ch1_drpwe_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch2_drp DWE" *)
input wire [0 : 0] ch2_drpwe_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch3_drp DWE" *)
input wire [0 : 0] ch3_drpwe_int;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cm0_gtrefclk00_int, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN drp_example_gty_quad_example_top_0_0_cm0_gtrefclk00_int" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cm0_gtrefclk00_int CLK" *)
output wire [0 : 0] cm0_gtrefclk00_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 cm0_drp DO" *)
output wire [15 : 0] cm0_drpdo_common_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 cm0_drp DRDY" *)
output wire [0 : 0] cm0_drprdy_common_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch0_drp DO" *)
output wire [15 : 0] ch0_drpdo_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch1_drp DO" *)
output wire [15 : 0] ch1_drpdo_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch2_drp DO" *)
output wire [15 : 0] ch2_drpdo_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch3_drp DO" *)
output wire [15 : 0] ch3_drpdo_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch0_drp DRDY" *)
output wire [0 : 0] ch0_drprdy_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch1_drp DRDY" *)
output wire [0 : 0] ch1_drprdy_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch2_drp DRDY" *)
output wire [0 : 0] ch2_drprdy_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 ch3_drp DRDY" *)
output wire [0 : 0] ch3_drprdy_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 mgtrefclk0_x0y2 CLK_P" *)
input wire mgtrefclk0_x0y2_p;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mgtrefclk0_x0y2, CAN_DEBUG false, FREQ_HZ 100000000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 mgtrefclk0_x0y2 CLK_N" *)
input wire mgtrefclk0_x0y2_n;
input wire ch0_gtyrxn_in;
input wire ch0_gtyrxp_in;
output wire ch0_gtytxn_out;
output wire ch0_gtytxp_out;
input wire ch1_gtyrxn_in;
input wire ch1_gtyrxp_in;
output wire ch1_gtytxn_out;
output wire ch1_gtytxp_out;
input wire ch2_gtyrxn_in;
input wire ch2_gtyrxp_in;
output wire ch2_gtytxn_out;
output wire ch2_gtytxp_out;
input wire ch3_gtyrxn_in;
input wire ch3_gtyrxp_in;
output wire ch3_gtytxn_out;
output wire ch3_gtytxp_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hb_gtwiz_reset_clk_freerun_in, POLARITY ACTIVE_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 hb_gtwiz_reset_clk_freerun_in RST" *)
input wire hb_gtwiz_reset_clk_freerun_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hb_gtwiz_reset_all_in, POLARITY ACTIVE_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 hb_gtwiz_reset_all_in RST" *)
input wire hb_gtwiz_reset_all_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME link_down_latched_reset_in, POLARITY ACTIVE_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 link_down_latched_reset_in RST" *)
input wire link_down_latched_reset_in;
output wire link_status_out;
output wire link_down_latched_out;

  gty_quad_example_top inst (
    .cm0_drpaddr_common_int(cm0_drpaddr_common_int),
    .drpclk(drpclk),
    .cm0_drpdi_common_int(cm0_drpdi_common_int),
    .cm0_drpen_common_int(cm0_drpen_common_int),
    .cm0_drpwe_common_int(cm0_drpwe_common_int),
    .ch0_drpaddr_int(ch0_drpaddr_int),
    .ch1_drpaddr_int(ch1_drpaddr_int),
    .ch2_drpaddr_int(ch2_drpaddr_int),
    .ch3_drpaddr_int(ch3_drpaddr_int),
    .ch0_drpdi_int(ch0_drpdi_int),
    .ch1_drpdi_int(ch1_drpdi_int),
    .ch2_drpdi_int(ch2_drpdi_int),
    .ch3_drpdi_int(ch3_drpdi_int),
    .ch0_drpen_int(ch0_drpen_int),
    .ch1_drpen_int(ch1_drpen_int),
    .ch2_drpen_int(ch2_drpen_int),
    .ch3_drpen_int(ch3_drpen_int),
    .ch0_drpwe_int(ch0_drpwe_int),
    .ch1_drpwe_int(ch1_drpwe_int),
    .ch2_drpwe_int(ch2_drpwe_int),
    .ch3_drpwe_int(ch3_drpwe_int),
    .cm0_gtrefclk00_int(cm0_gtrefclk00_int),
    .cm0_drpdo_common_int(cm0_drpdo_common_int),
    .cm0_drprdy_common_int(cm0_drprdy_common_int),
    .ch0_drpdo_int(ch0_drpdo_int),
    .ch1_drpdo_int(ch1_drpdo_int),
    .ch2_drpdo_int(ch2_drpdo_int),
    .ch3_drpdo_int(ch3_drpdo_int),
    .ch0_drprdy_int(ch0_drprdy_int),
    .ch1_drprdy_int(ch1_drprdy_int),
    .ch2_drprdy_int(ch2_drprdy_int),
    .ch3_drprdy_int(ch3_drprdy_int),
    .mgtrefclk0_x0y2_p(mgtrefclk0_x0y2_p),
    .mgtrefclk0_x0y2_n(mgtrefclk0_x0y2_n),
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
    .hb_gtwiz_reset_clk_freerun_in(hb_gtwiz_reset_clk_freerun_in),
    .hb_gtwiz_reset_all_in(hb_gtwiz_reset_all_in),
    .link_down_latched_reset_in(link_down_latched_reset_in),
    .link_status_out(link_status_out),
    .link_down_latched_out(link_down_latched_out)
  );
endmodule
