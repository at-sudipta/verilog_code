`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2022 15:51:33
// Design Name: 
// Module Name: jk_flipflop_tb
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





//RANDOM TEST BENCH

module jk_flipflop_tb();
reg J,K,CLK,rst;
wire Q,Qbar;

jk_flipflop ff_dut(J,K,CLK,rst,Q,Qbar);

//CLK generation
always #5 CLK=~CLK;
initial CLK=0;

initial 
begin
rst=1;
#20;
rst=0;
#20;
repeat(20)

    begin
    {J,K}=$random;
    #10;
    $display("J=%d,K=%d,rst=%d,Q=%d,Qbar=%d\n",J,K,rst,Q,Qbar); 
    end
    end    
endmodule


////MANUAL TESTBENCH

//module jk_ff_tb();
//reg clk,rst,j,k;
//wire q,qbar;

//  jk_flipflop ff_dut(clk,rst,j,k,q,qbar);
  
//  //clock generation
//  always #5 clk=!clk;
//  initial clk=0;
  
//  initial 
//    begin
//     rst=1;
//     #20;
     
     
//     rst=0;
//     #20;
//     {j,k}={1'b0,1'b0};#10;
//     $display("clk=%d,rst=%d,j=%d,k=%d,q=%d,qbar=%d",clk,rst,j,k,q,qbar);
//     {j,k}={1'b0,1'b1};#10;
//     $display("clk=%d,rst=%d,j=%d,k=%d,q=%d,qbar=%d",clk,rst,j,k,q,qbar);
//     {j,k}={1'b1,1'b0};#10;
//     $display("clk=%d,rst=%d,j=%d,k=%d,q=%d,qbar=%d",clk,rst,j,k,q,qbar);
//     {j,k}={1'b1,1'b1};#10;
//     $display("/clk=%d,rst=%d,j=%d,k=%d,q=%d,qbar=%d",clk,rst,j,k,q,qbar);
//     #10;
//     $finish();
//    end 
//endmodule


