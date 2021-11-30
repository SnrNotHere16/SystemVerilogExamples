`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2021 07:43:12 PM
// Design Name: 
// Module Name: SequenceDetTB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SequenceDetTB(

    );
    logic clk, reset, X; 
        wire Z; 
        wire [2:0] Q; 
        typedef logic [4:0] bits; 
        const bits a = 5'b11111; 
        const bits b = 5'b01010;
        const bits c = 5'b10111;
        const bits d = 5'b01101;
        const bits e = 5'b10110;    
        typedef struct packed {
            bits a; 
            integer b; 
            logic c;
        } test;
        test test0 = '{5'bZ_ZZZZ, 33, 1'b1};
        test test1 = '{a:5'bX_XXXX, b:16, c:1'b0 };
        test test2 = '{a:5'bX_Z01Z, b:4'hF, c:1'bZ};
        test test3 = '{5'h0F, 4'h0, 1'b1};
        
        task initclock (); 
            clk = 1'b0; 
        endtask
        task reset_task(); 
            repeat (4) @ (posedge clk) reset = 1'b1; 
            repeat (2) @ (posedge clk) reset = 1'b0; 
        endtask 
        task send_seq(bits seq); 
            for (int i = 0; i < 4; i++) begin
                @ (negedge clk)
                    X = seq[i]; 
            end 
        endtask 
        SequenceDetector_01101 DUT (.*); 
        
        initial begin 
            initclock(); 
        end 
        always #5 clk = ~clk; 
        
        initial begin 
            reset_task(); 
            send_seq(a); 
            send_seq(b); 
            send_seq(c); 
            send_seq(d);
            send_seq(e); 
            $finish; 
        end 
        
endmodule
