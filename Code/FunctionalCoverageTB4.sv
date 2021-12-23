module FunctionalCoverageTB4();  
	logic [4:0] a,b; 
	logic [3:0] c,d; 
	logic [1:0] e,f; 

	covergroup a_c; 
		a_1: coverpoint a {
          	bins a0 = {0,1,2}; //a0 1 bin
          	bins a1 [3] = {3,4,[5:7]}; //a1 3 bins: {3,4, [5:7]}
          	bins a2 [] = {8,9, 10, [11:14]}; //a2 7 bins 
            bins a3 [2] = {[15:19]}; //a3 2 bins:  (15,16), (17,18,19)
			bins a4 = default; 
		} 
     	
      c_1: coverpoint c {
        bins c0 = {[0:5]};
        bins c1 [3] = {[9:13]};
        bins c2 = default; 
        
      } 
	endgroup: a_c
  
    task a_bins (); 
    	a = 0; 
        a_c_i.sample(); 
      	a = 3; 
        a_c_i.sample();
      repeat (4) begin 
        a++; 
        a_c_i.sample(); 
      end 
      //The default bins - a3[0] - 2, a3[1] - 2
      a = 15; 
      a_c_i.sample(); 
      a = 16; 
      a_c_i.sample(); 
	  a = 17; 
      a_c_i.sample(); 
	  a = 18; 
      a_c_i.sample(); 
      //The default bins - 2 
      a = 25; 
      a_c_i.sample(); 
      a_c_i.sample();
    endtask: a_bins  
  
 	task c_bins(); 
    	c = 0; 
      	a_c_i.sample();
      	c = 9; 
      	a_c_i.sample();
      	c = 10; 
        a_c_i.sample();
      	c = 11; 
        a_c_i.sample();
      	c = 6;
      	a_c_i.sample();
        c = 15; 
        a_c_i.sample();
    endtask: c_bins    
	a_c a_c_i = new(); 
	initial begin 
		$display("Begin"); 
      	a_bins; 
      	c_bins; 
	end 



endmodule: FunctionalCoverageTB4 