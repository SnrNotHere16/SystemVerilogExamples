module FunctionalCoverageTB7(); 
	logic clk; 
  	logic rest; 
  	logic reset; 
	class coverPClass; 
	  logic [3:0] a,b; 
      logic [2:0] c, d, e, f; 
		covergroup a_c @(posedge clk);  
          a1: coverpoint a {
            bins a0 [] = {[0:10]} with (item%3 == 0); //divides the bins into only values that fufill the statement, 4 bins
            bins at0 = (3[*3]); // 3=>3=>3, 3 consecutive 3s 
            bins at1 = (4[*3:5]); //( 4=>4=>4 ), ( 4=>4=>4=>4 ), ( 4=>4=>4=>4=>4 ) 3  to 5 consecutive 4s 
            bins at2 = (5 [= 2]);//nonconsecutive 2 5's 
            bins at3 = (4 => 5 => 6), ([7:9],10=>11,12); // 4=>5=>6, or 7=>11, 8=>11, 9=>11, 10=>11, 7=>12, 8=>12, 9=>12, 10=>12.
            bins at4 = (12 => 3 [-> 1]); // 12 => ....3 nonconsecutive 3 
            bins at5 = ( 2 [-> 3:5] );// 3 to 5 nonconsectuive 2s 
          } 
          c1: coverpoint c; 
          	//aXc: cross a,c; 
        endgroup: a_c
		
      covergroup b_e_d; 
        	b1: coverpoint b iff (!reset);
        	dPe: coverpoint d+e; 
		endgroup: b_e_d
		
		function new(); 
			$display("coverPClass created\n");
			a_c = new(); 
            b_e_d = new(); 
		endfunction: new 
	endclass: coverPClass 
	
  	initial begin 
    	clk = 1'b0; 
    end 
	always #5 clk = ~clk; 
  	coverPClass cov = new(); 
	initial begin 
      $display("Begin");  
      repeat (4) @(posedge clk) cov.a <= 3;  
      @ (posedge clk) cov.a <= 5; 
      repeat(3) @ (posedge clk) cov.a <= cov.a+1; 
      repeat (2) @(posedge clk) cov.a <= 5; 

      $stop; 
    end 
  
  

endmodule: FunctionalCoverageTB7 