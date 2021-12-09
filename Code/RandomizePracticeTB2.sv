`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File: RandomizePracticeTB2.sv
//Output
//PreRandomize
//PostRandomize
//randomize  1
// a: 99 b:105 c: 71 d:  0 e: 87 z:  0

//PreRandomize
//PostRandomize
//randomize  2
// a:182 b:109 c:112 d:  0 e: 35 z:  0

//PreRandomize
//PostRandomize
//randomize  3
// a:161 b:103 c:243 d:  0 e: 95 z:  0

//PreRandomize
//PostRandomize
//randomize  4
// a:195 b:109 c:197 d:  0 e:129 z:  0

//PreRandomize
//PostRandomize
//randomize  5
// a:168 b:104 c:176 d:  0 e:102 z:  0

//PreRandomize
//PostRandomize
//randomize  6
// a:215 b:105 c: 27 d:  0 e:226 z:  0
//////////////////////////////////////////////////////////////////////////////////


module RandomizePracticeTB2();
    class random; 
        randc logic [7:0] a; 
        rand logic [7:0] b, c, d, e, z; 
        logic [6:0] r = 0; 
        
        constraint b_con {b > 0; b inside {[1:199]};}
        constraint c_con {b dist {[100:110]:=50};}
        constraint d_con {returnone() -> d == returnzero();} //using implication operator 
        constraint e_con {if(returnzero()) e dist{[0:10]:=1}; }
        constraint z_con {z == returnzero();} //use function to determine constraint 
        
        automatic function bit returnzero(); 
            returnzero = 1'b0; 
        endfunction: returnzero 
        
        automatic function bit returnone(); 
            returnone = 1'b1; 
        endfunction:returnone
        
        automatic function string display(); 
            r++; 
            return $sformatf("randomize%d\n a:%d b:%d c:%d d:%d e:%d z:%d", r, a, b, c, d, e, z);
        endfunction: display 
        
        function void pre_randomize(); 
            $display("PreRandomize");
        endfunction: pre_randomize
        
        function void post_randomize(); 
            $display("PostRandomize");
        endfunction: post_randomize
    endclass: random
    
    function automatic void randPrint(ref random dut, input logic [4:0] iterate);
        for (int i = 0; i < iterate; i++) begin 
            dut.randomize; 
            $display(dut.display, "\n");
        end
    endfunction: randPrint 
    
    random dut = new; 
    initial begin 
        randPrint(dut, 6);
    
    
    end 
endmodule
