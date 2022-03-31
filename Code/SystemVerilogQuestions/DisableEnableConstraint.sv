//<object>.constraint_mode(0) :: To disable all constraints
//<object>.<constraint>.constraint_mode(0) :: To selectively disable specific constraints

	class ABC;
		rand int length;
		rand byte SA;
		constraint c_length { length inside [1:64];}
		constraint c_sa {SA inside [1:16];}
	endclass
	ABC abc = new();
	abc.constraint_mode(0) // will turn off all constraints
	abc.c_length.constraint_mode(0) // will turn off only length constraint