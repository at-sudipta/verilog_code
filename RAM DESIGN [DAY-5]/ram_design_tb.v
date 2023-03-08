`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2023 15:55:41
// Design Name: 
// Module Name: ram_design_tb
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


module ram_design_tb();

// Input and output signals
reg clk, cs, wen;
reg [3:0] addr;
reg [7:0] w_data;
wire [7:0] r_data;

// Instantiate the RAM module
ram_design dut(
    .clk(clk),
    .cs(cs),
    .wen(wen),
    .addr(addr),
    .w_data(w_data),
    .r_data(r_data)
);

  // CLOCK GENERATION
  always 
  begin
    clk = 0;
    #5;
    clk = 1;
    #5;
  end

  initial begin
   

    // WRITE IN REGISTER 0
    cs = 1;
    wen = 1;
    addr = 4'b0000;
    w_data = 8'b10101010;
    #10;
    cs = 0;

    // WRITE IN REGISTER 1
    cs = 1;
    wen = 1;
    addr = 4'b0001;
    w_data = 8'b00001111;
    #10;
    cs = 0;

    // WRITE IN REGISTER 2
    cs = 1;
    wen = 1;
    addr = 4'b0010;
    w_data = 8'b11001100;
    #10;
    cs = 0;

    // WRITE IN REGISTER 3
    cs = 1;
    wen = 1;
    addr = 4'b0011;
    w_data = 8'b00011111;
    #10;
    cs = 0;

    // WRITE IN REGISTER 4
    cs = 1;
    wen = 1;
    addr = 4'b0100;
    w_data = 8'b00010111;
    #10;
    cs = 0;

    // WRITE IN REGISTER 5
    cs = 1;
    wen = 1;
    addr = 4'b0101;
    w_data = 8'b11011111;
    #10;
    cs = 0;

    // WRITE IN REGISTER 6
    cs = 1;
    wen = 1;
    addr = 4'b0110;
    w_data = 8'b00010001;
    #10;
    cs = 0;

    // WRITE IN REGISTER 7
    cs = 1;
    wen = 1;
    addr = 4'b0111;
    w_data = 8'b00011101;
    #10;
    cs = 0;

    // WRITE IN REGISTER 8
    cs = 1;
    wen = 1;
    addr = 4'b1000;
    w_data = 8'b00000011;
    #10;
    cs = 0;

                                  
    
    // READ FROM REGISTER 0
    cs = 1;
    wen = 0;
    addr = 4'b0000;
    #10;
    if (r_data !== 8'b10101010) 
    $display("Error: Unexpected value in register 0");

    // READ FROM REGISTER 1
    cs = 1;
    wen = 0;
    addr = 4'b0001;
    #10;
    if (r_data !== 8'b00001111) 
    $display("Error: Unexpected value in register 1");
    
    // READ FROM REGISTER 2
    cs = 1;
    wen = 0;
    addr = 4'b0010;
    #10;
    if (r_data !== 8'b11001100) 
    $display("Error: Unexpected value in register 2");


    // READ FROM REGISTER 3
    cs = 1;
    wen = 0;
    addr = 4'b0011;
    #10;
    if (r_data !== 8'b00011111) 
    $display("Error: Unexpected value in register 3");
    
    // READ FROM REGISTER 4
    cs = 1;
    wen = 0;
    addr = 4'b0100;
    #10;
    if (r_data !== 8'b00010111) 
    $display("Error: Unexpected value in register 4");    
    #10;
    
    // READ FROM REGISTER 5
    cs = 1;
    wen = 0;
    addr = 4'b0101;
    #10;
    if (r_data !== 8'b11011111) 
    $display("Error: Unexpected value in register 5");
    
    // READ FROM REGISTER 6
    cs = 1;
    wen = 0;
    addr = 4'b0110;
    #10;
    if (r_data !== 8'b00010001) 
    $display("Error: Unexpected value in register 6");
    
    // READ FROM REGISTER 7
    cs = 1;
    wen = 0;
    addr = 4'b0111;
    #10;
    if (r_data !== 8'b00011101) 
    $display("Error: Unexpected value in register 7");
    
    // READ FROM REGISTER 8
    cs = 1;
    wen = 0;
    addr = 4'b1000;
    #10;
    if (r_data !== 8'b00000011) 
    $display("Error: Unexpected value in register 8");  
    
                                    
    
    $finish;
    
    
  end

endmodule






