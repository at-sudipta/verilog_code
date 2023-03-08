`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2023 15:19:42
// Design Name: 
// Module Name: ram_design
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


module ram_design#(parameter DW=8, parameter AD=4)// AW=ADDRESS DEPTH 
                                                  // DW= DATA WIDTH  
(input clk,cs,wen,input [AD-1:0]addr,input[DW-1:0]w_data,
output reg[DW-1:0]r_data);

//cs=CHIP SELECT; wen=WRITE ENABLE; r_addr=READ ADDRESS; w_addr=WRITE ADDRESS;
//w_data=WRITE DATA; r_data=READ DATA;



//SIZE OF THE RAM DECLARATION ; 
                                
reg[DW-1:0]ram[1<<AD-1:0];//[DW-1:0]= DATA WIDTH OF THE RAM, HERE IS[7:0], THAT MEANS 8 BIT IS THE WIDTH
                          //[1<<AW-1:0]=ADDRESS WIDTH OF THE RAM, HERE IS [2^AW-1:0]=[2^4-1:0]=[15:0]



//WRITE OPERATION

always@(posedge clk)
begin
    if(cs & wen) //WHEN CHIP SELECT AND WRITE ENABLE ARE HIGH THEN WE CAN WRITE THE DATA
    begin
    ram[addr]<=w_data;
    end 
end


//READ OPERATION

always@(posedge clk) //WHEN CHIP SELECT IS HIGH & WEN IS LOW THEN WE CAN READ THE DATA,BECAUSE WRITING A DATA AND READING THAT SAME DATA AT SAME TIME ITS NOT POSSIBLE
begin
    if(cs&(!wen))
    begin
    r_data<=ram[addr];    
    end
end


endmodule
