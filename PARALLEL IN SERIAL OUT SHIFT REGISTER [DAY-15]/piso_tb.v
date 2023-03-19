`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 00:17:11
// Design Name: 
// Module Name: piso_tb
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


module piso_tb();
reg [3:0]b;
reg clk,sl;
wire q;
piso_design dut(clk,sl,b,q);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
sl=0;b=4'b0101;
#20 sl=1;
#20 sl=1;
#10 sl=0;
#10 sl=0;//b=4'b0110;
#100 $finish;
end
endmodule
