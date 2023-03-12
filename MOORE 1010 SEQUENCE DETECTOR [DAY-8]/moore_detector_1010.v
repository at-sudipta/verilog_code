`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 18:42:02
// Design Name: 
// Module Name: moore_detector_1010
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


module moore_detector_1010(
input in_bit,clk,reset,
output reg out);

reg [2:0] cs, ns;

parameter S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b100,
          S4 = 3'b101;
          
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
   S0: if (in_bit == 1'b1)
          begin
         ns = S1;
          out=1'b0;
          end
      else ns = cs;
   S1: if (in_bit == 1'b0)
          begin
        ns = S2;
          out=1'b0;
          end
       else
          begin
          ns = cs;
          out=1'b0;
          end
   S2: if (in_bit == 1'b1)
          begin
         ns = S3;
          out=1'b0;
          end    
            else
          begin
          ns = S0;
          out=1'b0;
          end
   S3: if (in_bit == 1'b0)
          begin
         ns = S4;
          out=1'b0;
          end
       else
          begin
          ns = S1;
          out=1'b0;
          end
S4: if (in_bit == 1'b0)
          begin
         ns = S1;
          out=1'b1;
          end
          else
          begin
          ns = S3;
          out=1'b1;
          end
   default: ns = S0;
  endcase
end

endmodule