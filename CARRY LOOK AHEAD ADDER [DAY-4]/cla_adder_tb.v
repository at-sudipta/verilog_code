`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2023 14:31:28
// Design Name: 
// Module Name: cla_adder_tb
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


module cla_adder_tb();

reg [3:0]a;
reg [3:0]b;


wire [4:0]result;

//INSTANTIATION
cla_adder_design uut(a,b,result);

initial
begin
    
    a=4'b1000;
    b=4'b1010;
    #5;
    $display("a=%b,b=%b,result=%b",a,b,result);
    
    #10;
   
    a=4'b1100;
    b=4'b1000;
    #5;
    $display("a=%b,b=%b,result=%b",a,b,result); 
    $finish;   
end    

endmodule
