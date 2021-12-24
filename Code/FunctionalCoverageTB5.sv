`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File: FunctionalCoverageTB5.sv
// output: 

//# do run.do
//# Begin
//# ** Error: (vsim-8565) Illegal state bin was hit at value=4. The bin counter for the illegal bin '\/FunctionalCoverageTB5/a_c_i .c1.c2' is 1.
//#    Time: 405 ns  Iteration: 0  Region: /FunctionalCoverageTB5/a_c_c
//# ** Note: $stop    : testbench.sv(104)
//#    Time: 405 ns  Iteration: 1  Instance: /FunctionalCoverageTB5
//# Break at testbench.sv line 104
//# Coverage Report by instance with details
//# 
//# =================================================================================
//# === Instance: /FunctionalCoverageTB5
//# === Design Unit: work.FunctionalCoverageTB5
//# =================================================================================
//# 
//# Covergroup Coverage:
//#     Covergroups                      2        na        na    75.00%
//#         Coverpoints/Crosses          4        na        na        na
//#             Covergroup Bins         17        15         2    88.23%
//# ----------------------------------------------------------------------------------------------------------
//# Covergroup                                             Metric       Goal       Bins    Status               
//#                                                                                                          
//# ----------------------------------------------------------------------------------------------------------
//#  TYPE /FunctionalCoverageTB5/a_c_c                    100.00%        100          -    Covered              
//#     covered/total bins:                                     8          8          -                      
//#     missing/total bins:                                     0          8          -                      
//#     % Hit:                                            100.00%        100          -                      
//#     Coverpoint a1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 7          7          -                      
//#         missing/total bins:                                 0          7          -                      
//#         % Hit:                                        100.00%        100          -                      
//#     Coverpoint c1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 1          1          -                      
//#         missing/total bins:                                 0          1          -                      
//#         % Hit:                                        100.00%        100          -                      
//#  Covergroup instance \/FunctionalCoverageTB5/a_c_i  
//#                                                       100.00%        100          -    Covered              
//#     covered/total bins:                                     8          8          -                      
//#     missing/total bins:                                     0          8          -                      
//#     % Hit:                                            100.00%        100          -                      
//#     Coverpoint a1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 7          7          -                      
//#         missing/total bins:                                 0          7          -                      
//#         % Hit:                                        100.00%        100          -                      
//#         bin a0                                              1          1          -    Covered              
//#         bin a1[0]                                           1          1          -    Covered              
//#         bin a1[1]                                           1          1          -    Covered              
//#         bin a1[2]                                           1          1          -    Covered              
//#         bin a1[3]                                           1          1          -    Covered              
//#         bin a2[0]                                           2          1          -    Covered              
//#         bin a2[1]                                          33          1          -    Covered              
//#     Coverpoint c1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 1          1          -                      
//#         missing/total bins:                                 0          1          -                      
//#         % Hit:                                        100.00%        100          -                      
//#         illegal_bin c2                                      1                     -    Occurred             
//#         ignore_bin c1                                       1                     -    Occurred             
//#         bin c0                                              1          1          -    Covered              
//#  TYPE /FunctionalCoverageTB5/b_d_b                     50.00%        100          -    Uncovered            
//#     covered/total bins:                                     7          9          -                      
//#     missing/total bins:                                     2          9          -                      
//#     % Hit:                                             77.77%        100          -                      
//#     Coverpoint b1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 7          7          -                      
//#         missing/total bins:                                 0          7          -                      
//#         % Hit:                                        100.00%        100          -                      
//#     Coverpoint d1                                       0.00%        100          -    ZERO                 
//#         covered/total bins:                                 0          2          -                      
//#         missing/total bins:                                 2          2          -                      
//#         % Hit:                                          0.00%        100          -                      
//#  Covergroup instance \/FunctionalCoverageTB5/b_d_i  
//#                                                        50.00%        100          -    Uncovered            
//#     covered/total bins:                                     7          9          -                      
//#     missing/total bins:                                     2          9          -                      
//#     % Hit:                                             77.77%        100          -                      
//#     Coverpoint b1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 7          7          -                      
//#         missing/total bins:                                 0          7          -                      
//#         % Hit:                                        100.00%        100          -                      
//#         bin b0                                              2          1          -    Covered              
//#         bin b1                                              1          1          -    Covered              
//#         bin b2                                              2          1          -    Covered              
//#         bin b3[1=>3]                                        1          1          -    Covered              
//#         bin b3[1=>4]                                        1          1          -    Covered              
//#         bin b3[1=>5]                                        1          1          -    Covered              
//#         bin b4                                              4          1          -    Covered              
//#     Coverpoint d1                                       0.00%        100          -    ZERO                 
//#         covered/total bins:                                 0          2          -                      
//#         missing/total bins:                                 2          2          -                      
//#         % Hit:                                          0.00%        100          -                      
//#         bin d0[0=>1]                                        0          1          -    ZERO                 
//#         bin d0[1=>2]                                        0          1          -    ZERO                 
//# 
//# COVERGROUP COVERAGE:
//# ----------------------------------------------------------------------------------------------------------
//# Covergroup                                             Metric       Goal       Bins    Status               
//#                                                                                                          
//# ----------------------------------------------------------------------------------------------------------
//#  TYPE /FunctionalCoverageTB5/a_c_c                    100.00%        100          -    Covered              
//#     covered/total bins:                                     8          8          -                      
//#     missing/total bins:                                     0          8          -                      
//#     % Hit:                                            100.00%        100          -                      
//#     Coverpoint a1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 7          7          -                      
//#         missing/total bins:                                 0          7          -                      
//#         % Hit:                                        100.00%        100          -                      
//#     Coverpoint c1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 1          1          -                      
//#         missing/total bins:                                 0          1          -                      
//#         % Hit:                                        100.00%        100          -                      
//#  Covergroup instance \/FunctionalCoverageTB5/a_c_i  
//#                                                       100.00%        100          -    Covered              
//#     covered/total bins:                                     8          8          -                      
//#     missing/total bins:                                     0          8          -                      
//#     % Hit:                                            100.00%        100          -                      
//#     Coverpoint a1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 7          7          -                      
//#         missing/total bins:                                 0          7          -                      
//#         % Hit:                                        100.00%        100          -                      
//#         bin a0                                              1          1          -    Covered              
//#         bin a1[0]                                           1          1          -    Covered              
//#         bin a1[1]                                           1          1          -    Covered              
//#         bin a1[2]                                           1          1          -    Covered              
//#         bin a1[3]                                           1          1          -    Covered              
//#         bin a2[0]                                           2          1          -    Covered              
//#         bin a2[1]                                          33          1          -    Covered              
//#     Coverpoint c1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 1          1          -                      
//#         missing/total bins:                                 0          1          -                      
//#         % Hit:                                        100.00%        100          -                      
//#         illegal_bin c2                                      1                     -    Occurred             
//#         ignore_bin c1                                       1                     -    Occurred             
//#         bin c0                                              1          1          -    Covered              
//#  TYPE /FunctionalCoverageTB5/b_d_b                     50.00%        100          -    Uncovered            
//#     covered/total bins:                                     7          9          -                      
//#     missing/total bins:                                     2          9          -                      
//#     % Hit:                                             77.77%        100          -                      
//#     Coverpoint b1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 7          7          -                      
//#         missing/total bins:                                 0          7          -                      
//#         % Hit:                                        100.00%        100          -                      
//#     Coverpoint d1                                       0.00%        100          -    ZERO                 
//#         covered/total bins:                                 0          2          -                      
//#         missing/total bins:                                 2          2          -                      
//#         % Hit:                                          0.00%        100          -                      
//#  Covergroup instance \/FunctionalCoverageTB5/b_d_i  
//#                                                        50.00%        100          -    Uncovered            
//#     covered/total bins:                                     7          9          -                      
//#     missing/total bins:                                     2          9          -                      
//#     % Hit:                                             77.77%        100          -                      
//#     Coverpoint b1                                     100.00%        100          -    Covered              
//#         covered/total bins:                                 7          7          -                      
//#         missing/total bins:                                 0          7          -                      
//#         % Hit:                                        100.00%        100          -                      
//#         bin b0                                              2          1          -    Covered              
//#         bin b1                                              1          1          -    Covered              
//#         bin b2                                              2          1          -    Covered              
//#         bin b3[1=>3]                                        1          1          -    Covered              
//#         bin b3[1=>4]                                        1          1          -    Covered              
//#         bin b3[1=>5]                                        1          1          -    Covered              
//#         bin b4                                              4          1          -    Covered              
//#     Coverpoint d1                                       0.00%        100          -    ZERO                 
//#         covered/total bins:                                 0          2          -                      
//#         missing/total bins:                                 2          2          -                      
//#         % Hit:                                          0.00%        100          -                      
//#         bin d0[0=>1]                                        0          1          -    ZERO                 
//#         bin d0[1=>2]                                        0          1          -    ZERO                 
//# 
//# TOTAL COVERGROUP COVERAGE: 75.00%  COVERGROUP TYPES: 2
//# 
//# Total Coverage By Instance (filtered view): 75.00%
//# 
//# 
//////////////////////////////////////////////////////////////////////////////////


module FunctionalCoverageTB5();
	logic clk; 
	logic [3:0] a,b; 
	logic [4:0] c,d; 

	initial begin 
		clk = 1'b0; 
	end 
  covergroup a_c_c @ (posedge clk); 
		a1: coverpoint a {
			bins a0 = {1,2,3};
          	bins a1[4] = {5,[6:9],10}; // a1 4 bins: (5, 6, 7, [8:10])
            bins a2 [2] = {11, [12:15]}; 
		}
		
		c1: coverpoint c {
			bins c0 = {0}; 
			ignore_bins c1 = {1, 2, 3};
			illegal_bins c2 = {4, 5, 6};
		}
	endgroup: a_c_c
  	
  	covergroup b_d_b @(posedge clk); 
      	b1: coverpoint b {
          bins b0 = (0 => 1); //1 bin
          bins b1 = (0 => 1 => 2); // 1 bin 
          bins b2 = (0 =>2),(2 => 1); // 1 bin or 
          bins b3 [] = (1 => 3), (1 =>4), (1=>5); // 3 bins 
          bins b4 = (6,7 => 8,9);//1 bin, 4 combinations 
          }
        d1: coverpoint d {
          bins d0 [] = (0 => 1), (1 => 2);   	 
          }
    endgroup: b_d_b

	
  	task a_bins; 
      @(posedge clk) a <= 1; //bins a0 
      @(posedge clk) a <= 5; //bins a1[0]
      @(posedge clk) a <= 6; //bins a1[1]
      @(posedge clk) a <= 7; //bins a1[2]
      @(posedge clk) a <= a+3; //bins a1[3]
      @(posedge clk) a <= a+1; //bins a2[0] 
      @(posedge clk) a <= 12; //bins a2[0] 
      @(posedge clk) a <= 13;//bins a2[1]
      @(posedge clk) a <= 14;//bins a2[1] 
      @(posedge clk) a <= 15;//bins a2[1] 
      @(posedge clk) a <= 14;//bins a2[1]
    endtask: a_bins 
	
	task c_bins; 
        @(posedge clk) c <= 1'b0; 
      	@(posedge clk) c <= c+1; 
      	@(posedge clk) c <= c+3; 
      	@(posedge clk) c <= 1'b0;
	endtask: c_bins 
  
  	task b_bins; 
      //bin b0 
      @(posedge clk) b <= 1'b0; 
      @(posedge clk) b <= b+1;
      @(posedge clk) b <= b; 
      //bin b1 
      @(posedge clk) b <= 1'b0; 
      @(posedge clk) b <= b+1;
      @(posedge clk) b <= b+1;
      @(posedge clk) b <= b;
      //bin b2 
      @(posedge clk) b <= 0; 
      @(posedge clk) b <= 2; 
      @(posedge clk) b <= b;
      //@(posedge clk) b <= 1; 
      //@(posedge clk) b <= b; 
      //bin b3 
      @(posedge clk) b <= 1; 
      @(posedge clk) b <= 3; 
      @(posedge clk) b <= 1; 
      @(posedge clk) b <= 4;
      @(posedge clk) b <= 1; 
      @(posedge clk) b <= 5;
      @(posedge clk) b <= b; 
      //bins b4 
      @(posedge clk) b <= 6; 
      @(posedge clk) b <= 8;
      @(posedge clk) b <= 6; 
      @(posedge clk) b <= 9; 
      @(posedge clk) b <= 7; 
      @(posedge clk) b <= 8; 
      @(posedge clk) b <= 7; 
      @(posedge clk) b <= 9; 
      @(posedge clk) b <= b; 
      
    endtask: b_bins 
  
  	always #5 clk = ~clk; 
  
    a_c_c a_c_i = new(); 
	b_d_b b_d_i = new(); 
	initial begin 
		$display("Begin"); 
      	a_bins; 
      	b_bins; 
		c_bins; 
      	$stop; 
	end 
endmodule: FunctionalCoverageTB5