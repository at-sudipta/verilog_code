`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 00:24:10
// Design Name: 
// Module Name: palindrome_checker_tb
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


module palindrome_checker_tb();

reg [7:0]data_in;
wire palindrome;

palindrome_checker_design dut(.data_in(data_in),.palindrome(palindrome));

initial
begin
repeat(10)
begin
data_in=$random;
#10;
$display("Data_Input: %b, Palindrome: %b", data_in, palindrome);

end

$finish;

end
endmodule
