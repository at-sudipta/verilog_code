`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 15:21:28
// Design Name: 
// Module Name: siso_design
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


module siso_design(input clk,b,output q);
wire w1,w2,w3;

d_ff dut1(.clk(clk),.d(b),.q(w1),.rst());
d_ff dut2(.clk(clk),.d(w1),.q(w2),.rst());
d_ff dut3(.clk(clk),.d(w2),.q(w3),.rst());
d_ff dut4(.clk(clk),.d(w3),.q(q),.rst());

endmodule
