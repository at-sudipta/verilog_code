`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2023 21:26:25
// Design Name: 
// Module Name: sequence_design
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


module sequence_design(input clk,rst,en,output reg[3:0]c);

always@(posedge clk)
begin
    if(rst)
    c<=4'd6;
    else
    begin
        if(c==4'd6)
        c<=4'd9;
        else if(c==4'd9)
        c<=4'd11;
        else if(c==4'd11)
        c<=4'd15;
        else if(c==4'd15)
        c<=4'd10;
        else if(c==4'd10)
        c<=4'd8;
        else if(c==4'd8)
        c<=4'd2;
        else if(c==4'd2)
        c<=4'd5;
        else if(c==4'd5)
        c<=4'd6;
        else
        c<=4'd6;
     end
end        
endmodule
