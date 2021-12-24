module FunctionalCoverageTB5();
	logic clk; 
	logic [3:0] a,b; 
	logic [4:0] c,d; 

	initial begin 
		clk = 1'b0; 
	end 
  covergroup a_c_c @ (posedge clk); 
		a1: coverpoint a {
			bins a0 = {1,2,3};
          	bins a1[4] = {5,[6:9],10}; // a1 4 bins: (5, 6, 7, [8:10])
            bins a2 [2] = {11, [12:15]}; 
		}
		
		c1: coverpoint c {
			bins c0 = {0}; 
			ignore_bins c1 = {1, 2, 3};
			illegal_bins c2 = {4, 5, 6};
		}
	endgroup: a_c_c
  	
  	covergroup b_d_b @(posedge clk); 
      	b1: coverpoint b {
          bins b0 = (0 => 1);
          bins b1 = (0 => 1 => 2);
          bins b2 = (0 =>2),(2 => 1);
          bins b3 [] = (1 => 3), (1 =>4), (1=>5);}
    endgroup: b_d_b

	
  	task a_bins; 
      @(posedge clk) a <= 1; //bins a0 
      @(posedge clk) a <= 5; //bins a1[0]
      @(posedge clk) a <= 6; //bins a1[1]
      @(posedge clk) a <= 7; //bins a1[2]
      @(posedge clk) a <= a+3; //bins a1[3]
      @(posedge clk) a <= a+1; //bins a2[0] 
      @(posedge clk) a <= 12; //bins a2[0] 
      @(posedge clk) a <= 13;//bins a2[1]
      @(posedge clk) a <= 14;//bins a2[1] 
      @(posedge clk) a <= 15;//bins a2[1] 
      @(posedge clk) a <= 14;//bins a2[1]
    endtask: a_bins 
	
	task c_bins; 
      ``@(posedge clk) c <= 1'b0; 
      	@(posedge clk) c <= c+1; 
      	@(posedge clk) c <= c+3; 
      	@(posedge clk) c <= 1'b0;
	endtask: c_bins 
  
  	task b_bins; 
      //bin b0 
      @(posedge clk) b <= 1'b0; 
      @(posedge clk) b <= b+1;
      @(posedge clk) b <= b; 
      //bin b1 
      @(posedge clk) b <= 1'b0; 
      @(posedge clk) b <= b+1;
      @(posedge clk) b <= b+1;
      @(posedge clk) b <= b;
      //bin b2 
      @(posedge clk) b <= 0; 
      @(posedge clk) b <= 2; 
      @(posedge clk) b <= b;
      //@(posedge clk) b <= 1; 
      //@(posedge clk) b <= b; 
      //bin b3 
      @(posedge clk) b <= 1; 
      @(posedge clk) b <= 3; 
      @(posedge clk) b <= 1; 
      @(posedge clk) b <= 4;
      @(posedge clk) b <= 1; 
      @(posedge clk) b <= 5;
      @(posedge clk) b <= b; 
      
    endtask: b_bins 
  
  	always #5 clk = ~clk; 
  
    a_c_c a_c_i = new(); 
	b_d_b b_d_i = new(); 
	initial begin 
		$display("Begin"); 
      	a_bins; 
      	b_bins; 
		c_bins; 
      	$stop; 
	end 
endmodule: FunctionalCoverageTB5