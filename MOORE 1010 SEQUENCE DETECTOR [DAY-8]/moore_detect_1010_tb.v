`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 18:48:34
// Design Name: 
// Module Name: moore_detect_1010_tb
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


module moore_detect_1010_tb();

reg in_bit,clk,reset;
wire out;
moore_detector_1010 dut(in_bit, clk,reset,out);


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
#10 in_bit=1;
#10 in_bit=1;
#10 in_bit=0;
#10 in_bit=1;
#10 in_bit=0;
#10 in_bit=1;
#10 in_bit=0;
#10 in_bit=1;

end
//always
//#5 clk=~clk;
//initial
//#100 $finish ;
endmodule