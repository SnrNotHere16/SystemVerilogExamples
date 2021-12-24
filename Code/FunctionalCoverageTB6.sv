module FunctionalCoverageTB6 (); 
	logic clk; 
	logic [1:0] a,b; 
	logic [2:0] c,d; 
	logic [3:0] e,f; 
	
	covergroup a_c; 
		a1: coverpoint a; 
		c1: coverpoint c; 
		aXc: cross a,c; 
	endgroup: a_c
  
	initial begin 
		clk = 1'b0; 
	end 
	always #5 clk = ~clk; 
	
	a_c a_c_i = new(); 
	initial begin 
      $display("Begin"); 
      $stop; 
    end 

endmodule: FunctionalCoverageTB6