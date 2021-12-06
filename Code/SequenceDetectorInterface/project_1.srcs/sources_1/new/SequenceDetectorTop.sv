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
interface Debounce_SequenceDet(input wire clk, input wire reset, input wire step);
    logic one_out; 
    modport debounce(output one_out, input clk, reset, step);
    modport seq_det(input one_out, reset); 
endinterface 

module SequenceDetectorTop(
                            input wire logic clk, 
                            input wire logic reset, 
                            input wire logic step, 
                            input wire logic X, 
                            output var logic Z, 
                            output var logic [2:0] Q);
     wire clk_out, one_out; 
    
    Debounce_SequenceDet d (.clk(clk), .reset(reset), .step(step));
    Debounce zero(.d(d.debounce)); 
    SequenceDetector one(.sd(d.seq_det), .*); 
                            
endmodule
