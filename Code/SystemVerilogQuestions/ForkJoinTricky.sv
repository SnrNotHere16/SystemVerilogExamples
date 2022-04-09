module fork_test;
	initial begin
		for (int j=0; j<3; j++)
		begin
			fork
				$display(j);
			join_none
		end
	end
endmodule

 
/*
Output 

3
3
3

It outputs 3 because there is only one variable j 
shared by all the threads, and its value is 3 before any of the threads start 
executing. None of the threads spawned by the fork/join_none start executing 
until the thread spawned by the initial block finishes.
*/


module fork_test1;
	initial begin
		for (int j=0; j<3; j++)
		begin
			#1;
			fork
			$display(j);
			join_none

		end
	end
endmodule:fork_test1

/*
if you put delay , thread will see different values of j ..but will miss first 
value .. 0

Output 

1
2
3
*/


//Using AutoMatic 

module fork_test;
	initial begin
		for (int j=0; j<3; j++)
		begin
			fork
				automatic int k=j;
				$display(k);

			join_none

		end
	end
endmodule:fork_test

/*
Output

0
1
2

This works because k, as an automatic variable, is created for each iteration 
of the fork block and initialized with the current value if j. 
Creation and initialization of automatic variables occurs as each 
block is activated and does not wait for execution of the block
*/
