`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 16:03:36
// Design Name: 
// Module Name: johnson_counter_design
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


module johnson_counter_design(input clk,rst,output reg [3:0]q);

always@(posedge clk)
    begin
        if(rst)
        q<=4'd1;
        else
            begin
             case(q)
                4'd1:q=4'd3;
                4'd3:q=4'd7;
                4'd7:q=4'd15;
                4'd15:q=4'd14;
                4'd14:q=4'd12;
                4'd12:q=4'd8;
                4'd8:q=4'd0;
                4'd0:q=4'd1;
                default:q=4'd1;
                endcase
                
            end
        
    end

endmodule