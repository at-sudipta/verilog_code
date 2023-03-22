`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 12:08:42
// Design Name: 
// Module Name: checker_design
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


module checker_design(input x,y,z,p,output check);

wire w1,w2,w3,w4,w5,w6,w7,w8;

mux_2x1 dut0(.i({w2,w1}),.s(p),.y(check));

mux_2x1 dut1(.i({w4,w3}),.s(z),.y(w1));
mux_2x1 dut2(.i({w6,w5}),.s(z),.y(w2));

mux_2x1 dut4(.i({w8,w7}),.s(y),.y(w3));
mux_2x1 dut5(.i({w7,w8}),.s(y),.y(w4));
mux_2x1 dut6(.i({w7,w8}),.s(y),.y(w5));
mux_2x1 dut7(.i({w8,w7}),.s(y),.y(w6));

mux_2x1 dut8(.i({(1'b1),(1'b0)}),.s(x),.y(w7));
mux_2x1 dut9(.i({(1'b0),(1'b1)}),.s(x),.y(w8));



endmodule
