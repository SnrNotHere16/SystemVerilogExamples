`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Filename: SequenceDetector.sv 
// Provides logic for a sequnce detector(non overlapping) via a MOORE FSM 
// Detects sequence 010110
//X - input 
//Z - Ouput: Z ==1 if sequnece detected 
//Q - Output: the current state of the FSM 
// States: 111 - RESET 
//         000 - ZERO
//         001 - ONE 
//         010 - TWO 
//         011 - THREE 
//         100 - FOUR 
//         101 - FIVE  
//////////////////////////////////////////////////////////////////////////////////
module SequenceDetector( input wire logic clk, 
                         input wire logic reset, 
                         input wire  logic X, 
                         output var logic Y,
                         output var logic [2:0] Z);
                         
      typedef enum logic [2:0] {RESET, ZERO, ONE, TWO, THREE, FOUR, FIVE} mealy_states_t;
      mealy_states_t current_state, next_state; 
endmodule
