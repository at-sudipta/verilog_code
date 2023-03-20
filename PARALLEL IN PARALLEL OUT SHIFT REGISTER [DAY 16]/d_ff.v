`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2023 14:06:58
// Design Name: 
// Module Name: d_ff
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


module d_ff (
  input clk,    // clock input
  input d,      // data input
  input rst,    // asynchronous reset input
  output reg q  // output
);

  always @(posedge clk ) begin
    if (rst) // asynchronous reset
      q <= 1'b0;
    else // normal operation
      q <= d;
  end

endmodule
