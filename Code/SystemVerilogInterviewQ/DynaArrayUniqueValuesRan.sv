/*
How can we use constraints to generate a dynamic array with random but 
unique values ?
*/ 
class TestClass;
	rand bit[3:0] my_array[]; //dynamic array of bit[3:0]
endclass

constraint c_rand_array_uniq {
	my_array.size == 6; //or any size constraint
	unique {my_array}; //unique array values
}

constraint c_rand_array_inc {
	my_array.size == 6 ;// or any size constraint
	foreach (my_array[i])
		if(i >0) my_array[i] > my_array[i-1];
	}
	function post_randomize();
		my_array.shuffle();
	endfunction

