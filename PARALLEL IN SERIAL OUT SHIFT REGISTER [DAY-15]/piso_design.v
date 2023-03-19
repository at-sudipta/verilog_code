`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 00:14:14
// Design Name: 
// Module Name: piso_design
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


module piso_design(input clk,sl,input[3:0]b,output q);

wire w1,w2,w3,w4,w5,w6,w7;
wire o1,o2,o3;

d_ff d0(.clk(clk),.d(b[0]),.q(w1),.rst());

ao a1(.a(w1),.b(sl),.c(sl),.d(b[1]),.z(o1));
d_ff d1(.clk(clk),.d(o1),.q(w4),.rst());

ao a2(.a(w4),.b(sl),.c(sl),.d(b[2]),.z(o2));
d_ff d2(.clk(clk),.d(o2),.q(w7),.rst());

ao a3(.a(w7),.b(sl),.c(sl),.d(b[3]),.z(o3));
d_ff d3(.clk(clk),.d(o3),.q(q),.rst());


endmodule
