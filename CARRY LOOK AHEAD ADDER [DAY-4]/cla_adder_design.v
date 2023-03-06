`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2023 12:45:58
// Design Name: 
// Module Name: cla_adder_design
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


module cla_adder_design(input [3:0]a,input [3:0]b,output[4:0]result);

wire [3:0]sum;//SUM
wire [4:0]carry;//CARRY 
wire [3:0]c_g;//CARRY GENERATOR
wire [3:0]c_p;//CARRY PROPOGATION

full_adder dut0(.a(a[0]),.b(b[0]),.c(carry[0]),.sum(sum[0]),.carry());
full_adder dut1(.a(a[1]),.b(b[1]),.c(carry[1]),.sum(sum[1]),.carry());
full_adder dut2(.a(a[2]),.b(b[2]),.c(carry[2]),.sum(sum[2]),.carry());
full_adder dut3(.a(a[3]),.b(b[3]),.c(carry[3]),.sum(sum[3]),.carry());

//CARRY GENERATE Gi=Ai*Bi
assign c_g[0]=a[0]*b[0];
assign c_g[1]=a[1]*b[1];
  assign c_g[2]=a[2]*b[2];
assign c_g[3]=a[3]*b[3];

//CARRY PROPOGATION Pi=Ai+Bi
assign c_p[0]=a[0] | b[0];
assign c_p[1]=a[1] | b[1];
assign c_p[2]=a[2] | b[2];
assign c_p[3]=a[3] | b[3];

//CARRY CARRY=Gi+Pi*Ci-1
assign carry[0]=1'b0;
assign carry[1]=c_g[0] | (c_p[0]&carry[0]);
assign carry[2]=c_g[1] | (c_p[1]&carry[1]);
assign carry[3]=c_g[2] | (c_p[2]&carry[2]);
assign carry[4]=c_g[3] | (c_p[3]&carry[3]);

assign result={carry[4],sum};

endmodule


