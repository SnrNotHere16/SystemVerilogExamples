`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2021 11:39:51 PM
// Design Name: 
// Module Name: SequenceDetectorTop
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


module SequenceDetectorTop(
                            input wire logic clk, 
                            input wire logic reset, 
                            input wire logic step, 
                            input wire logic X, 
                            input wire logic M,
                            output var logic Z, 
                            output var logic [2:0] Q);
     wire clk_out, one_out; 
     Clk500Hz zero(.*);//dot star inferred name port connection
     OneShot one (.d_in(step),.clk_in(clk_out),.reset(reset),.d_out(one_out));
    SequenceDetector two(.clk(one_out),.*); 
                            
endmodule
