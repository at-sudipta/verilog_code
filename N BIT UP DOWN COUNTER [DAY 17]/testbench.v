`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2023 16:49:44
// Design Name: 
// Module Name: testbench
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


module testbench();
	reg clk;
	reg reset;
	reg UP_DOWN;

	wire [7:0] count;

	n_bit_updown_count uut 
	     (.clk(clk), 
		.reset(reset), 
		.UP_DOWN(UP_DOWN), 
		.count(count));

	initial begin
		clk = 0;
		reset = 1;
         #50;
          reset =0; 
         UP_DOWN = 0;
        #200;
        UP_DOWN = 1;
      #200;
        reset = 1;
        UP_DOWN = 0;
        #100;
        reset = 0;  
end
always #10 clk=~clk;

initial 
begin
$monitor("Up_Down=%b,Count=%b",UP_DOWN,count);
#1000; $finish;
end
endmodule
