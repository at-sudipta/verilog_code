`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2023 16:37:09
// Design Name: 
// Module Name: mealy_0101_detector_tb
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


module mealy_0101_detector_tb();

reg in_bit,clk,reset;
wire out;
mealy_0101_detector dut(in_bit, clk,reset,out);


initial
begin
reset=0;clk=0;in_bit=0;
end
always 
  begin
    clk = 0;
    #5;
    clk = 1;
    #5;
  end
  
  initial
  begin

$monitor("clk=%b,in_bit=%b,out=%b",clk,in_bit,out);
#10 in_bit=1;
#10 in_bit=0;
#10 in_bit=1;
#10 in_bit=0;
#10 in_bit=1;
#10 in_bit=0;
#10 in_bit=1;
#10 in_bit=0;
#10 in_bit=1;

end

endmodule
