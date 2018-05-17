//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_aaba_wrapper.bd
//Design : bd_aaba_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_aaba_wrapper
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
  input [6:0]SLOT_0_DRP_daddr;
  input SLOT_0_DRP_den;
  input [15:0]SLOT_0_DRP_di;
  input [15:0]SLOT_0_DRP_do;
  input SLOT_0_DRP_drdy;
  input SLOT_0_DRP_dwe;
  input [6:0]SLOT_1_DRP_daddr;
  input SLOT_1_DRP_den;
  input [15:0]SLOT_1_DRP_di;
  input [15:0]SLOT_1_DRP_do;
  input SLOT_1_DRP_drdy;
  input SLOT_1_DRP_dwe;
  input [9:0]SLOT_2_DRP_daddr;
  input SLOT_2_DRP_den;
  input [15:0]SLOT_2_DRP_di;
  input [15:0]SLOT_2_DRP_do;
  input SLOT_2_DRP_drdy;
  input SLOT_2_DRP_dwe;
  input [9:0]SLOT_3_DRP_daddr;
  input SLOT_3_DRP_den;
  input [15:0]SLOT_3_DRP_di;
  input [15:0]SLOT_3_DRP_do;
  input SLOT_3_DRP_drdy;
  input SLOT_3_DRP_dwe;
  input clk;
  input [0:0]probe0;

  wire [6:0]SLOT_0_DRP_daddr;
  wire SLOT_0_DRP_den;
  wire [15:0]SLOT_0_DRP_di;
  wire [15:0]SLOT_0_DRP_do;
  wire SLOT_0_DRP_drdy;
  wire SLOT_0_DRP_dwe;
  wire [6:0]SLOT_1_DRP_daddr;
  wire SLOT_1_DRP_den;
  wire [15:0]SLOT_1_DRP_di;
  wire [15:0]SLOT_1_DRP_do;
  wire SLOT_1_DRP_drdy;
  wire SLOT_1_DRP_dwe;
  wire [9:0]SLOT_2_DRP_daddr;
  wire SLOT_2_DRP_den;
  wire [15:0]SLOT_2_DRP_di;
  wire [15:0]SLOT_2_DRP_do;
  wire SLOT_2_DRP_drdy;
  wire SLOT_2_DRP_dwe;
  wire [9:0]SLOT_3_DRP_daddr;
  wire SLOT_3_DRP_den;
  wire [15:0]SLOT_3_DRP_di;
  wire [15:0]SLOT_3_DRP_do;
  wire SLOT_3_DRP_drdy;
  wire SLOT_3_DRP_dwe;
  wire clk;
  wire [0:0]probe0;

  bd_aaba bd_aaba_i
       (.SLOT_0_DRP_daddr(SLOT_0_DRP_daddr),
        .SLOT_0_DRP_den(SLOT_0_DRP_den),
        .SLOT_0_DRP_di(SLOT_0_DRP_di),
        .SLOT_0_DRP_do(SLOT_0_DRP_do),
        .SLOT_0_DRP_drdy(SLOT_0_DRP_drdy),
        .SLOT_0_DRP_dwe(SLOT_0_DRP_dwe),
        .SLOT_1_DRP_daddr(SLOT_1_DRP_daddr),
        .SLOT_1_DRP_den(SLOT_1_DRP_den),
        .SLOT_1_DRP_di(SLOT_1_DRP_di),
        .SLOT_1_DRP_do(SLOT_1_DRP_do),
        .SLOT_1_DRP_drdy(SLOT_1_DRP_drdy),
        .SLOT_1_DRP_dwe(SLOT_1_DRP_dwe),
        .SLOT_2_DRP_daddr(SLOT_2_DRP_daddr),
        .SLOT_2_DRP_den(SLOT_2_DRP_den),
        .SLOT_2_DRP_di(SLOT_2_DRP_di),
        .SLOT_2_DRP_do(SLOT_2_DRP_do),
        .SLOT_2_DRP_drdy(SLOT_2_DRP_drdy),
        .SLOT_2_DRP_dwe(SLOT_2_DRP_dwe),
        .SLOT_3_DRP_daddr(SLOT_3_DRP_daddr),
        .SLOT_3_DRP_den(SLOT_3_DRP_den),
        .SLOT_3_DRP_di(SLOT_3_DRP_di),
        .SLOT_3_DRP_do(SLOT_3_DRP_do),
        .SLOT_3_DRP_drdy(SLOT_3_DRP_drdy),
        .SLOT_3_DRP_dwe(SLOT_3_DRP_dwe),
        .clk(clk),
        .probe0(probe0));
endmodule
