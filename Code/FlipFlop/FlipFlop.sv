`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2021 02:55:22 PM
// Design Name: 
// Module Name: FlipFlop
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


module FlipFlop(
        input wire logic clk, 
        input wire logic reset,
        input wire logic d, 
        output var logic q);
        always_ff @(posedge clk, posedge reset) begin 
            if (reset) begin 
                q <= 1'b0; 
            end 
            
            else begin 
                q <= d; 
            end 
        
        
        end 
endmodule
