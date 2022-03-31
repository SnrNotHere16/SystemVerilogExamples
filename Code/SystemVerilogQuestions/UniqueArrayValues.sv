//Write a system verilog constraint to generate unique values in array without unique keyword ?
module unique_array;
	class data;
		rand bit [7:0] data[];
		constraint data_values { foreach(data[i])
		foreach(data[j])
			if(i != j) data[i] != data [j] ;}
	endclass

	data cl_ob;

	initial
	begin
		cl_ob = new();
		cl_ob.data = new[5];
		assert(cl_ob.randomize());
		foreach(cl_ob.data[i])
		$display(“%d”,cl_ob.data[i]);
	end
endmodule