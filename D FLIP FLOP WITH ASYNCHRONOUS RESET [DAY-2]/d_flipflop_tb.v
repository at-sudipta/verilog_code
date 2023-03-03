`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2022 22:26:11
// Design Name: 
// Module Name: d_flipflop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module d_flipflop_tb();

  // INPUTS
  reg clk;
  reg d;
  reg rst;

  // OUTPUTS
  wire q;

  // INSTANTIATE
  d_flipflop uut (
    .clk(clk),
    .d(d),
    .rst(rst),
    .q(q)
  );

  // CLOCK GENERATE
  always begin
    clk = 0;
    #5;
    clk = 1;
    #5;
  end

  
  initial 
  
  begin
    
    d = 0;
    rst = 0;
    #10;
    $display("q = %b", q);
    
    d = 1;
    rst=0;
    #10;
    $display("q = %b", q);
    
    d=0;
    rst = 0;
    #10;
    $display("q = %b", q);
    
    d = 1;
    rst=1;
    #10;
    $display("q = %b", q);
    

    $finish;
  end

endmodule

