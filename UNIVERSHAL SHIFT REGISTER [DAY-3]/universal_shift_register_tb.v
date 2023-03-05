`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2023 10:58:27
// Design Name: 
// Module Name: universal_shift_register_tb
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


module universal_shift_register_tb();

reg clk,rst;
reg [1:0]ctrl;
reg [7:0]d;
wire [7:0]y;

universal_shift_register dut(clk,rst,ctrl,d,y);


//CLOCK GENERATION

initial 
begin
    clk = 0;
    forever #5 clk = ~clk; 
end


//RIGHT SHIFT TEST
initial
begin
d=8'b10101010;
#10;
rst=1;
#10;
rst=0;
ctrl=2'b00; #70;


//LEFT SHIFT TEST
begin
d=8'b10101010;
#10;
rst=1;
#10;
rst=0;
ctrl=2'b01; #70;

//CIRCULAR RIGHT SHIFT TEST
begin
d=8'b10101010;
#10;
rst=1;
#10;
rst=0;
ctrl=2'b10; #70;

//CIRCULAR LEFT SHIFT TEST
begin
d=8'b10101010;
#10;
rst=1;
#10;
rst=0;
ctrl=2'b11; #70;
end
end
end
end
endmodule





//module universal_shift_register_tb();

//reg clk,rst;
//reg [1:0]ctrl;
//reg [7:0]d;
//wire [7:0]y;

//universal_shift_register dut(clk,rst,ctrl,d,y);
//initial 
//begin
//    clk = 0;
//    forever #5 clk = ~clk; 
//end

//initial 
//begin
//    begin
//        d = $random(); #10;
//    end 
//    rst = 1; #10;
//    ctrl=2'b00; #70;
//    ctrl=2'b01; #70;
//    ctrl=2'b10; #70;
//    ctrl=2'b11; #70;
//    $stop;
//end

//endmodule
