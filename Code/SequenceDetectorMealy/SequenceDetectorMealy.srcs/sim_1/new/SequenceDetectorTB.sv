`timescale 1ns / 1ps


module SequenceDetectorTB();
        logic clk;
        logic reset;
        logic step; 
        logic X; 
        wire Z; 
        wire [2:0] Q;
        const logic [4:0] seq = 5'b010110; 
        parameter step_on = 1800000;
        parameter step_off = 200001;
        task apply_reset();
            repeat (5) @(posedge clk) begin 
                reset <= 1'b1;
                step <= 1'b0; 
                X <= 1'b0; 
            end 
            reset <= 1'b0; 
        endtask 
        task send_full_sequence(); 
//            @ (posedge clk) begin 
//                step <= 1'b1; 
//            end 
//            for (int i = 0; i < 5; i++) begin 
//                repeat (20000) @(posedge clk) begin 
//                    step <= 1'b1; 
//                    X <= 1'b0;                 
//                end 
//            end 
                   repeat (step_on) @(posedge clk) begin 
                    step <= 1'b1; 
                    X <= 1'b0;
                    end  
                   repeat (step_off) @(posedge clk) begin 
                    step <= 1'b0; 
                    X <= seq[0];
                    end  
                    repeat (1800000) @(posedge clk) begin 
                    step <= 1'b1; 
                    X <= seq[0];
                    end  

                    
        endtask 
        
        SequenceDetectorTop DUT(.*); 
        initial begin //initialize clock 
            clk <= 1'b0;  
        end 
        always #5 clk = ~clk; //10ns period 

        initial begin 
            apply_reset();
            send_full_sequence();  
            step <= 1'b0; 
        
          $finish; 
        end  
        
endmodule
