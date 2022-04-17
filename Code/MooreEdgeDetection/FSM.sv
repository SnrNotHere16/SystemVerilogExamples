// Code your design here
/*Output
# Loading sv_std.std
# Loading work.tb(fast)
# Loading work.FSM(fast)
# 
# vsim -voptargs=+acc=npr
# run -all
# level = 1  tick = 0 state = X
# level = 0  tick = 0 state = 0
# level = 0  tick = 0 state = 0
# level = 0  tick = 0 state = 0
# level = 0  tick = 0 state = 0
# level = 1  tick = 0 state = 0
# level = 0  tick = 1 state = 1
# level = 0  tick = 0 state = 0
# level = 0  tick = 0 state = 0
# level = 1  tick = 0 state = 0
# level = 0  tick = 1 state = 1
# level = 1  tick = 0 state = 0
# level = 1  tick = 1 state = 1
# level = 0  tick = 0 state = 2
# level = 0  tick = 0 state = 0
# level = 1  tick = 0 state = 0
# level = 0  tick = 1 state = 1
# level = 0  tick = 0 state = 0
# level = 0  tick = 0 state = 0
# level = 1  tick = 0 state = 0
# level = 0  tick = 1 state = 1
# level = 1  tick = 0 state = 0
# level = 0  tick = 1 state = 1
# level = 0  tick = 0 state = 0
# level = 1  tick = 0 state = 0
# ** Note: $stop    : testbench.sv(24)
#    Time: 560 ns  Iteration: 1  Instance: /tb
# Break at testbench.sv line 24
# exit
# End time: 00:14:53 on Apr 17,2022, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
Done
*/
// Code your design here
module FSM(input logic clk, reset,
           input logic level, 
           output logic tick,
           output logic [1:0] state_o
           ); 
 	
  logic p_level; 
  typedef enum logic [1:0] {ZERO, ONE, TWO} state; 
  state current_state, next_state; 
  always_ff @(posedge reset, posedge clk) begin 
    if (reset) begin 
    	current_state <= ZERO; 
      	p_level <= 1'b0; 
    end 
    else begin 
        current_state <= next_state; 
      	p_level <= level; 
    end 
    
  end 
  
  
  always_comb begin 
    case(current_state)
    	ZERO: next_state = (level)? ONE: ZERO; 
      	ONE:next_state = (level)? TWO: ZERO;  
        TWO: next_state = (level)? TWO: ZERO;
        default: next_state = ZERO; 
    endcase
  end 
  
  
  
  always_comb begin 
    case(current_state) 
    	ZERO: tick = 1'b0; 
        ONE: tick = 1'b1; 
        TWO: tick = 1'b0; 
    	default: tick = 1'b0; 
    endcase 
  end
  
  
  assign state_o = current_state; 
  
endmodule: FSM 