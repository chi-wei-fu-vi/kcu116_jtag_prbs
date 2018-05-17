`timescale 1ns / 1ps

module TB_top( );
wire              AXI_aclk;    
reg               clk_200;  
wire              AXI_aresetn;  
//Clock Stimulous
initial begin
  clk_200 = 1'b0;
    #(2.5);
  forever
    #(2.5) clk_200 = ~clk_200;
end 
 
  localparam DRP_ADDR_WIDTH       = 7;                
  localparam DRP_DATA_WIDTH       = 16;
  localparam C_S_AXI_ADDR_WIDTH   = 32;  //+2 is to address align for AXI4             
  localparam C_S_AXI_DATA_WIDTH   = 32;

drp_example_wrapper  drp_example_wrapper_inst(

  //--------------  AXI Interface Signals         --------------
  .sysclk_clk_p      (clk_200),
  .sysclk_clk_n      (~clk_200),
  .clk_out2          (),
  .ext_reset_in      (~AXI_aresetn)); // drp_bridge  
    
    
  AXI_model #(
    .C_S_AXI_ADDR_WIDTH (C_S_AXI_ADDR_WIDTH),  //+2 is to address align for AXI4             
    .C_S_AXI_DATA_WIDTH (C_S_AXI_DATA_WIDTH) 
  ) AXI_model_inst(
  
    //--------------  AXI Interface Signals         --------------
    .AXI_aclk         (drp_example_wrapper_inst.clk_out1),
    .AXI_aresetn      (AXI_aresetn),
    
    .S_AXI_araddr     (drp_example_wrapper_inst.S_AXI_araddr),
    .S_AXI_arready    (drp_example_wrapper_inst.S_AXI_arready),
    .S_AXI_arvalid    (drp_example_wrapper_inst.S_AXI_arvalid),
    .S_AXI_arprot     (drp_example_wrapper_inst.S_AXI_arprot),
    
    .S_AXI_awaddr     (drp_example_wrapper_inst.S_AXI_awaddr),
    .S_AXI_awready    (drp_example_wrapper_inst.S_AXI_awready),
    .S_AXI_awvalid    (drp_example_wrapper_inst.S_AXI_awvalid),
    .S_AXI_awprot     (drp_example_wrapper_inst.S_AXI_awprot),
    
    .S_AXI_bresp      (drp_example_wrapper_inst.S_AXI_bresp),  
    .S_AXI_bready     (drp_example_wrapper_inst.S_AXI_bready),
    .S_AXI_bvalid     (drp_example_wrapper_inst.S_AXI_bvalid),
    
    .S_AXI_rdata      (drp_example_wrapper_inst.S_AXI_rdata),
    .S_AXI_rready     (drp_example_wrapper_inst.S_AXI_rready),
    .S_AXI_rvalid     (drp_example_wrapper_inst.S_AXI_rvalid),
    .S_AXI_rresp      (drp_example_wrapper_inst.S_AXI_rresp),
    
    .S_AXI_wdata      (drp_example_wrapper_inst.S_AXI_wdata),
    .S_AXI_wready     (drp_example_wrapper_inst.S_AXI_wready),
    .S_AXI_wvalid     (drp_example_wrapper_inst.S_AXI_wvalid),
    .S_AXI_wstrb      (drp_example_wrapper_inst.S_AXI_wstrb));    


  drp_model #( 
    .DRP_ADDR_WIDTH     (DRP_ADDR_WIDTH),                
    .DRP_DATA_WIDTH     (DRP_DATA_WIDTH) 
  ) drp_model_inst(
  .drp_clk          (drp_example_wrapper_inst.clk_out1),
  .drp_en           (drp_example_wrapper_inst.DRP2_den),
  .drp_we           (drp_example_wrapper_inst.DRP2_dwe),
  .drp_addr         (drp_example_wrapper_inst.DRP2_daddr),
  .drp_di           (drp_example_wrapper_inst.DRP2_di),
  .drp_do           (drp_example_wrapper_inst.DRP2_do),
  .drp_rdy          (drp_example_wrapper_inst.DRP2_drdy)); // drp_model  

     
endmodule
