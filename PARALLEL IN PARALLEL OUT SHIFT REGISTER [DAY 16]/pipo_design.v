`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2023 14:06:39
// Design Name: 
// Module Name: pipo_design
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


module pipo_design(input clk,input [3:0]b,output[3:0]a);

d_ff d1(.clk(clk),.d(b[3]),.q(a[3]),.rst());
d_ff d2(.clk(clk),.d(b[2]),.q(a[2]),.rst());
d_ff d3(.clk(clk),.d(b[1]),.q(a[1]),.rst());
d_ff d4(.clk(clk),.d(b[0]),.q(a[0]),.rst());

endmodule

