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
          	bins a1[4] = {5,[6:9],10};
		}
	endgroup: a_c_c
  	task a_bins; 
      @(posedge clk) a <= 1; //bins a0 
      @(posedge clk) a <= 5; //bins a1[0]
      @(posedge clk) a <= 6; //bins a1[1]
      @(posedge clk) a <= 7; //bins a1[2]
      @(posedge clk) a <= a+3; //bins a1[3]
      @(posedge clk) a <= a; 
    endtask: a_bins 
  	always #5 clk = ~clk; 
  
    a_c_c a_c_i = new(); 
	initial begin 
		$display("Begin"); 
      	a_bins; 
      	$stop; 
	end 
endmodule: FunctionalCoverageTB5