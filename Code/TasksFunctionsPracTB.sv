`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TasksFunctionsPracTB.sv
//////////////////////////////////////////////////////////////////////////////////


module TasksFunctionsPracTB(
    );
        typedef logic log_str [string]; 
        typedef logic [3:0] hex; 
        hex a,b,c; 
        logic clk; 
        logic reset; 
        logic [1:0] incr = 2'b00; 
        logic dyna [] = '{1'b1, 1'b0, 1'b0};
        log_str aarray = '{"ZERO": 1, "ONE": 0, "TWO": 1, "THREE": 0};
        logic queue [$] = {1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0}; 
        logic queue1 [$:10] = '{1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1};
        localparam log2_16 = clogb2(16);
        
        task input_output_test(input hex A = 0, inout hex B = b, output hex C = c); //tested defaults 
            A++;
            B++; 
            C = 0;  
        endtask 
        
        task automatic print_ref (const ref hex A, const ref hex B, const ref hex C); 
            $display("A: %d B: %d C: %d", A, B, C); 
            $display("\n\n"); 
        endtask 
        function  automatic void inc_darray(ref logic dyna[], input logic value = 0);
            $display("darray size: %d before increment", dyna.size); 
            dyna = new[dyna.size+1] (dyna); 
            dyna[dyna.size-1] = value; 
            $display("darray size: %d after increment\n\n", dyna.size); 
        endfunction 
        
         function automatic void printdarray(const ref logic dyn []); 
            foreach(dyn[i]) begin 
                $display("darray[%d]: %d", i, dyn[i]); 
            end  
            $display("\n\n");
        endfunction 
        
        function automatic byte inc_asso_array (ref log_str asso, input logic lvalue, input string svalue); //adds to an associative array 
            $display("assoarray size: %d before increment", asso.size); 
            asso [svalue] = lvalue; 
            inc_asso_array = 1; 
            $display("assoarray size: %d after increment\n\n", asso.size);
        endfunction  
        
        function automatic void print_asso_array (const ref log_str asso); 
            foreach (asso[i]) begin 
                $display ("assoarray[%s]: %d", i, asso[i]);                       
            end 
            $display("\n\n"); 
        endfunction 
        
        function automatic void inc_queue (ref logic queue [$], input logic mode, input logic value); 
            $display ("queue size: %d before increment", queue.size);
            unique if (mode) begin //add to back
                queue.push_back(value); 
            end 
            else begin //add to front 
                queue.push_front(value); 
            end 
            $display ("queue size: %d after increment", queue.size);
        endfunction 
        function automatic printqueue (const ref logic queue [$]);
            foreach(queue[i]) begin 
                 $display("queue[%d]: %d", i, queue[i]); 
            end 
            $display("\n\n");
        endfunction 
        
        function void s_increment_stat_auto (input integer i); // increments a static and automatic variable (integer), static func 
            automatic integer ainfunc = 0; 
            static integer sinfunc = 0;
            i++;
            ainfunc++; 
            sinfunc++; 
            $display ("static increment: input: %d ainfunc:%d sinfunc: %d", i, ainfunc, sinfunc); 
            $display("\n\n");
        endfunction 
            
        function automatic void a_increment_stat_auto(input integer i); // increments a static and automatic variable (integer), auto func
          integer ainfunc = 0; 
          static integer sinfunc = 0; 
           i++;
           ainfunc++; 
           sinfunc++; 
           $display ("auto increment: input: %d ainfunc:%d sinfunc: %d", i, ainfunc, sinfunc); 
           $display("\n\n");
        endfunction  
       
       //define the clogb2 function
       function integer clogb2 (input [31:0] value);
            value = value - 1;
            for (clogb2 = 0; value > 0; clogb2 = clogb2 + 1)
                value = value >> 1;
        endfunction
        
        initial begin 
            //array testing 
            printdarray(dyna); //pass dynamic array 
            printqueue(queue); 
            printqueue(queue1); 
            inc_darray(dyna, 1);
            printdarray(dyna);
            inc_asso_array (aarray, 1'b1, "FOUR");
            print_asso_array(aarray); 
            //Increment test 
            s_increment_stat_auto(incr); 
            s_increment_stat_auto(incr);
            a_increment_stat_auto(incr);
            a_increment_stat_auto(incr);
            //task testing 
            a = 4'hE;
            b = 4'hF; 
            c = 4'h9;
            input_output_test(a,b,c);
            print_ref (a,b,c);
            $display("log2(16) = %d\n\n", log2_16);
            //delete arrays and queues
            $display ("Deleting arrays"); 
            dyna.delete; 
            queue.delete; 
            queue1.delete; 
            aarray.delete; 
            $display ("Finished"); 
            $finish; 
        end 
endmodule
