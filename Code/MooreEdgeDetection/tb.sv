// Code your testbench here
// or browse Examples

module tb(); 
  logic clk, reset; 
  logic level; 
  logic tick; 
  logic [1:0] state_o; 
  
  FSM FSM_DUT(.*); 
  initial begin 
    clk = 1'b0;  
    forever#10 clk = ~clk; 
  end 
  
  initial begin 
    #45 reset = 1'b1; 
    #20 reset = 1'b0;
    for (int i = 0; i < 25; i++) begin 
      @(negedge clk)  
      	level = $urandom_range(1,0); 
      $display("level = %d  tick = %d state = %d", level, tick, state_o); 
    end 
    $stop; 
  end 
  
endmodule: tb