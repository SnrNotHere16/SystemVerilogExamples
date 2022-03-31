module M1(ck, enin, din, enout, dout);
input         ck,enin;
input  [31:0] din    ;
output        enout  ;
output [31:0] dout   ;
clocking sd @(posedge ck);
input  #2ns ein,din    ;
output #3ns enout, dout;
endclocking:sd
 
reg [7:0] sab ;
initial begin
sab = sd.din[7:0];
end
endmodule:M1