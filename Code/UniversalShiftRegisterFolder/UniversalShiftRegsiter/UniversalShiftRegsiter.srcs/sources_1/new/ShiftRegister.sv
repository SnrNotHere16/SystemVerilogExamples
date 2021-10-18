`timescale 1ns / 1ps

module ShiftRegister( 
        input wire logic clk, 
        input wire logic reset, 
        input wire logic [1:0] M, 
        input wire logic SI, 
        input wire logic [3:0] D, 
        output var logic [3:0] Q);
        
        always_ff @(posedge clk, posedge reset) begin 
            if (reset) begin 
                Q <= 4'b0; 
            end 
            else begin 
                Q <= D; 
            end 
        
        end 

    



endmodule 