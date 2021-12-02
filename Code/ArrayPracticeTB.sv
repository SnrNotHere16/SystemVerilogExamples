`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File: ArrayPracticeTB
//////////////////////////////////////////////////////////////////////////////////


module ArrayPracticeTB();
    logic clk, reset, add, delete; 
    logic [2:0] size; 
    wire out; 
    
         typedef enum integer {ZERO[2] = -1, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN} number; 
         typedef logic [3:0] hex; 
         logic [4:0] value; 
         logic [2:0] iteration; 
          typedef struct { // unpacked 
          logic [2:0] a; 
          int b; 
          hex c [];  //dynamic array, unpacked 
          int d [integer]; //associative array with key of integer, unpacked 
          int e [string]; // associative array with key of string, unpacked 
         } arrayBlock; 
         

         number numbers;
         arrayBlock arrayBlock1; 
         
         initial begin 
            arrayBlock1.c = new[8];
            arrayBlock1.e = '{"ZERO": 0, "ONE": 1, "TWO": 2, "THREE": 3};
            numbers = number'(0); 
            for (int i = 0; i < 8; i++) begin 
                    arrayBlock1.d [i] = $urandom_range(20,92); //considers max value as '30' and min value as '20; // add to associative array 
                    arrayBlock1.c[i] = $urandom_range(20,92);
                    $display("index: %d\nc: %d d: %d\n", i, arrayBlock1.c[i], arrayBlock1.d[i]);
                   numbers = number'(3); 
            end 
            $display("arrayBlock1.e: %d %d %d %d", arrayBlock1.e["ZERO"], arrayBlock1.e["ONE"], arrayBlock1.e["TWO"], arrayBlock1.e["THREE"]);
            arrayBlock1.c.delete();
            arrayBlock1.d.delete(); 
            arrayBlock1.e.delete();
            $display ("Finish\n"); 
            $finish; 
         end 
         
endmodule

