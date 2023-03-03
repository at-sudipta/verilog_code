`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2022 22:10:02
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop (
  input clk,    // clock input
  input d,      // data input
  input rst,    // asynchronous reset input
  output reg q  // output
);

  always @(posedge clk or negedge rst) begin
    if (!rst) // asynchronous reset
      q <= 1'b0;
    else // normal operation
      q <= d;
  end

endmodule




