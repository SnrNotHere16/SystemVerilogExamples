`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File: RandomizePracticeTB
//Output 
//init
// a:  x b:  x c:  x d:  x e:x 
// min: x typ: x max: x
// r:  0
//init:
//dyn.size:           7
//queue.size:          0
//Randomization begin
//Randomizatoin done
//randomize  1
// a:  2 b:  2 c:100 d: 99 e:7
// min: 2 typ: 5 max: 9

//Randomization begin
//Randomizatoin done
//randomize  2
// a:  1 b:  2 c:100 d:173 e:3
// min: 4 typ: 6 max: 7

//Randomization begin
//Randomizatoin done
//randomize  3
// a:  8 b:  2 c:100 d:172 e:0
// min: 0 typ: 8 max:13

//Randomization begin
//Randomizatoin done
//randomize  4
// a:  3 b:  1 c:100 d:178 e:1
// min:11 typ:14 max:15

//Randomization begin
//Randomizatoin done
//randomize  5
// a:  4 b:  2 c:100 d: 17 e:4
// min:10 typ:11 max:14

//Randomization begin
//Randomizatoin done
//randomize  6
// a:  9 b:  2 c:100 d:110 e:2
// min: 3 typ: 9 max:12

//Randomization begin
//Randomizatoin done
//randomize  7
// a:  5 b:  2 c:100 d:253 e:6
// min: 6 typ: 8 max:12

//Randomization begin
//Randomizatoin done
//randomize  8
// a:  6 b:  2 c:100 d:178 e:5
// min: 6 typ:11 max:13

//Randomization begin
//Randomizatoin done
//randomize  9
// a:  1 b:  1 c:100 d:248 e:7
// min:12 typ:13 max:14

//Randomization begin
//Randomizatoin done
//randomize 10
// a:  6 b:  2 c:100 d:101 e:6
// min: 9 typ:12 max:15

//Randomization begin
//Randomizatoin done
//Rand:  1 
//sizes:
//dyn.size:           7
//queue.size:          6
//uarray[          0]: 15
//uarray[          1]: 11
//uarray[          2]: 28
//uarray[          3]: 10
//uarray[          4]: 12
//uarray[          5]: 22
//dyn[          0]:113
//dyn[          1]: 78
//dyn[          2]:191
//dyn[          3]: 72
//dyn[          4]: 98
//dyn[          5]:232
//dyn[          6]: 73
//queue[          0]: 87
//queue[          1]:208
//queue[          2]:206
//queue[          3]: 44
//queue[          4]:140
//queue[          5]:126

//Randomization begin
//Randomizatoin done
//Rand:  2 
//sizes:
//dyn.size:           7
//queue.size:          4
//uarray[          0]: 26
//uarray[          1]: 10
//uarray[          2]: 14
//uarray[          3]: 15
//uarray[          4]: 14
//uarray[          5]: 11
//dyn[          0]: 14
//dyn[          1]:179
//dyn[          2]:242
//dyn[          3]:142
//dyn[          4]:245
//dyn[          5]:231
//dyn[          6]:  5
//queue[          0]: 76
//queue[          1]:140
//queue[          2]: 48
//queue[          3]:130

//Randomization begin
//Randomizatoin done
//Rand:  3 
//sizes:
//dyn.size:           7
//queue.size:          6
//uarray[          0]: 12
//uarray[          1]: 20
//uarray[          2]: 15
//uarray[          3]: 22
//uarray[          4]: 11
//uarray[          5]: 21
//dyn[          0]:244
//dyn[          1]:180
//dyn[          2]:240
//dyn[          3]:165
//dyn[          4]:218
//dyn[          5]:128
//dyn[          6]:236
//queue[          0]: 69
//queue[          1]:108
//queue[          2]: 46
//queue[          3]: 41
//queue[          4]:134
//queue[          5]:108

//Randomization begin
//Randomizatoin done
//Rand:  4 
//sizes:
//dyn.size:           7
//queue.size:          5
//uarray[          0]: 18
//uarray[          1]: 16
//uarray[          2]: 29
//uarray[          3]: 10
//uarray[          4]: 27
//uarray[          5]: 19
//dyn[          0]:255
//dyn[          1]:105
//dyn[          2]:233
//dyn[          3]:149
//dyn[          4]:218
//dyn[          5]: 35
//dyn[          6]: 39
//queue[          0]: 85
//queue[          1]:217
//queue[          2]:185
//queue[          3]:198
//queue[          4]:107

//Randomization begin
//Randomizatoin done
//Rand:  5 
//sizes:
//dyn.size:           7
//queue.size:          5
//uarray[          0]: 12
//uarray[          1]: 10
//uarray[          2]: 28
//uarray[          3]: 28
//uarray[          4]: 16
//uarray[          5]: 15
//dyn[          0]: 93
//dyn[          1]:105
//dyn[          2]: 41
//dyn[          3]: 20
//dyn[          4]:221
//dyn[          5]: 81
//dyn[          6]:166
//queue[          0]: 85
//queue[          1]:217
//queue[          2]:185
//queue[          3]:198
//queue[          4]:107

//r:  1
//a:100 b: 12 c:230 d:150
//r:  2
//a:100 b: 73 c:204 d:150
//r:  3
//a:100 b: 87 c: 14 d:150
//r:  4
//a:  0 b:196 c: 83 d:150
//////////////////////////////////////////////////////////////////////////////////


module RandomizePracticeTB();
     class  random; 
       local rand logic [7:0] a,b,c,d;
       randc logic [2:0] e; 
       local rand logic [7:0] f, g; 
       local rand logic [3:0] min, max, typ;
       logic [8:0] r; //randomizations 
        
        constraint a_con {a <10; } 
        constraint b_con{ b > 0; b <= 2;}
        constraint c_con {c == 100; }
        constraint typ_con {typ > min; typ < max;}
        constraint fg_con {(f inside {7,8,9}); (g inside {[10:100]}); !(g inside{[20:30]} ); } //inside
       // static constraint fg_con_stat {!(f inside {7,8,9});} //shared across all instances of the class
        extern constraint dumby;
        function new();
            this.r = 0; 
            $display("init\n a:%d b:%d c:%d d:%d e:%d \n min:%d typ:%d max:%d\n r:%d", a, b, c, d, e, min, typ, max, r);
        endfunction: new
        function void pre_randomize();
            $display("Randomization begin");
        endfunction: pre_randomize
        
        function void post_randomize(); 
            $display("Randomizatoin done");
        endfunction: post_randomize
        
        automatic function string display(); 
            r++; 
            return $sformatf("randomize%d\n a:%d b:%d c:%d d:%d e:%d\n min:%d typ:%d max:%d", r, a, b, c, d, e, min, typ, max);
        endfunction: display 
    endclass: random
    constraint random::dumby {};
    
    class randomArray;
        local randc logic [5:0] uarray [6]; 
        local rand logic [7:0] dyn []; 
        rand logic [7:0] queue [$:20]; //randomize disabled at some point 
        
        constraint ua_con{foreach(uarray[i]) uarray[i] inside {[10:29]};}
        constraint dyn_con {foreach (dyn[i]) dyn[i] > 2; }
        constraint q_con {foreach (queue[i]) queue[i] > 32; queue.size > 0; queue.size < 10; soft queue.size == 20;} //soft constraint 
        
        function new(); 
            dyn = new[7]; 
            $display("init:\ndyn.size: %d\nqueue.size:%d", dyn.size,queue.size);
        endfunction: new
        function void pre_randomize();
            $display("Randomization begin");
        endfunction: pre_randomize
        
        function void post_randomize(); 
            $display("Randomizatoin done");
        endfunction: post_randomize
        
        automatic function void display();
             static logic [6:0] r = 0;
             r++; 
            $display("Rand:%d \nsizes:\ndyn.size: %d\nqueue.size:%d", r,dyn.size,queue.size);
            foreach(uarray[i]) begin 
                $display("uarray[%d]: %d", i, uarray[i]);
            end 
            foreach (dyn[i]) begin 
                $display("dyn[%d]:%d", i, dyn[i]);
            end 
             foreach (queue[i]) begin 
                $display("queue[%d]:%d", i, queue[i]);
            end 
            $display("");
        endfunction: display
    endclass: randomArray 
    class weightRand;
        rand logic [7:0] a; 
        randc logic [7:0] b, c; 
        rand logic [7:0] d; 
        logic [7:0] r = 0; 
        constraint a_con{a dist {[0:10]:=10, 100:=90}; }
       // constraint b_con {b dist {127:/10};} error: cannot use dist on randc 
        constraint d_con {d dist {[100:121]:/50, 150:=70}; }
        
        automatic function void display();
           r++; 
           $display("r:%d\na:%d b:%d c:%d d:%d", r, a, b, c, d ); 
        endfunction: display  
    endclass: weightRand 
     function automatic void randomize_class(ref random dut, input logic [6:0] iteration); 
        for (int i = 0; i < iteration; i++) begin
            assert(dut.randomize()); 
            $display(dut.display, "\n");
        end 
    endfunction: randomize_class
    
    function automatic void randomizeArrayClass(ref randomArray dut, input logic [6:0] iteration); 
        dut.ua_con.constraint_mode(0); //turn off constraint 
        dut.ua_con.constraint_mode(1);  //turn on constraint 
        for (int i = 0; i < iteration; i++) begin 
                    dut.randomize; 
                    dut.display;
        end        
    endfunction: randomizeArrayClass
    
     function automatic void disRandomizeArrayClass(ref randomArray dut, input logic [6:0] iteration); 
        dut.queue.rand_mode(0); 
        for (int i = 0; i < iteration; i++) begin 
                    dut.randomize; 
                    dut.display;
        end
        dut.queue.rand_mode(1); 
        endfunction: disRandomizeArrayClass
        
     function automatic void weightRandomize(ref weightRand dut, input logic [6:0] iteration);
        for (int i = 0; i < iteration; i++) begin 
                    dut.randomize; 
                    dut.display;
        end
     endfunction: weightRandomize
   random dut = new; 
   randomArray duta= new; 
   weightRand dutw = new; 
    initial begin 
        randomize_class (dut, 10);
        randomizeArrayClass(duta, 4); 
        disRandomizeArrayClass(duta, 1); 
        weightRandomize(dutw, 4);
    end 
endmodule
