`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module OneShot(
       input wire logic d_in, clk_in, reset,
       output var logic d_out);
        
       logic q9, q8, q7, q6, q5, q4, q3, q2, q1, q0; 
       
       always_ff @ (posedge clk_in or posedge reset) 
           if (reset == 1'b1)
             {q9, q8, q7, q6, q5, q4, q3, q2, q1, q0} <= 10'b0;
           else begin 
             // shift in the new sample that's on the D_in input 
             q9 <= q8; q8 <= q7; q7 <= q6; q6 <= q5; q5 <= q4; 
             q4 <= q3; q3 <= q2; q2 <= q1; q1 <= q0; q0 <= d_in; 
           end 
       assign d_out = !q9 & q8 & q7 & q6 & q5 &
                       q4 & q3 &q2 &q1 &q0; 
endmodule
