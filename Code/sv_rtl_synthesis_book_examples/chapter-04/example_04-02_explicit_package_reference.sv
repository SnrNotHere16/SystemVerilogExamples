//
// Book, "RTL Modeling with SystemVerilog for Simulation and Synthesis"
// by Stuart Sutherland, published by Sutherland HDL, Inc.
//
// Explicit references to package items.
//
// Copyright 2017, Stuart Sutherland. All rights reserved.
//
// Version 1.0
//

//`begin_keywords "1800-2012" // use SystemVerilog-2012 keywords
module alu
(input  definitions_pkg::instruction_t  iw,
 input  logic                           clk,
 output definitions_pkg::word_t         result
);
  always_ff @(posedge clk) begin 
    case (iw.opcode_e)
      definitions_pkg::ADD : result = iw.a + iw.b;
      definitions_pkg::SUB : result = iw.a - iw.b;
      definitions_pkg::MULT: result = definitions_pkg::
                                        multiplier(iw.a, iw.b);
      definitions_pkg::DIV2: result = iw.a << 1;
    endcase 
  end 
endmodule: alu
//`end_keywords
