`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File: AssertionsPracticeTB.sv, immediate and concurrent assertions
//https://www.chipverify.com/systemverilog/systemverilog-assertions
//https://www.systemverilog.io/sva-basics
//https://verificationguide.com/systemverilog/systemverilog-assertions/
//    Step 1: Create boolean expressions
//    Step 2: Create sequence expressions
//    Step 3: Create property
//    Step 4: Assert property
// $stable, $rose, $fell 

// Output:
//Time: 5 ns Started: 5 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:64
//a|b
//a:0 b:0

//Time: 65 ns Started: 65 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:64
//a|b
//a:0 b:0

//Time: 75 ns Started: 75 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:64
//a|b
//a:0 b:0
//a^b
//a:1 b:0
//a^b
//a:1 b:0
//a^b
//a:1 b:0

//Time: 155 ns Started: 155 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:64
//a|b
//a:0 b:0

//Time: 165 ns Started: 165 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:64
//a|b
//a:0 b:0

//Time: 235 ns Started: 225 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:89
//c_d pass: c:1 d:d1

//Time: 245 ns Started: 235 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:89
//c_d pass: c:1 d:d1

//Time: 255 ns Started: 245 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:89
//c_d pass: c:1 d:d1

//Time: 265 ns Started: 255 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:89
//c_d pass: c:1 d:d1

//Time: 305 ns Started: 265 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:89
//c_d failed: c:1 d:d0

//Time: 315 ns Started: 275 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:89
//c_d failed: c:1 d:d0

//Time: 325 ns Started: 285 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:89
//c_d failed: c:1 d:d0

//Time: 335 ns Started: 295 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:89
//c_d failed: c:0 d:d0

//Time: 345 ns Started: 305 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:89
//c_d failed: c:0 d:d0

//Time: 355 ns Started: 315 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:89
//c_d failed: c:0 d:d0

//Time: 365 ns Started: 325 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:89
//c_d failed: c:0 d:d0

//Time: 425 ns Started: 405 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:90
//e_f pass e:1 ea:1 f:1

//Time: 435 ns Started: 415 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:90
//e_f pass e:1 ea:1 f:1

//Time: 445 ns Started: 425 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:90
//e_f pass e:1 ea:1 f:1

//Time: 455 ns Started: 435 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:90
//e_f failed e:1 ea:1 f:0

//Time: 465 ns Started: 445 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:90
//e_f failed e:1 ea:1 f:0

//Time: 475 ns Started: 455 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:90
//e_f failed e:1 ea:1 f:0

//Time: 485 ns Started: 465 ns Scope: /AssertionsPracticeTB File: /home/user/Desktop/VivadoEX/Sample/Sample.srcs/sim_1/new/AssertionsPracticeTB.sv Line:90
//e_f failed e:1 ea:1 f:0
//////////////////////////////////////////////////////////////////////////////////


module AssertionsPracticeTB();
    logic clk, a, b, c, d, e, ea, f, x;
    wire  z; 
    
   initial begin 
        clk = 1'b0;
        a = 1'b0; 
        b = 1'b0; 
   end 
   always #5 clk = ~clk;
   task automatic a_b_im (input logic a1, b1, input logic [3:0] rep);
        repeat (rep) @ (posedge clk) begin 
            assert(!(a^b)) else $display ("a^b\na:%d b:%d", a, b); //immediate assertion 
            a <= a1; 
            b <= b1;
        end 
   endtask: a_b_im
   
   task automatic c_d_a(input logic c1, d1, input logic [2:0] delay); 
        @(posedge clk) c <= c1; 
        repeat (delay-1) @(posedge clk) d <= d1; 
        @(posedge clk) d <= d1; 
   endtask: c_d_a
   
    task automatic e_f_a(input logic e1, f1, input logic [2:0] delay); 
        @(posedge clk)begin  e <= e1; ea <= 1'b1; end  
        repeat (delay-1) @(posedge clk) f <= f1; 
        @(posedge clk) f <= f1; 
   endtask: e_f_a
   assign z = 1'bz;
   initial begin 
    x = 1'b1; 
    //immediate assertions
    a_b_im(1,1,5);
    a_b_im(0, 0, 2); 
    a_b_im(1, 0, 3);
    a_b_im(1, 1, 4);
    a_b_im(0, 0, 2); 
    a_b_im(1, 1, 1); 
    c_d_a(0, 0, 3);
    c_d_a(1, 1, 3);
    c_d_a(1, 0, 6); 
    c_d_a(0, 0, 2);
    e_f_a(0, 0, 3);
    e_f_a(1, 1, 3);
    e_f_a(1, 0, 6); 
    //
    $finish; 
  end 
AB:assert property (@(posedge clk) a | b) else $display ("a|b\na:%d b:%d", a, b); //concurrent property 

property X; 
    x == 1'b1;
endproperty: X

property Z; 
    z == 1'bZ; 
endproperty: Z

property c_d; 
    @(posedge clk) c |-> ##[1:4]d; //implicatin operator (overlapping) 
endproperty: c_d

property e_f; 
//e - antecedent, sref - consequent
    @(posedge clk) e |-> sref;
endproperty: e_f

sequence sref;
    ea ##2 f; 
endsequence: sref 
sequence range_delay;
  ea ## [1:5] f; 
//    ea ## [1:$] f;  //infinite
endsequence: range_delay
XLab:assert property (@(posedge clk) X) else $display("x = %d", x);
//assert property (@(posedge clk) Z) else $display("z = %d", z); 
CD:assert property (c_d) $display ("c_d pass: c:%d d:d%d", c, d); else $display ("c_d failed: c:%d d:d%d", c, d);
EF:assert property (e_f) $display("e_f pass e:%d ea:%d f:%d", e, ea, f); else $display("e_f failed e:%d ea:%d f:%d", e, ea, f);
endmodule


