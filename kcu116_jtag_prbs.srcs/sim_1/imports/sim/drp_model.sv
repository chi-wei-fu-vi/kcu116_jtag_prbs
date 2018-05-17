`timescale 1ns / 1ps

module drp_model#(

  parameter DRP_ADDR_WIDTH       = 9,                
  parameter DRP_DATA_WIDTH       = 16 
  
)(
  
  //-------------- Dynamic Reconfiguration Port (DRP) --------------
  input                                      drp_clk,
  input                                      drp_en,
  input                                      drp_we,
  input   [DRP_ADDR_WIDTH-1: 0]              drp_addr,
  input   [DRP_DATA_WIDTH-1: 0]              drp_di,
  output  reg [DRP_DATA_WIDTH-1: 0]          drp_do,
  output  reg                                drp_rdy  ) ; // drp_bridge
  
   localparam clock_cycles = 20;
   reg                       drp_rdy1;
   reg                       drp_rdy2;
   
   logic [DRP_DATA_WIDTH:0] mem[*];
 
   reg [clock_cycles-1:0] shift_reg_rdy;
   //assign drp_do = {DRP_DATA_WIDTH{1'b1}};

always @(posedge drp_clk)
begin
  //shift_reg_rdy[0] <= drp_en;
  shift_reg_rdy  <= {shift_reg_rdy[clock_cycles-2:0], drp_en};
end
  assign drp_rdy = shift_reg_rdy[clock_cycles-1];

always @(posedge drp_clk)
begin
  if( |drp_we ) begin
    mem[drp_addr] = drp_di;
  end
end

always @(posedge drp_clk)
begin
  if( |drp_en ) begin
    drp_do <= mem[drp_addr];
  end
end
  
endmodule
