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
                case(M)
                    2'b00: Q <= Q;
                    2'b01: Q <= D;
                    2'b10: Q <= {1'b0, Q[3], Q[2], Q[1]};
                    2'b11: Q <= {Q[2], Q[1], Q[0], SI};
                endcase 
            end
         end 

endmodule 