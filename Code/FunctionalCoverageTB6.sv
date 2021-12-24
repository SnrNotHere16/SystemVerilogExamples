`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File: FunctionalCoverageTB6.sv
// output: 
//# Begin
//# ** Note: $stop    : testbench.sv(53)
//#    Time: 25 ns  Iteration: 1  Instance: /FunctionalCoverageTB6
//# Break at testbench.sv line 53
//# Coverage Report by instance with details
//# 
//# =================================================================================
//# === Instance: /FunctionalCoverageTB6
//# === Design Unit: work.FunctionalCoverageTB6
//# =================================================================================
//# 
//# Covergroup Coverage:
//#     Covergroups                      2        na        na    17.98%
//#         Coverpoints/Crosses          8        na        na        na
//#             Covergroup Bins         83        11        72    13.25%
//# ----------------------------------------------------------------------------------------------------------
//# Covergroup                                             Metric       Goal       Bins    Status               
//#                                                                                                          
//# ----------------------------------------------------------------------------------------------------------
//#  TYPE /FunctionalCoverageTB6/a_c                       21.25%        100          -    Uncovered            
//#     covered/total bins:                                     8         56          -                      
//#     missing/total bins:                                    48         56          -                      
//#     % Hit:                                             14.28%        100          -                      
//#     Coverpoint a1                                      25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#     Coverpoint c1                                      25.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          8          -                      
//#         missing/total bins:                                 6          8          -                      
//#         % Hit:                                         25.00%        100          -                      
//#     Coverpoint a                                       25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#     Coverpoint c                                       25.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          8          -                      
//#         missing/total bins:                                 6          8          -                      
//#         % Hit:                                         25.00%        100          -                      
//#     Cross aXc                                           6.25%        100          -    Uncovered            
//#         covered/total bins:                                 2         32          -                      
//#         missing/total bins:                                30         32          -                      
//#         % Hit:                                          6.25%        100          -                      
//#  Covergroup instance \/FunctionalCoverageTB6/a_c_i  
//#                                                        21.25%        100          -    Uncovered            
//#     covered/total bins:                                     8         56          -                      
//#     missing/total bins:                                    48         56          -                      
//#     % Hit:                                             14.28%        100          -                      
//#     Coverpoint a1                                      25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#         bin auto[0]                                         2          1          -    Covered              
//#         bin auto[1]                                         0          1          -    ZERO                 
//#         bin auto[2]                                         0          1          -    ZERO                 
//#         bin auto[3]                                         0          1          -    ZERO                 
//#     Coverpoint c1                                      25.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          8          -                      
//#         missing/total bins:                                 6          8          -                      
//#         % Hit:                                         25.00%        100          -                      
//#         bin auto[0]                                         1          1          -    Covered              
//#         bin auto[1]                                         1          1          -    Covered              
//#         bin auto[2]                                         0          1          -    ZERO                 
//#         bin auto[3]                                         0          1          -    ZERO                 
//#         bin auto[4]                                         0          1          -    ZERO                 
//#         bin auto[5]                                         0          1          -    ZERO                 
//#         bin auto[6]                                         0          1          -    ZERO                 
//#         bin auto[7]                                         0          1          -    ZERO                 
//#     Coverpoint a                                       25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#         bin auto[0]                                         2          1          -    Covered              
//#         bin auto[1]                                         0          1          -    ZERO                 
//#         bin auto[2]                                         0          1          -    ZERO                 
//#         bin auto[3]                                         0          1          -    ZERO                 
//#     Coverpoint c                                       25.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          8          -                      
//#         missing/total bins:                                 6          8          -                      
//#         % Hit:                                         25.00%        100          -                      
//#         bin auto[0]                                         1          1          -    Covered              
//#         bin auto[1]                                         1          1          -    Covered              
//#         bin auto[2]                                         0          1          -    ZERO                 
//#         bin auto[3]                                         0          1          -    ZERO                 
//#         bin auto[4]                                         0          1          -    ZERO                 
//#         bin auto[5]                                         0          1          -    ZERO                 
//#         bin auto[6]                                         0          1          -    ZERO                 
//#         bin auto[7]                                         0          1          -    ZERO                 
//#     Cross aXc                                           6.25%        100          -    Uncovered            
//#         covered/total bins:                                 2         32          -                      
//#         missing/total bins:                                30         32          -                      
//#         % Hit:                                          6.25%        100          -                      
//#         Auto, Default and User Defined Bins:
//#             bin <auto[0],auto[1]>                           1          1          -    Covered              
//#             bin <auto[0],auto[0]>                           1          1          -    Covered              
//#             bin <auto[3],*>                                 0          1          8    ZERO                 
//#             bin <auto[2],*>                                 0          1          8    ZERO                 
//#             bin <auto[1],*>                                 0          1          8    ZERO                 
//#             bin <*,auto[7]>                                 0          1          4    ZERO                 
//#             bin <*,auto[6]>                                 0          1          4    ZERO                 
//#             bin <*,auto[5]>                                 0          1          4    ZERO                 
//#             bin <*,auto[4]>                                 0          1          4    ZERO                 
//#             bin <*,auto[3]>                                 0          1          4    ZERO                 
//#             bin <*,auto[2]>                                 0          1          4    ZERO                 
//#  TYPE /FunctionalCoverageTB6/enumgroup                 14.72%        100          -    Uncovered            
//#     covered/total bins:                                     3         27          -                      
//#     missing/total bins:                                    24         27          -                      
//#     % Hit:                                             11.11%        100          -                      
//#     Coverpoint num1                                    25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#     Coverpoint letter1                                 12.50%        100          -    Uncovered            
//#         covered/total bins:                                 1          8          -                      
//#         missing/total bins:                                 7          8          -                      
//#         % Hit:                                         12.50%        100          -                      
//#     Cross nXl                                           6.66%        100          -    Uncovered            
//#         covered/total bins:                                 1         15          -                      
//#         missing/total bins:                                14         15          -                      
//#         % Hit:                                          6.66%        100          -                      
//#  Covergroup instance \/FunctionalCoverageTB6/ei        14.72%        100          -    Uncovered            
//#     covered/total bins:                                     3         27          -                      
//#     missing/total bins:                                    24         27          -                      
//#     % Hit:                                             11.11%        100          -                      
//#     Coverpoint num1                                    25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#         bin auto[ZERO]                                      1          1          -    Covered              
//#         bin auto[ONE]                                       0          1          -    ZERO                 
//#         bin auto[TWO]                                       0          1          -    ZERO                 
//#         bin auto[THREE]                                     0          1          -    ZERO                 
//#     Coverpoint letter1                                 12.50%        100          -    Uncovered            
//#         covered/total bins:                                 1          8          -                      
//#         missing/total bins:                                 7          8          -                      
//#         % Hit:                                         12.50%        100          -                      
//#         bin auto[A]                                         1          1          -    Covered              
//#         bin auto[B]                                         0          1          -    ZERO                 
//#         bin auto[C]                                         0          1          -    ZERO                 
//#         bin auto[D]                                         0          1          -    ZERO                 
//#         bin auto[E]                                         0          1          -    ZERO                 
//#         bin auto[F]                                         0          1          -    ZERO                 
//#         bin auto[G]                                         0          1          -    ZERO                 
//#         bin auto[H]                                         0          1          -    ZERO                 
//#     Cross nXl                                           6.66%        100          -    Uncovered            
//#         covered/total bins:                                 1         15          -                      
//#         missing/total bins:                                14         15          -                      
//#         % Hit:                                          6.66%        100          -                      
//#         Auto, Default and User Defined Bins:
//#             bin nxl0                                        1          1          -    Covered              
//#             bin <*,*>                                       0          1         32    ZERO                 
//# 
//# COVERGROUP COVERAGE:
//# ----------------------------------------------------------------------------------------------------------
//# Covergroup                                             Metric       Goal       Bins    Status               
//#                                                                                                          
//# ----------------------------------------------------------------------------------------------------------
//#  TYPE /FunctionalCoverageTB6/a_c                       21.25%        100          -    Uncovered            
//#     covered/total bins:                                     8         56          -                      
//#     missing/total bins:                                    48         56          -                      
//#     % Hit:                                             14.28%        100          -                      
//#     Coverpoint a1                                      25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#     Coverpoint c1                                      25.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          8          -                      
//#         missing/total bins:                                 6          8          -                      
//#         % Hit:                                         25.00%        100          -                      
//#     Coverpoint a                                       25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#     Coverpoint c                                       25.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          8          -                      
//#         missing/total bins:                                 6          8          -                      
//#         % Hit:                                         25.00%        100          -                      
//#     Cross aXc                                           6.25%        100          -    Uncovered            
//#         covered/total bins:                                 2         32          -                      
//#         missing/total bins:                                30         32          -                      
//#         % Hit:                                          6.25%        100          -                      
//#  Covergroup instance \/FunctionalCoverageTB6/a_c_i  
//#                                                        21.25%        100          -    Uncovered            
//#     covered/total bins:                                     8         56          -                      
//#     missing/total bins:                                    48         56          -                      
//#     % Hit:                                             14.28%        100          -                      
//#     Coverpoint a1                                      25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#         bin auto[0]                                         2          1          -    Covered              
//#         bin auto[1]                                         0          1          -    ZERO                 
//#         bin auto[2]                                         0          1          -    ZERO                 
//#         bin auto[3]                                         0          1          -    ZERO                 
//#     Coverpoint c1                                      25.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          8          -                      
//#         missing/total bins:                                 6          8          -                      
//#         % Hit:                                         25.00%        100          -                      
//#         bin auto[0]                                         1          1          -    Covered              
//#         bin auto[1]                                         1          1          -    Covered              
//#         bin auto[2]                                         0          1          -    ZERO                 
//#         bin auto[3]                                         0          1          -    ZERO                 
//#         bin auto[4]                                         0          1          -    ZERO                 
//#         bin auto[5]                                         0          1          -    ZERO                 
//#         bin auto[6]                                         0          1          -    ZERO                 
//#         bin auto[7]                                         0          1          -    ZERO                 
//#     Coverpoint a                                       25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#         bin auto[0]                                         2          1          -    Covered              
//#         bin auto[1]                                         0          1          -    ZERO                 
//#         bin auto[2]                                         0          1          -    ZERO                 
//#         bin auto[3]                                         0          1          -    ZERO                 
//#     Coverpoint c                                       25.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          8          -                      
//#         missing/total bins:                                 6          8          -                      
//#         % Hit:                                         25.00%        100          -                      
//#         bin auto[0]                                         1          1          -    Covered              
//#         bin auto[1]                                         1          1          -    Covered              
//#         bin auto[2]                                         0          1          -    ZERO                 
//#         bin auto[3]                                         0          1          -    ZERO                 
//#         bin auto[4]                                         0          1          -    ZERO                 
//#         bin auto[5]                                         0          1          -    ZERO                 
//#         bin auto[6]                                         0          1          -    ZERO                 
//#         bin auto[7]                                         0          1          -    ZERO                 
//#     Cross aXc                                           6.25%        100          -    Uncovered            
//#         covered/total bins:                                 2         32          -                      
//#         missing/total bins:                                30         32          -                      
//#         % Hit:                                          6.25%        100          -                      
//#         Auto, Default and User Defined Bins:
//#             bin <auto[0],auto[1]>                           1          1          -    Covered              
//#             bin <auto[0],auto[0]>                           1          1          -    Covered              
//#             bin <auto[3],*>                                 0          1          8    ZERO                 
//#             bin <auto[2],*>                                 0          1          8    ZERO                 
//#             bin <auto[1],*>                                 0          1          8    ZERO                 
//#             bin <*,auto[7]>                                 0          1          4    ZERO                 
//#             bin <*,auto[6]>                                 0          1          4    ZERO                 
//#             bin <*,auto[5]>                                 0          1          4    ZERO                 
//#             bin <*,auto[4]>                                 0          1          4    ZERO                 
//#             bin <*,auto[3]>                                 0          1          4    ZERO                 
//#             bin <*,auto[2]>                                 0          1          4    ZERO                 
//#  TYPE /FunctionalCoverageTB6/enumgroup                 14.72%        100          -    Uncovered            
//#     covered/total bins:                                     3         27          -                      
//#     missing/total bins:                                    24         27          -                      
//#     % Hit:                                             11.11%        100          -                      
//#     Coverpoint num1                                    25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#     Coverpoint letter1                                 12.50%        100          -    Uncovered            
//#         covered/total bins:                                 1          8          -                      
//#         missing/total bins:                                 7          8          -                      
//#         % Hit:                                         12.50%        100          -                      
//#     Cross nXl                                           6.66%        100          -    Uncovered            
//#         covered/total bins:                                 1         15          -                      
//#         missing/total bins:                                14         15          -                      
//#         % Hit:                                          6.66%        100          -                      
//#  Covergroup instance \/FunctionalCoverageTB6/ei        14.72%        100          -    Uncovered            
//#     covered/total bins:                                     3         27          -                      
//#     missing/total bins:                                    24         27          -                      
//#     % Hit:                                             11.11%        100          -                      
//#     Coverpoint num1                                    25.00%        100          -    Uncovered            
//#         covered/total bins:                                 1          4          -                      
//#         missing/total bins:                                 3          4          -                      
//#         % Hit:                                         25.00%        100          -                      
//#         bin auto[ZERO]                                      1          1          -    Covered              
//#         bin auto[ONE]                                       0          1          -    ZERO                 
//#         bin auto[TWO]                                       0          1          -    ZERO                 
//#         bin auto[THREE]                                     0          1          -    ZERO                 
//#     Coverpoint letter1                                 12.50%        100          -    Uncovered            
//#         covered/total bins:                                 1          8          -                      
//#         missing/total bins:                                 7          8          -                      
//#         % Hit:                                         12.50%        100          -                      
//#         bin auto[A]                                         1          1          -    Covered              
//#         bin auto[B]                                         0          1          -    ZERO                 
//#         bin auto[C]                                         0          1          -    ZERO                 
//#         bin auto[D]                                         0          1          -    ZERO                 
//#         bin auto[E]                                         0          1          -    ZERO                 
//#         bin auto[F]                                         0          1          -    ZERO                 
//#         bin auto[G]                                         0          1          -    ZERO                 
//#         bin auto[H]                                         0          1          -    ZERO                 
//#     Cross nXl                                           6.66%        100          -    Uncovered            
//#         covered/total bins:                                 1         15          -                      
//#         missing/total bins:                                14         15          -                      
//#         % Hit:                                          6.66%        100          -                      
//#         Auto, Default and User Defined Bins:
//#             bin nxl0                                        1          1          -    Covered              
//#             bin <*,*>                                       0          1         32    ZERO                 
//# 
//# TOTAL COVERGROUP COVERAGE: 17.98%  COVERGROUP TYPES: 2
//# 
//# Total Coverage By Instance (filtered view): 17.98%
//////////////////////////////////////////////////////////////////////////////////


module FunctionalCoverageTB6 (); 
	logic clk; 
	logic [1:0] a,b; 
	logic [2:0] c,d; 
	logic [3:0] e,f; 
	typedef enum logic [1:0] {ZERO, ONE, TWO, THREE} num; 
	typedef enum logic [2:0] {A, B, C, D, E, F, G, H} letter; 
	
  	num numi; 
  	letter letteri; 
  	covergroup a_c @(posedge clk); 
		a1: coverpoint a; 
		c1: coverpoint c; 
		aXc: cross a,c; 
	endgroup: a_c
  
  	covergroup enumgroup @(posedge clk); 
    	num1: coverpoint numi; 
      	letter1: coverpoint letteri; 
      	nXl: cross num1, letter1 {
          bins nxl0  = 
			   binsof (num1) intersect {[ZERO:TWO]} &&
			   binsof (letter1) intersect {[A:F]};
		//bins nxl1 = 
			// !binsof(num1) intersect {[TWO:THREE]};
      }
    endgroup: enumgroup
  
	initial begin 
		clk = 1'b0; 
	end 
  
	always #5 clk = ~clk; 
	
	a_c a_c_i = new(); 
	enumgroup ei = new(); 
	initial begin 
      $display("Begin"); 
      @(posedge clk) begin 
       	a <= 0; 
        c <= 0; 
      end       
      @(posedge clk) begin 
       	a <= 0; 
        c <= 1; 
        numi <= ZERO; 
        letteri <= A;
      end 
      @(posedge clk) begin 
       	a <= 0; 
        c <= 0; 
      end 
      $stop; 
    end 

endmodule: FunctionalCoverageTB6
