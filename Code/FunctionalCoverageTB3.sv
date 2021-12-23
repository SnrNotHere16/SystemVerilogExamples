`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File: FunctionalCoverageTB3.sv
// output: 

//Top level modules:
//	FunctionalCoverageTB3
//End time: 01:57:15 on Dec 23,2021, Elapsed time: 0:00:00
//Errors: 0, Warnings: 0
//# vsim FunctionalCoverageTB3 -batch -do "run.do" -voptargs="+acc=npr" 
//# Start time: 01:57:15 on Dec 23,2021
//# ** Note: (vsim-3812) Design is being optimized...
//# //  Questa Sim-64
//# //  Version 2021.3_1 linux_x86_64 Aug 15 2021
//# //
//# //  Copyright 1991-2021 Mentor Graphics Corporation
//# //  All Rights Reserved.
//# //
//# //  QuestaSim and its associated documentation contain trade
//# //  secrets and commercial or financial information that are the property of
//# //  Mentor Graphics Corporation and are privileged, confidential,
//# //  and exempt from disclosure under the Freedom of Information Act,
//# //  5 U.S.C. Section 552. Furthermore, this information
//# //  is prohibited from disclosure under the Trade Secrets Act,
//# //  18 U.S.C. Section 1905.
//# //
//# Loading sv_std.std
//# Loading work.FunctionalCoverageTB3(fast)
//# 
//# do run.do
//# BEGIN
//# g: 1
//# g: 2
//# g: 3
//# g: 4
//# g: 5
//# g: 6
//# g: 7
//# Coverage Report by instance with details
//# 
//# =================================================================================
//# === Instance: /FunctionalCoverageTB3
//# === Design Unit: work.FunctionalCoverageTB3
//# =================================================================================
//# 
//# Covergroup Coverage:
//#     Covergroups                      1        na        na    83.33%
//#         Coverpoints/Crosses          3        na        na        na
//#             Covergroup Bins         14        12         2    85.71%
//# ----------------------------------------------------------------------------------------------------------
//# Covergroup                                             Metric       Goal       Bins    Status               
//#                                                                                                          
//# ----------------------------------------------------------------------------------------------------------
//#  TYPE /FunctionalCoverageTB3/a_c                       83.33%        100          -    Uncovered            
//#     covered/total bins:                                    12         14          -                      
//#     missing/total bins:                                     2         14          -                      
//#     % Hit:                                             85.71%        100          -                      
//#     Coverpoint a_c                                    100.00%        100          -    Covered              
//#         covered/total bins:                                 1          1          -                      
//#         missing/total bins:                                 0          1          -                      
//#         % Hit:                                        100.00%        100          -                      
//#     Coverpoint c_c                                     50.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          4          -                      
//#         missing/total bins:                                 2          4          -                      
//#         % Hit:                                         50.00%        100          -                      
//#     Coverpoint g_c                                    100.00%        100          -    Covered              
//#         covered/total bins:                                 9          9          -                      
//#         missing/total bins:                                 0          9          -                      
//#         % Hit:                                        100.00%        100          -                      
//#  Covergroup instance \/FunctionalCoverageTB3/a_c_i  
//#                                                        83.33%        100          -    Uncovered            
//#     covered/total bins:                                    12         14          -                      
//#     missing/total bins:                                     2         14          -                      
//#     % Hit:                                             85.71%        100          -                      
//#     Coverpoint a_c                                    100.00%        100          -    Covered              
//#         covered/total bins:                                 1          1          -                      
//#         missing/total bins:                                 0          1          -                      
//#         % Hit:                                        100.00%        100          -                      
//#         bin a0                                             30          1          -    Covered              
//#     Coverpoint c_c                                     50.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          4          -                      
//#         missing/total bins:                                 2          4          -                      
//#         % Hit:                                         50.00%        100          -                      
//#         bin auto[0]                                         1          1          -    Covered              
//#         bin auto[1]                                        29          1          -    Covered              
//#         bin auto[2]                                         0          1          -    ZERO                 
//#         bin auto[3]                                         0          1          -    ZERO                 
//#     Coverpoint g_c                                    100.00%        100          -    Covered              
//#         covered/total bins:                                 9          9          -                      
//#         missing/total bins:                                 0          9          -                      
//#         % Hit:                                        100.00%        100          -                      
//#         bin g0                                              2          1          -    Covered              
//#         bin g1[0]                                           4          1          -    Covered              
//#         bin g1[1]                                           4          1          -    Covered              
//#         bin g1[2]                                           6          1          -    Covered              
//#         bin g2[8]                                           2          1          -    Covered              
//#         bin g2[9]                                           2          1          -    Covered              
//#         bin g2[10]                                          2          1          -    Covered              
//#         bin g2[11]                                          2          1          -    Covered              
//#         bin g2[12]                                          1          1          -    Covered              
//#         default bin g3                                      5                     -    Occurred             
//# 
//# COVERGROUP COVERAGE:
//# ----------------------------------------------------------------------------------------------------------
//# Covergroup                                             Metric       Goal       Bins    Status               
//#                                                                                                          
//# ----------------------------------------------------------------------------------------------------------
//#  TYPE /FunctionalCoverageTB3/a_c                       83.33%        100          -    Uncovered            
//#     covered/total bins:                                    12         14          -                      
//#     missing/total bins:                                     2         14          -                      
//#     % Hit:                                             85.71%        100          -                      
//#     Coverpoint a_c                                    100.00%        100          -    Covered              
//#         covered/total bins:                                 1          1          -                      
//#         missing/total bins:                                 0          1          -                      
//#         % Hit:                                        100.00%        100          -                      
//#     Coverpoint c_c                                     50.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          4          -                      
//#         missing/total bins:                                 2          4          -                      
//#         % Hit:                                         50.00%        100          -                      
//#     Coverpoint g_c                                    100.00%        100          -    Covered              
//#         covered/total bins:                                 9          9          -                      
//#         missing/total bins:                                 0          9          -                      
//#         % Hit:                                        100.00%        100          -                      
//#  Covergroup instance \/FunctionalCoverageTB3/a_c_i  
//#                                                        83.33%        100          -    Uncovered            
//#     covered/total bins:                                    12         14          -                      
//#     missing/total bins:                                     2         14          -                      
//#     % Hit:                                             85.71%        100          -                      
//#     Coverpoint a_c                                    100.00%        100          -    Covered              
//#         covered/total bins:                                 1          1          -                      
//#         missing/total bins:                                 0          1          -                      
//#         % Hit:                                        100.00%        100          -                      
//#         bin a0                                             30          1          -    Covered              
//#     Coverpoint c_c                                     50.00%        100          -    Uncovered            
//#         covered/total bins:                                 2          4          -                      
//#         missing/total bins:                                 2          4          -                      
//#         % Hit:                                         50.00%        100          -                      
//#         bin auto[0]                                         1          1          -    Covered              
//#         bin auto[1]                                        29          1          -    Covered              
//#         bin auto[2]                                         0          1          -    ZERO                 
//#         bin auto[3]                                         0          1          -    ZERO                 
//#     Coverpoint g_c                                    100.00%        100          -    Covered              
//#         covered/total bins:                                 9          9          -                      
//#         missing/total bins:                                 0          9          -                      
//#         % Hit:                                        100.00%        100          -                      
//#         bin g0                                              2          1          -    Covered              
//#         bin g1[0]                                           4          1          -    Covered              
//#         bin g1[1]                                           4          1          -    Covered              
//#         bin g1[2]                                           6          1          -    Covered              
//#         bin g2[8]                                           2          1          -    Covered              
//#         bin g2[9]                                           2          1          -    Covered              
//#         bin g2[10]                                          2          1          -    Covered              
//#         bin g2[11]                                          2          1          -    Covered              
//#         bin g2[12]                                          1          1          -    Covered              
//#         default bin g3                                      5                     -    Occurred             
//# 
//# TOTAL COVERGROUP COVERAGE: 83.33%  COVERGROUP TYPES: 1
//# 
//# Total Coverage By Instance (filtered view): 83.33%
//////////////////////////////////////////////////////////////////////////////////


module FunctionalCoverageTB3(); 
  logic a,b; 
  logic [1:0] c, d; 
  integer e; 
  logic [2:0] f; 
  logic [3:0] g; 
  covergroup a_c;
    a_c: coverpoint a{bins a0 = {0,1};} //makes one bin
    c_c: coverpoint c; //makes four bins 
    g_c: coverpoint g {bins g0 = {0};
                       bins g1 [3] = {[1:7]}; //makes 3 bins (1:2), (3:4), (5:7) 
                       bins g2 [] = {[8:10], 11, 12}; //should make 3 but makes 5 bins
                       bins g3 = default; 
    }
   //e_c: coverpoint e; //makes 64 evenly distributed bins 
  endgroup: a_c
  
  task g_bin_cover_all(); 
      g = 0; // cover g0 bin
      a_c_i.sample();
    repeat(7) begin  //cover g1 bins 
      g++; 
      $display ("g:%d", g);
      a_c_i.sample();
    end 
    repeat (5) begin //cover g2 bins 
      g++; 
      a_c_i.sample(); 
      repeat (3) begin 
        g++; 
        a_c_i.sample(); 
      end 
    end 
  endtask: g_bin_cover_all
  
  a_c a_c_i = new(); 
  initial begin 
    $display("BEGIN");
    a = 1'b0; 
    c = 2'b0; 
    a_c_i.sample(); 
    a = 1'b1; 
    c = 2'b1; 
    a_c_i.sample(); 
    g_bin_cover_all; 
  end
  
  
endmodule 
