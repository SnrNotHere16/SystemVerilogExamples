module FunctionalCoverageTB4();  
	logic [3:0] a,b,c,d; 
	logic [1:0] e,f; 

	covergroup a_c; 
		a_1: coverpoint a {
			bins a0 = {0,1,2};
		    bins a1 [3] = {3,4,[5:7]}; 
			bins a2 [] = {8,9, 10, [11:14]};
			bins a3 = default; 
		} 
	
	endgroup: a_c




endmodule: FunctionalCoverageTB4 