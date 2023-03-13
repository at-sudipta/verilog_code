`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2023 21:36:29
// Design Name: 
// Module Name: sequence_generator_tb
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


module sequence_design_tb();
    reg clk;
    reg rst;
    reg en;
    
    wire [3:0] c;

   
sequence_design uut (.clk(clk),.rst(rst),.en(en),.c(c));

    initial 
    begin
      clk = 0;
      rst = 1;
      en = 0;
      #100;
      rst = 0;
      en = 1;

        repeat (50) 
        begin
            #10 clk = ~clk;
        end
        en = 0;

        $finish;
    end

endmodule

