`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2023 12:24:52
// Design Name: 
// Module Name: count_number_of_one
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


module count_number_of_one#(parameter N=16)(

    input [N-1:0] binary_number,
    output reg [N-1:0] ones_count
);
integer i;
always @ (*) 
begin
    ones_count = 0;//INITIAL COUNT
    for (i = 0; i < N; i = i + 1) begin
        if (binary_number[i] == 1'b1) begin
            ones_count = ones_count + 1;
        end
    end
end

endmodule

