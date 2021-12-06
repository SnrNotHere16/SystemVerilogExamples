`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2021 07:58:37 PM
// Design Name: 
// Module Name: Debounce
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


module Debounce(Debounce_SequenceDet d);
     wire clk_out; 
     Clk500Hz zero(.clk(d.clk), .reset(d.reset), .clk_out(clk_out));
     OneShot one (.d_in(d.step),.clk_in(clk_out),.reset(d.reset),.d_out(d.one_out));
endmodule
