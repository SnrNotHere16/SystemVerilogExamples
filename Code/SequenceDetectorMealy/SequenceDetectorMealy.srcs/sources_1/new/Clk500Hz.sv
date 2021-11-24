`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module Clk500Hz(
    input wire logic clk,
    input wire logic reset, 
    output var logic clk_out
    );
    integer i; 
    
   always_ff @(posedge clk, posedge reset) begin 
        if (reset) begin 
            i <= 0; 
            clk_out <= 1'b0; 
        end 
        else begin 
            if (i == 199999)begin 
                clk_out <= 1'b1; 
                i <= 0; 
            end 
            
            else begin 
                clk_out <= 1'b0;
                i++; 
            end 
        end 
   
   end 
endmodule