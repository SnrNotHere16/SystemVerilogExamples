`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2021 05:37:20 PM
// Design Name: 
// Module Name: UniversalShiftRegisterTopModule
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


module UniversalShiftRegisterTopModule(
		input wire logic clk,
		input wire logic reset,
		input wire logic step,
		input wire logic [1:0] M,
		input wire logic SI,
		input wire logic [3:0] D, 
		output var logic [3:0] Q
    );
    
    wire clk_out, one_out;
    
    Clk500Hz zero (.*);
    OneShot one (.d_in(step),.clk_in(clk_out),.reset(reset),.d_out(one_out));
    ShiftRegister two (.clk(one_out), .reset(reset), .M(M), 
                       .SI(SI),.D(D), .Q(Q));
    
endmodule
