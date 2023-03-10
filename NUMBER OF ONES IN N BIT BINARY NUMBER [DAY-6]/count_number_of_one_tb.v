`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2023 12:30:52
// Design Name: 
// Module Name: count_number_of_one_tb
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


module count_number_of_one_tb();


reg [15:0] binary_number;
wire [15:0] ones_count;

count_number_of_one dut (
    .binary_number(binary_number),
    .ones_count(ones_count)
);

initial 
begin
    // Test case 3
    binary_number = 16'b0000000000000000;
    #10;
    $display("Input binary number: %b", binary_number);
    $display("Expected number of 1s: 0");
    $display("Actual number of 1s: %d", ones_count);
    
    // TEST CASE 2
    binary_number = 16'b01010101010101010;
    #10;
    $display("Input binary number: %b", binary_number);
    $display("Expected number of 1s: 8");
    $display("Actual number of 1s: %d", ones_count);
    
    // TEST CASE 3
    binary_number = 16'b1111000011111110;
    #10;
    $display("Input binary number: %b", binary_number);
    $display("Expected number of 1s: 11");
    $display("Actual number of 1s: %d", ones_count);
    
    // TEST CASE 4
    binary_number = 16'b1111111111111111;
    #10;
    $display("Input binary number: %b", binary_number);
    $display("Expected number of 1s: 16");
    $display("Actual number of 1s: %d", ones_count);
    

    

    
    $finish;
end

endmodule

