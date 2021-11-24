`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Filename: SeqeunceDetectorTop.sv 
// The top module for a sequnece detector 
// clk - input clk 
// step - input: the button to send a bit
// X - input: the value to send 
// Z - output: if the sequence is detected this is a one. 
// Q - output: This value reflects what state the sequence detector is at.  
//////////////////////////////////////////////////////////////////////////////////


module SequenceDetectorTop(
                            input wire logic clk, 
                            input wire logic reset, 
                            input wire logic step, 
                            input wire logic X, 
                            output var logic Z, 
                            output var logic [2:0] Q);
     wire clk_out, one_out; 
     Clk500Hz zero(.*);//dot star inferred name port connection
     OneShot one (.d_in(step),.clk_in(clk_out),.reset(reset),.d_out(one_out));
    SequenceDetector two(.clk(one_out),.reset(reset), .*); 
                            
endmodule