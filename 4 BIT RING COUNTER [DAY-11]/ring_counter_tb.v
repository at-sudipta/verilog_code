`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 15:26:29
// Design Name: 
// Module Name: ring_counter_tb
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



module ring_counter_tb();
	reg clk,rst;
	wire [3:0] q;
	
	ring_counter_design dut(clk,rst,q);

initial
		begin
				clk = 1'b0;
				rst = 1'b0;
				
		end

always #10 clk = ~clk;

	
	
initial
	begin
		rst = 1'b1;
		#20;
		rst = 1'b0;
		#200 $finish;
	end
endmodule
