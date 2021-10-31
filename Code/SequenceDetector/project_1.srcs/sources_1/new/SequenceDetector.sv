`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2021 11:41:41 PM
// Design Name: 
// Module Name: SequenceDetector
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


module SequenceDetector(input wire logic clk, 
                        input wire logic reset, 
                        input wire logic X, 
                        input wire logic M, 
                        output var logic Z, 
                        output var logic [2:0] Q);
    //Enum for Moore states              
    typedef enum logic [2:0] {RESET, Next} moore_states_t; 
    moore_states_t current_state, next_state; 
                    
    //Current State logic -- Sequential   
    always_ff @(posedge clk, posedge reset) begin 
        if (reset) begin 
            current_state <= RESET; 
        end 
        
        else begin 
            current_state <= next_state; 
        end  
    end 
    //Next State Decoder -- Combinational 
    always_comb begin 
    
    
    end 
    
    //Output Decoder -- Combinational 
    always_comb begin 
    
    
    end 
endmodule
