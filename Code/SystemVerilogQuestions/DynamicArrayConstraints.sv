class dynamic_array;
	rand unsigned int abc[];
endclass
/*For dynamic arrays, we can use a foreach constraint to constraint the value 
of each of the element of the array as shown below:*/

constraint c_abc_len {
abc.size() < 10;
foreach (abc[i])
abc[i] < 10;
}