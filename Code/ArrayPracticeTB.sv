`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File: ArrayPracticeTB
//Output
//index:           0
//c:  8 d:          66

//index:           1
//c:  0 d:          53

//index:           2
//c:  8 d:          89

//index:           3
//c: 14 d:          51

//index:           4
//c:  4 d:          36

//index:           5
//c:  9 d:          75

//index:           6
//c: 10 d:          31

//index:           7
//c:  8 d:          42

//dyn1[          0]:           0

//dyn1[          1]:           1

//dyn1[          2]:           2

//dyn1[          3]:           3

//dyn1[          4]:           4

//dyn1[          5]:           5

//dyn1[          6]:           6

//Task:ArrayPass: arrayBlock1.c[          0]:  8
//Task:ArrayPass: arrayBlock1.c[          1]:  0
//Task:ArrayPass: arrayBlock1.c[          2]:  8
//Task:ArrayPass: arrayBlock1.c[          3]: 14
//Task:ArrayPass: arrayBlock1.c[          4]:  4
//Task:ArrayPass: arrayBlock1.c[          5]:  9
//Task:ArrayPass: arrayBlock1.c[          6]: 10
//Task:ArrayPass: arrayBlock1.c[          7]:  8
//arrayBlock1.e[ONE]:           1 

//arrayBlock1.e[THREE]:           3 

//arrayBlock1.e[TWO]:           2 

//arrayBlock1.e[ZERO]:           0 

//wildCardTest[ZERO]:           0  wildCardTest[TWO]:           2 

//wildCardTest[Add0]:          32  wildCardTest[Add1]:         -43 

//str_queue[          0]: ZERO

//str_queue[          1]: ONE

//str_queue[          2]: TWO

//str_queue[          3]: THREE

//integ_queue[          0] =           1

//integ_queue[          1] =           1

//integ_queue[          2] =           3

//integ_queue[          3] =           9

//integ_queue[          4] =           7

//integ_queue[          5] =          10

//integ_queue[          6] =           7

//integ_queue[          7] =           8

//integ_queue[          8] =           3

//integ_queue[          9] =           6

//integ_queue[         10] =          10

//Popped integ_queue[          0]:           1
//Size of integ_queue[]:          10

//Popped integ_queue[          1]:           1
//Size of integ_queue[]:           9

//Popped integ_queue[          2]:           3
//Size of integ_queue[]:           8

//Popped integ_queue[          3]:           9
//Size of integ_queue[]:           7

//Popped integ_queue[          4]:           7
//Size of integ_queue[]:           6

//Popped integ_queue[          5]:          10
//Size of integ_queue[]:           5

//Popped integ_queue[          6]:           7
//Size of integ_queue[]:           4

//Popped integ_queue[          7]:           8
//Size of integ_queue[]:           3

//Popped integ_queue[          8]:           3
//Size of integ_queue[]:           2

//Popped integ_queue[          9]:           6
//Size of integ_queue[]:           1

//Popped integ_queue[         10]:          10
//Size of integ_queue[]:           0

//Finish
//////////////////////////////////////////////////////////////////////////////////


module ArrayPracticeTB();
    logic clk, reset, add, delete; 
    logic [2:0] size; 
    wire out; 

         typedef enum integer {ZERO[2] = -1, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN} number; 
         typedef logic [3:0] hex; 
         logic [4:0] value; 
         logic [2:0] iteration; 
         integer wildCardTest [*]; // A wildcard associative array
         //Queue Practice 
         string str_queue [$] = {"ZERO", "ONE", "TWO", "THREE"}; 
         integer integ_queue [$:10];  //Max size is 10 (index), max size is 11 
         
         
          typedef struct { // unpacked 
            logic [2:0] a; 
            int b; 
            hex c [];  //dynamic array, unpacked 
            int d [integer]; //associative array with key of integer, unpacked 
            int e [string]; // associative array with key of string, unpacked 
         } arrayBlock; 
         task array_pass(hex pass [8]); //test passing dynamic array as arguement, pass by value 
            foreach (pass[i]) begin 
                $display("Task:ArrayPass: arrayBlock1.c[%d]: %d", i, pass[i]);
            end 
         endtask
         

         integer dyn [] = '{0, 1, 2, 3, 4, 5}; 
         integer dyn1 [] = new[7] (dyn); //dyn1 = [dyn, 0]
         number numbers;
         arrayBlock arrayBlock1; 
         
         initial begin
            wildCardTest = '{"ZERO":0, "ONE":1, "TWO":2, 3:3, -5: 4};  
            arrayBlock1.c = new[8];
            arrayBlock1.e = '{"ZERO": 0, "ONE": 1, "TWO": 2, "THREE": 3};
            numbers = number'(0); 
            for (int i = 0; i < 8; i++) begin 
                    arrayBlock1.d [i] = $urandom_range(20,92); //considers max value as '30' and min value as '20; // add to associative array 
                    arrayBlock1.c[i] = $urandom_range(20,92);
                    $display("index: %d\nc: %d d: %d\n", i, arrayBlock1.c[i], arrayBlock1.d[i]);
                   numbers = number'(3); 
            end 
            dyn1[6] = 6; 
            foreach (dyn1[i]) begin 
                $display("dyn1[%d]: %d\n", i,dyn1[i]);
            end
            array_pass(arrayBlock1.c); 
            foreach(arrayBlock1.e[i]) begin 
                $display("arrayBlock1.e[%s]: %d \n", i, arrayBlock1.e[i]);
            end 
            //Add and print from wild card associative array 
            wildCardTest["Add0"] = 32; 
            wildCardTest["Add1"] = -43; 
            $display("wildCardTest[ZERO]: %d  wildCardTest[TWO]: %d \n", wildCardTest["ZERO"], wildCardTest["TWO"]);
            $display("wildCardTest[Add0]: %d  wildCardTest[Add1]: %d \n", wildCardTest["Add0"], wildCardTest["Add1"]);
            foreach (str_queue[i]) begin 
                $display("str_queue[%d]: %s\n", i, str_queue[i]);
            end 
            
               for (int i = 0; i < 11; i++) begin 
                    integ_queue[i] = $urandom_range(11);
                  $display("integ_queue[%d] = %d\n",i, integ_queue[i] );
              end  
            for (int i = 0; i < 11; i++) begin 
                $display("Popped integ_queue[%d]: %d",i, integ_queue.pop_front());
                 $display("Size of integ_queue[]: %d\n",  integ_queue.size());
            end 

            //Array deletion 
            arrayBlock1.c.delete();
            arrayBlock1.d.delete(); 
            arrayBlock1.e.delete();
            dyn.delete(); 
            dyn1.delete(); 
            wildCardTest.delete(); 
            $display ("Finish\n"); 
            $finish; 
         end 
         
endmodule
