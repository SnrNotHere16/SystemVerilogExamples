/*
Given a 32 bit address field as a class member, write a constraint to generate 
a random value such that it always has 10 bits as 1 and no two bits next to 
each other should be 1
*/

class packet;
	rand bit[31:0] addr;
	constraint c_addr {
		$countones(addr) ==10;
		foreach (addr[i])
			if(addr[i] && i>0)
				addr[i] != addr[i-1];
	}
endclass