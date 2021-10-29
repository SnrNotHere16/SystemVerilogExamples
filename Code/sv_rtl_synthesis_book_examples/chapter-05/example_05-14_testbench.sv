//
// Book, "RTL Modeling with SystemVerilog for Simulation and Synthesis"
// by Stuart Sutherland, published by Sutherland HDL, Inc.
//
// Testbench
//
// Copyright 2017, Stuart Sutherland. All rights reserved.
//
// Version 1.0
//
//`begin_keywords "1800-2012"
module test
#(parameter N = 8)
(output logic [N-1:0]         data_in, // N-bit input
 input  logic [N-1:0]         data_out // N-bit output
);
  timeunit 1ns; timeprecision 1ns;

  // generate stimulus
  initial begin
  	$timeformat(-9, 0, "ns", 6);  // nanoseconds, no precision, 6 columns
  	#5 data_in = 8'b00001111;
  	#5 check_results(.expected(8'b11110000));

  	#5 data_in = 8'b11000101;
  	#5 check_results(.expected(8'b00010111));

  	#5 data_in = 8'b10000000;
  	#5 check_results(.expected(8'b01000000));

    #5 $finish;
  end

  // verify results
  task check_results(logic [N-1:0] expected);
    $write("At %t: data_in=%b:  ", $time, data_in);
    $write("EXPECT: data_out = %b, ACTUAL: %b ", reverse_bits(data_in), data_out);
    if (data_out === reverse_bits(data_in)) $display(" OK");
    else                                    $display(" ERROR!");
  endtask

  function [N-1:0] reverse_bits(logic [N-1:0] in);
    logic [N-1:0] temp;
    for (int i=0; i<N; i++) begin
      temp[i] = in[(N-1)-i];
    end
    return temp;
  endfunction

endmodule: test
//`end_keywords

//`begin_keywords "1800-2012"
module top;
  timeunit 1ns; timeprecision 1ns;
  parameter N = 8;
  logic [N-1:0] data_in;
  logic [N-1:0] data_out;

  test         #(.N(N)) test (.*);
  reverse_bits #(.N(N)) dut  (.*);

endmodule: top
//`end_keywords

