//How to implement always block logic in program block ?
//Use of forever begin end. If it is a complex always block statement like always (@ posedge clk or negedge reset_)
always @(posedge clk or negedge reset_) begin
   if(!reset_) begin
       data <= '0;
   end else begin
       data <= data_next;
   end
end

// Using forever : slightly complex but doable
forever begin
   fork
   begin : reset_logic
       @ (negedge reset_);
       data <= '0;
   end : reset_logic
   begin : clk_logic
       @ (posedge clk);
       if(!reset_)    data <= '0;
       else           data <= data_next;
   end : clk_logic
   join_any
   disable fork
end