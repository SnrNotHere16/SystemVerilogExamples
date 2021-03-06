`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Filename: SequenceDetector.sv 
// Provides logic for a sequnce detector(non overlapping) via a MOORE FSM 
// Detects sequence 010110
//X - input 
//Z - Ouput: Z ==1 if sequnece detected 
//Q - Output: the current state of the FSM 
// States: 111 - RESET 
//         000 -  ZERO
//         001 - ONE 
//         010 - TWO 
//         011 - THREE 
//         100 - FOUR 
//         101 - FIVE 
//         110 - FOUND 
//////////////////////////////////////////////////////////////////////////////////


module SequenceDetector(Debounce_SequenceDet sd, 
                        input wire logic X, 
                        output var logic Z, 
                        output var logic [2:0] Q);
    //Enum for Moore states              
    typedef enum logic [2:0] {RESET, ZERO, ONE, TWO, 
                              THREE, FOUR, FIVE, FOUND } moore_states_t; 
    moore_states_t current_state, next_state; 
                    
    //Current State logic -- Sequential   
    always_ff @(posedge sd.one_out, posedge sd.reset) begin 
        if (sd.reset) begin 
            current_state <= current_state.first(); 
        end 
        
        else begin 
            current_state <= next_state; 
        end  
    end 
    //Next State Decoder -- Combinational 
     always_comb begin 
       unique case(current_state)
            RESET:next_state = ZERO;
            ZERO: next_state=(X)? ZERO: ONE; 
            ONE: next_state=(X)? TWO: ONE;
            TWO: next_state=(X)? ZERO: THREE; 
            THREE: next_state=(X)? FOUR: ONE; 
            FOUR: next_state=(X)? FIVE: THREE; 
            FIVE: next_state=(X)? ZERO: FOUND; 
            FOUND: next_state=(X)? ZERO: ONE; 
            default:  next_state = ZERO; 
         endcase
    end
    
    //Output Decoder -- Combinational 
    always_comb begin 
        unique case (current_state) 
            RESET: {Q, Z} = 4'b111_0; 
            ZERO: {Q, Z} = 4'b000_0; 
            ONE: {Q, Z} = 4'b001_0; 
            TWO: {Q, Z} = 4'b010_0; 
            THREE: {Q, Z} = 4'b011_0;
            FOUR: {Q, Z} = 4'b100_0;  
            FIVE: {Q, Z} = 4'b101_0; 
            FOUND: {Q, Z} = 4'b110_1; 
            default: {Q,Z} = 4'b000_0; 
          endcase  
      end
endmodule
