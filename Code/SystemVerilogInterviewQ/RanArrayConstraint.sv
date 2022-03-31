/*
Write constraints to create a random array of integers such that array size is 
between 10 and 20 and the values of the array are in descending order?
*/	
	class array_abc;
		rand unsigned int myarray[];
	endclass
	constraint c_abc_val {
		myarray.size inside { [10:20] };
		foreach (myarray[i])
		if (i>0) myarray[i] < myarray[i-1];
	}