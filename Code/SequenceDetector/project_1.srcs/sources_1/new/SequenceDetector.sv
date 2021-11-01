`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module SequenceDetector(input wire logic clk, 
                        input wire logic reset, 
                        input wire logic X, 
                        output var logic Z, 
                        output var logic [2:0] Q);
    //Enum for Moore states              
    typedef enum logic [2:0] {RESET, ZERO, ONE, TWO, 
                              THREE, FOUR, FIVE, FOUND } moore_states_t; 
    moore_states_t current_state, next_state; 
                    
    //Current State logic -- Sequential   
    always_ff @(posedge clk, posedge reset) begin 
        if (reset) begin 
            current_state <= RESET; 
            Z <= 1'b0;
        end 
        
        else begin 
          //  current_state <= next_state; 
            Z <= 1'b1; 
           // Q <= current_state; 
        end  
    end 
    //Next State Decoder -- Combinational 
//    always_comb begin 
//        unique case(current_state)
//            RESET: next_state = ZERO;
//            ZERO: if(X) next_state = ZERO; 
//                  else next_state = ONE; 
//            ONE: if(X) next_state = TWO; 
//                 else next_state = ONE; 
//            TWO: if (X) next_state = ZERO; 
//                 else next_state = THREE;
//            THREE: if(X) next_state = FOUR; 
//                   else next_state = ONE; 
//            FOUR: if (X) next_state = FIVE; 
//                  else next_state = THREE; 
//            FIVE: if (X) next_state = ZERO; 
//                  else next_state = FOUND; 
//            FOUND: if (X) next_state = ZERO; 
//                   else next_state = ONE; 
//            default:  next_state = ZERO; 
//            endcase
//    end 
    
//    //Output Decoder -- Combinational 
//    always_comb begin 
//        unique case (current_state) 
//            RESET: {Q, Z} = 4'b111_0; 
//            ZERO: {Q, Z} = 4'b000_0; 
//            ONE: {Q, Z} = 4'b001_0; 
//            TWO: {Q, Z} = 4'b010_0; 
//            THREE: {Q, Z} = 4'b011_0;
//            FOUR: {Q, Z} = 4'b100_0;  
//            FIVE: {Q, Z} = 4'b101_0; 
//            FOUND: {Q, Z} = 4'b110_1; 
//            default: {Q,Z} = 4'b000_0; 
//            endcase  
//    end 
//    always_comb begin 
//        unique case(current_state)
//            RESET: begin
//                        {Q, Z} = 4'b111_0;
//                        next_state = ZERO;
//                   end 
//            ZERO:begin 
//                     {Q, Z} = 4'b000_0;
//                     if(X) next_state = ZERO; 
//                     else next_state = ONE; 
//                  end 
//            ONE: begin
//                    {Q, Z} = 4'b001_0; 
//                    if(X) next_state = TWO; 
//                    else next_state = ONE; 
//                 end
//            TWO: begin 
//                      {Q, Z} = 4'b010_0;
//                      if (X) next_state = ZERO; 
//                      else next_state = THREE;
//                 end
//            THREE: begin
//                        {Q, Z} = 4'b011_0;
//                        if(X) next_state = FOUR; 
//                        else next_state = ONE; 
//                    end
//            FOUR: begin
//                       {Q, Z} = 4'b100_0;
//                       if (X) next_state = FIVE; 
//                       else next_state = THREE; 
//                  end
//            FIVE: begin
//                       {Q, Z} = 4'b101_0;
//                       if (X) next_state = ZERO; 
//                       else next_state = FOUND; 
//                  end
//            FOUND: begin
//                        {Q, Z} = 4'b110_1; 
//                        if (X) next_state = ZERO; 
//                        else next_state = ONE; 
//                   end 
//            default:  begin 
//                            {Q, Z} = 4'b000_0;
//                            next_state = ZERO; 
//                      end
//            endcase
//    end 
//    always_comb begin 
//        case(current_state)
//            RESET: next_state = ZERO;
//            ZERO: next_state=(X)? ZERO: ONE; 
//            ONE: next_state=(X)? TWO: ONE;
//            TWO: next_state=(X)? ZERO: THREE; 
//            THREE: next_state=(X)? FOUR: ONE; 
//            FOUR: next_state=(X)? FIVE: THREE; 
//            FIVE: next_state=(X)? ZERO: FOUND; 
//            FOUND: next_state=(X)? ZERO: ONE; 
//            default: next_state = ZERO; 
//         endcase
//    end 
//    assign Z = current_state == FOUND;
//    assign Q = current_state; 
//     always_comb begin 
//        case(current_state)
//            RESET:begin {Q, Z} = 4'b111_0;
//                         next_state = ZERO;
//                  end 
//            ZERO: next_state=(X)? ZERO: ONE; 
//            ONE: next_state=(X)? TWO: ONE;
//            TWO: next_state=(X)? ZERO: THREE; 
//            THREE: next_state=(X)? FOUR: ONE; 
//            FOUR: next_state=(X)? FIVE: THREE; 
//            FIVE: next_state=(X)? ZERO: FOUND; 
//            FOUND: next_state=(X)? ZERO: ONE; 
//            default:  next_state = ZERO; 
//         endcase
//    end
endmodule
