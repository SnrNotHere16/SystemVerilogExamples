`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File: SequenceDetectorInterfaceTB.sv
// The following test bench tests for the sequence 010110. 
// The LSB is the right most bit. Right to left. 
//////////////////////////////////////////////////////////////////////////////////


module SequenceDetectorInterfaceTB();
    logic clk, reset, step, X; 
    wire Z; 
    wire [2:0] Q;
    parameter step_on = 1800000;
    parameter step_off = 200001;
    const logic [0:5] seq = 6'b0101_10;
    const logic [5:0] seq_rev = 6'b0101_10; 
    
    SequenceDetectorTop DUT(.*); 
   
    initial begin 
        clk = 1'b0; 
    end 
    always#5 clk = ~clk; 
    task init(); 
        repeat (5) @(posedge clk) reset <= 1'b1; 
        repeat (5) @(posedge clk) begin 
            reset <= 1'b0 ;
            step <= 1'b0; 
            X <= 1'b0; 
        end 
    endtask 
    
    task sendbit(input logic in); 
      @(posedge clk)  begin X <= in; step <= 1'b1; end 
      repeat (step_on) @ (negedge clk) begin 
        X <= in; 
      end 
      repeat (step_off) @ (negedge clk) begin 
        step <= 1'b0; 
      end 
    endtask
    
    task send_sequence(); 
        for (int i = 0; i < 6; i++) begin 
             repeat (step_on) @ (negedge clk) begin 
                step <= 1'b1; 
                X <= seq[i]; 
             end 
             repeat (step_off) @ (negedge clk) begin 
                step <= 1'b0; 
             end 
         end 
    endtask
    
    task send_sequence_rev(); 
        for (int i = 0 ; i < 6; i++) begin 
           repeat (step_on) @ (negedge clk) begin 
                step <= 1'b1; 
                X <= seq_rev[i]; 
             end 
             repeat (step_off) @ (negedge clk) begin 
                step <= 1'b0; 
             end
        end
    
    endtask
    initial begin 
        $display("Begin");
        init(); 
        sendbit(1'b1); 
        send_sequence_rev(); 
        send_sequence(); 
        $display("Finished");  
        $finish;    
    end 
endmodule
