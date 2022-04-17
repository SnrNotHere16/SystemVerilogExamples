// Code your design here
module FSM(input logic clk, reset,
           input logic level, 
           output logic tick,
           output logic [1:0] state_o
           ); 
 		
  typedef enum logic [1:0] {ZERO, ONE, TWO} state; 
  state current_state, next_state; 
  always_ff @(posedge reset, posedge clk) begin 
    if (reset) begin 
    	current_state <= ZERO; 
    end 
    else begin 
        current_state <= next_state; 
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