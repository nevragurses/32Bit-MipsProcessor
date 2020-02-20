// test cases for mux2_to_1 module.
`define DELAY 20
module mux2_to_1_testbench(); 
reg I0,I1,s0;
wire muxOut;

mux2_to_1 muxtb (muxOut,I0,I1,s0);

initial begin
I0 = 1'b0; I1 = 1'b0; s0 = 1'b0;
#`DELAY;
I0 = 1'b0; I1 = 1'b1;  s0 = 1'b1;
#`DELAY;

end
 
 
initial
begin
$monitor("I0 =%1b, I1=%1b,s0=%1b  muxOut=%1b ",I0, I1 ,s0 ,muxOut);
end
 
endmodule