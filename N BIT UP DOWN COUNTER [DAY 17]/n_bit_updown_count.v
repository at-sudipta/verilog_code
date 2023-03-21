`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2023 16:48:08
// Design Name: 
// Module Name: n_bit_updown_count
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


module n_bit_updown_count #(parameter N = 8)
 ( input   clk,
   input   reset,
   input UP_DOWN,
      output  reg[N-1:0] count);

 always @ (posedge clk )
 begin
   if (reset==1)
    count <= 0;
   
   else 
   if(UP_DOWN==1)      //UP MODE
            if (count == N-1) 
      count <= 0;
            else
       count<=count+1;  //INCREMENT
       
   else                //DOWN MODE
     if(count==0)
   count<=N-1;
      else
      count<=count-1;    //DECREMENT
   
   end
endmodule

