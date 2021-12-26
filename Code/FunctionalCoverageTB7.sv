module FunctionalCoverageTB7(); 
	logic clk; 
  	logic rest; 
	class coverPClass; 
		logic [3:0] a,b; 
		logic [2:0] c; 
		covergroup a_c @(posedge clk);  
        	a1: coverpoint a; 
          	c1: coverpoint c; 
          	//aXc: cross a,c; 
        endgroup: a_c
		
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