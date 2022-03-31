//How do you implement randc function using rand in system verilog ?
/*
Program :

Understand the difference between randc and rand function

rand : it is random number , it can be repeated.

randc : it is random number with no repetition for a cycle. it may repeat once it complete one cycle.
*/

module randc_function;
class rand_clas;
rand bit [1:0] myvar;
bit [1:0] list[$];
constraint cycle { unique {myvar,list};}

function void pre_randomize;
if (list.size() == 4) list = {};
endfunction

function void post_randomize;
list.push_back(myvar);
endfunction

endclass:rand_clas

initial
begin
int x;
rand_clas rand_class = new();
for (int i=0;i<=20;i++) begin
if(rand_class.randomize());
$display(“sucsessfull : Var = %0d “,rand_class.myvar);

end
end

endmodule:randc_function

/*
sucsessfull : Var = 0
sucsessfull : Var = 2
sucsessfull : Var = 3
sucsessfull : Var = 1
sucsessfull : Var = 3
sucsessfull : Var = 2
sucsessfull : Var = 0
sucsessfull : Var = 1
sucsessfull : Var = 2
sucsessfull : Var = 0
sucsessfull : Var = 1
sucsessfull : Var = 3
sucsessfull : Var = 2
sucsessfull : Var = 3
sucsessfull : Var = 0
sucsessfull : Var = 1
sucsessfull : Var = 0
sucsessfull : Var = 1
sucsessfull : Var = 3
sucsessfull : Var = 2
sucsessfull : Var = 1
*/ 