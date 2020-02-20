// test cases for multiplexer module.
`define DELAY 20
module mux_testbench(); 
reg I0,I1,I2,I3,s0,s1;
wire muxOut;

mux muxtb (muxOut,I0,I1,I2,I3,s0,s1);

initial begin
I0 = 1'b1; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; s1 = 1'b0; s0 = 1'b0;
#`DELAY;
I0 = 1'b0; I1 = 1'b1; I2 = 1'b0; I3 = 1'b0; s1 = 1'b0; s0 = 1'b1;
#`DELAY;
I0 = 1'b0; I1 = 1'b0; I2 = 1'b1; I3 = 1'b0; s1 = 1'b1; s0 = 1'b0;
#`DELAY;
I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b1; s1 = 1'b1; s0 = 1'b1;
#`DELAY;


end
 
 
initial
begin
$monitor("I0 =%1b, I1=%1b, I2=%1b, I3=%1b, s1=%1b s0=%1b  muxOut=%1b ",I0, I1, I2, I3, s1 ,s0 ,muxOut);
end
 
endmodule