`timescale 1ns / 1ps

module AXI_model #(

  parameter C_S_AXI_ADDR_WIDTH   = 32,  //+2 is to address align for AXI4             
  parameter C_S_AXI_DATA_WIDTH   = 32
  
)(

  //--------------  AXI Interface Signals         --------------
  input             AXI_aclk,
  output reg        AXI_aresetn,
  
  output  reg [C_S_AXI_ADDR_WIDTH-1:0]    S_AXI_araddr,
  input             S_AXI_arready,
  output  reg       S_AXI_arvalid,
  output  reg [2:0] S_AXI_arprot,
  
  output reg [C_S_AXI_ADDR_WIDTH-1:0]     S_AXI_awaddr,
  input             S_AXI_awready,
  output reg        S_AXI_awvalid,
  output reg  [2:0] S_AXI_awprot,
  
  input [1:0]       S_AXI_bresp,  
  output reg        S_AXI_bready,
  input             S_AXI_bvalid,
  
  input  [C_S_AXI_DATA_WIDTH-1:0]     S_AXI_rdata,
  output reg        S_AXI_rready,
  input             S_AXI_rvalid,
  input  [1:0]      S_AXI_rresp,
  
  output reg  [C_S_AXI_DATA_WIDTH-1:0]    S_AXI_wdata,
  input             S_AXI_wready,
  output reg        S_AXI_wvalid,
  output reg [3:0]  S_AXI_wstrb

    );
    
  localparam dly = 1;    
  localparam PERIOD = 10;


    
    task memory_read;
       input [31:0] addr_input;       
       reg [31:0] temp_data;
       
       begin

        S_AXI_araddr =  addr_input;
        S_AXI_arvalid = 1'b1;
        S_AXI_rready = 1'b1;
        

        clk_wait();
        //@(negedge AXI_aclk);
        //if (!S_AXI_arready) begin
        //  while (!S_AXI_arready) begin
        //    @(negedge AXI_aclk);
        //    #1;
        //  end
        //  @(posedge AXI_aclk);
        //  #1;
        //end else begin
        //  @(posedge AXI_aclk);
        //  #1;
        //end

        S_AXI_araddr = 0;
        S_AXI_arvalid = 1'b0;
          
        @(negedge AXI_aclk);
        if (!S_AXI_rvalid) begin
          while (!S_AXI_rvalid) begin
            @(negedge AXI_aclk);
            #1;
          end
          temp_data = S_AXI_rdata;
          @(posedge AXI_aclk);
          #1;
        end else begin
          temp_data = S_AXI_rdata;
          @(posedge AXI_aclk);
          #1;
        end
        
        S_AXI_rready = 1'b0;  
        $display("Data = %x, Address = %x, at Time = %t", temp_data, addr_input, $realtime);
        
       end
    endtask
 
 
    task memory_write;
       input [31:0] addr_input;
       input [31:0] data_input;
       
       reg [31:0] temp_data;
       
       begin
          @(posedge AXI_aclk);
          #(dly)
          S_AXI_awaddr = addr_input;
          S_AXI_awvalid = 1'b1;
          S_AXI_wvalid  = 1'b0;
          @(posedge AXI_aclk);
          while (!S_AXI_awready) begin
            @(posedge AXI_aclk);
          end
          #(dly)
          S_AXI_awaddr = 0;
          S_AXI_awvalid = 1'b0;
          S_AXI_wvalid  = 1'b1;
          S_AXI_wdata   = data_input;
          temp_data = S_AXI_rdata;
          @(posedge AXI_aclk);
          while (!S_AXI_wready) begin
            @(posedge AXI_aclk);
          end
          #(dly)  
          S_AXI_wvalid = 1'b0; 
          S_AXI_bready = 1'b1; 
          @(posedge AXI_aclk);
          while (!S_AXI_bvalid) begin
            @(posedge AXI_aclk);
          end
           #(dly)  
          S_AXI_bready = 1'b0;                
       end
    endtask 
    
    
  task automatic clk_wait();
      @(negedge AXI_aclk);
      if (!S_AXI_arready) begin
        while (!S_AXI_arready) begin
          @(negedge AXI_aclk);
          #1;
        end
        @(posedge AXI_aclk);
        #1;
      end else begin
        @(posedge AXI_aclk);
        #1;
      end
   endtask   


   initial begin
      S_AXI_araddr = 0;
      S_AXI_arvalid = 0;
      S_AXI_arprot = 0;
   
      S_AXI_awaddr = 0;
      S_AXI_awvalid = 0;
      S_AXI_awprot = 0;
   
      S_AXI_bready = 0;
   
      S_AXI_rready = 0;
   
      S_AXI_wdata = 0;
      S_AXI_wvalid = 0;
      S_AXI_wstrb = 4'hF;   
   
      AXI_aresetn = 1'b1;
      #(PERIOD*20);      
      AXI_aresetn = 1'b0;
      #(PERIOD*20);      
      AXI_aresetn = 1'b1;
      #(PERIOD*200);
//      memory_write( 32'h00000000, 32'h00001234 );
//      memory_write( 32'h00000200, 32'h00005678 );
      memory_write( 32'h00000400, 32'h00009ABC );
      memory_write( 32'h00000404, 32'h00001234 );
      //#(PERIOD*5);
      memory_read ( 32'h00000000 );
      memory_read ( 32'h00000200 );
      memory_read ( 32'h00000400 );
      memory_read ( 32'h00000404 );
      #(PERIOD*25);
     
   end     
    
endmodule
