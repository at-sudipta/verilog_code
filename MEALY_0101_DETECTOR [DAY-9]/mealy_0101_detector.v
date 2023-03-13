`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2023 16:29:57
// Design Name: 
// Module Name: mealy_0101_detector
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


module mealy_0101_detector(
input in_bit,clk,reset,
output reg out);

reg [2:0] cs, ns;

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;
          
always@(posedge clk)
          begin
                    if (reset)
                    cs <= S0;
                    else
                      cs <= ns;
          end
                   

always @(cs or in_bit)
 begin
 case (cs)
   S0: if (in_bit == 1'b0)
          begin
         ns = S1;
          out=1'b0;
          end
          
      else
            begin
             ns = cs;
             out=1'b0;
             end
   S1: if (in_bit == 1'b1)
          begin
        ns = S2;
          out=1'b0;
          end
       else
          begin
          ns = cs;
          out=1'b0;
          end
   S2: if (in_bit == 1'b0)
          begin
         ns = S3;
          out=1'b0;
          end    
            else
          begin
          ns = S0;
          out=1'b0;
          end
   S3: if (in_bit == 1'b1)
          begin
         ns = S2;
          out=1'b1;
          end
       else
          begin
          ns = S1;
          out=1'b0;
          end

   default: ns = S0;
  endcase
end

endmodule
