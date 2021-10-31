`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2021 11:41:41 PM
// Design Name: 
// Module Name: SequenceDetector
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


module SequenceDetector(input wire logic clk, 
                        input wire logic reset, 
                        input wire logic X, 
                        input wire logic M, 
                        output var logic Z, 
                        output var logic [2:0] Q);
assign Q = 3'b111; 
assign Z = 1'b1; 
endmodule
