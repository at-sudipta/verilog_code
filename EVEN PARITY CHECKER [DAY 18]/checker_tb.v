`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 12:11:58
// Design Name: 
// Module Name: checker_tb
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


module checker_tb();

reg x,y,z,p;
wire check;

checker_design uut(.x(x),.y(y),.z(z),.p(p),.check(check));

initial
begin
#10;
x=1;y=1;z=1;p=1;
#10;
x=1;y=0;z=1;p=1;
#10;
x=0;y=0;z=1;p=1;
#10;
x=1;y=1;z=0;p=0;
#10;
x=0;y=0;z=0;p=1;
end

endmodule
