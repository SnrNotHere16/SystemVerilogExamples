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
      end 
      @(posedge clk) begin 
       	a <= 0; 
        c <= 0; 
      end 
      $stop; 
    end 

endmodule: FunctionalCoverageTB6
