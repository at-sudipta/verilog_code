`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2022 15:46:21
// Design Name: 
// Module Name: jk_flipflop
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


module jk_flipflop(input J,K,CLK,rst,output reg Q,Qbar);
    always@(posedge CLK)
    
            begin
            if({rst})
            {Q,Qbar}<={1'b0,1'b1};
            else
            begin
            case({J,K})
            2'b00:{Q,Qbar}<={Q,Qbar};
            2'b01:{Q,Qbar}<={1'b0,1'b1};
            2'b10:{Q,Qbar}<={1'b1,1'b0};
            2'b11:{Q,Qbar}<={~Q,Q};
            default:begin end
            endcase
end          
end
endmodule








