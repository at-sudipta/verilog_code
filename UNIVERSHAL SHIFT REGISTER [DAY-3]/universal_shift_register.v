`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2023 14:33:33
// Design Name: 
// Module Name: universal_shift_register
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


//module universal_shift_register #(parameter N=8)(
//input clk,rst,lrbar,czbar,
//input[N-1:0]x,
//output reg [N-1:0]y);

//always@(posedge clk)
//begin
//    if(rst)
//    begin
//    y<=0;
//    end
//    else
//        begin
//        case({lrbar,czbar})
//            2'b00:begin
//                    y[7]<=0;
//                    y[6 :0]<=x[7: 1];
//                  end
//            2'b01:begin
//                    y[7]<=x[0];
//                    y[6 :0]<=x[7 :1];
//                  end
//            2'b10:begin
//                    y[0]<=0;
//                    y[7 :1]<=x[6 :0];
//                   end
//            2'b11:begin
//                    y[0]<=x[7];
//                    y[7: 1]<= x[6: 0];
//                  end
//        endcase
                               
//        end
//end

//endmodule


module universal_shift_register (input clk,rst,input [1:0]ctrl,input[7:0]d,output reg[7:0]y);



always@(posedge clk,posedge rst)
begin
if(rst)
y<=0;
else
begin

case(ctrl)
2'b00:begin //RIGHT SHIFT APPEND ZERO
        y[7]   <= 0;
        y[6:0] <= d[7:1];
      end  


2'b01:begin //LEFT SHIFT APPEND ZERO
        y[0] <= 0;
        y[7:1] <= d[6:0];
        end  

2'b10:begin //CIRCULAR RIGHT SHIFT
        y[7]<=d[0];
        y[6:0]<=d[7:1];
      end
      
2'b11:begin //CIRCULAR LEFT SHIFT
        y[0] <= d[7];
        y[7:1] <= d[6:0];
      end  
      default:begin end
           
        
endcase
end
end
endmodule
                
                
        
        


