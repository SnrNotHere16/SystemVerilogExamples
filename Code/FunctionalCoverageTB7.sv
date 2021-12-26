module FunctionalCoverageTB7(); 
	logic clk; 
  	logic rest; 
  	logic reset; 
	class coverPClass; 
		logic [3:0] a,b; 
		logic [2:0] c; 
		covergroup a_c @(posedge clk);  
          a1: coverpoint a {
            bins a1 [] = {[0:10]} with (item%3 == 0); } //divides the bins into only values that fufill the statement
          	c1: coverpoint c; 
          	//aXc: cross a,c; 
        endgroup: a_c
		
      covergroup b_b; 
          b1: coverpoint b iff (!reset);
		
		endgroup: b_b
		
		function new(); 
			$display("coverPClass created\n");
			a_c = new(); 
		endfunction: new 
	endclass: coverPClass 
	
  	initial begin 
    	clk = 1'b0; 
    end 
	always #5 clk = ~clk; 
  	coverPClass cov = new(); 
	initial begin 
      $display("Begin");  
      $stop; 
    end 
  
  

endmodule: FunctionalCoverageTB7 