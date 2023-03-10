`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2023 23:35:45
// Design Name: 
// Module Name: palindrome_checker_design
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


module palindrome_checker_design#(parameter N=8)(input [N-1:0]data_in,output reg palindrome);

reg [(N/2)-1:0]left_part;
reg [(N/2)-1:0]right_part;

integer i;

always@(*)
begin
    for(i=0;i<(N/2);i=i+1)
    begin
    left_part[i]=data_in[i];
    right_part[i]=data_in[N-1-i];
    end
end

always@(*)
begin
if(left_part==right_part) 
    palindrome=1'b1;
    else
    palindrome=1'b0;
end    
endmodule
