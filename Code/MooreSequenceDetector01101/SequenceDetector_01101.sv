`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// SequenceDetector_01101.sv
// The following file implements a SequenceDetector for 01101 with 0 being the 
// first part in the sequence. This is a Moore machine. 
//////////////////////////////////////////////////////////////////////////////////


module SequenceDetector_01101(input wire clk, 
                              input wire reset, 
                              input wire X, 
                              output var logic Z, 
                              output var logic [2:0] Q);
       typedef logic [2:0] state; 
       struct packed {
               state current_state, next_state;
               enum logic [2:0] {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX} states;  
               logic out; 
               } seq_det; 
               
         //State Transition and       
        always_ff @ (posedge clk, posedge reset) begin 
                if (reset) begin 
                    seq_det.current_state <= ZERO; 
                end 
                else begin 
                    seq_det.current_state <= seq_det.next_state; 
                end 
        end 
        
        
        //State tranistion logic
        always_comb  begin
                unique case (seq_det.current_state) 
                    ZERO: seq_det.next_state = (X)? ZERO : ONE; 
                    ONE: seq_det.next_state = (X)? TWO: ONE;
                    TWO: seq_det.next_state = (X)? THREE: ONE; 
                    THREE: seq_det.next_state = (X)? ZERO: FOUR; 
                    FOUR: seq_det.next_state = (X)? FIVE: ONE; 
                    FIVE: seq_det.next_state = (X)?ZERO: ONE; 
                    default seq_det.next_state = ZERO; 
                endcase 
        end 
        
        //Output 
        always_comb  begin 
            unique case (seq_det.current_state) 
                FIVE: {Z,seq_det.out, Q} = {1'b1, 1'b1, seq_det.current_state}; 
                default {Z, seq_det.out, Q}  = {1'b0, 1'b0, seq_det.current_state}; 
            endcase 
        end 

       
endmodule
