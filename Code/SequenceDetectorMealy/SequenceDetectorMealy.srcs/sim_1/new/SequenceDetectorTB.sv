`timescale 1ns / 1ps


module SequenceDetectorTB();
        logic clk;
        logic reset;
        logic X; 
        wire Z; 
        wire [2:0] Q;
        const logic [0:5] seq = 6'b010110; 
        task apply_reset();
            repeat (5) @(posedge clk) begin 
                reset <= 1'b1;
                X <= 1'b0; 
            end 
            repeat (10) @(posedge clk) begin  
                    reset <= 1'b0; 
                    X <= 1'b0;                 
                end 
        endtask 
        task send_full_sequence(); 
            for (int i = 0; i < 6; i++) begin 
                 @(negedge clk) begin  
                    X <= seq[i];                 
                end 
            end
        endtask 
        
        SequenceDetector DUT(.*); 
        initial begin //initialize clock 
            clk <= 1'b0;  
        end 
        always #5 clk = ~clk; //10ns period 

        initial begin 
            apply_reset();
            send_full_sequence();  
        
          $finish; 
        end  
        
endmodule
