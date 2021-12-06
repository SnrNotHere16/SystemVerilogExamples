`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2021 08:38:12 PM
// Design Name: 
// Module Name: SequenceDetectorInterfaceTB
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


module SequenceDetectorInterfaceTB();
    logic clk, reset, step, X; 
    wire Z; 
    wire [2:0] Q;
    parameter step_on = 1800000;
    parameter step_off = 200001;
    
    SequenceDetectorTop DUT(.*); 
    
    initial begin 
        clk = 1'b0; 
    end 
    always#5 clk = ~clk; 
    
    initial begin 
        repeat (5) @(posedge clk) reset <= 1'b1; 
        repeat (2) @ (posedge clk) reset <= 1'b0; 
        repeat (1) @ (posedge clk)  begin 
            step <= 1'b0;
            X <= 1'b0;  
        end 
        repeat (step_on)@ (negedge clk) step <= 1'b1; 
        repeat (step_off) @ (negedge clk) step <= 1'b0; 
        repeat (step_on) @ (negedge clk) step <= 1'b1; 
        
        
     $finish;    
    end 
endmodule
