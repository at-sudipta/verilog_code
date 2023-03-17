`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 08:04:04
// Design Name: 
// Module Name: sipo_shift_register_design
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


module sipo_shift_register_design(input clk,b,output[3:0]q);

d_ff dut1(.clk(clk),.d(b),.q(q[3]),.rst());
d_ff dut2(.clk(clk),.d(q[3]),.q(q[2]),.rst());
d_ff dut3(.clk(clk),.d(q[2]),.q(q[1]),.rst());
d_ff dut4(.clk(clk),.d(q[1]),.q(q[0]),.rst());

endmodule


