//Testbench for extended module.
`define DELAY 20
module extended_testbench();
reg [15:0] immediate;
reg signal;
wire [31:0] extendedImmediate;
extended tb(immediate,extendedImmediate,signal);

initial begin
	immediate = 16'b1001111111111111; signal= 1'b0;
	#`DELAY;
	immediate = 16'b0111111111111111; signal= 1'b0;
	#`DELAY;
	immediate = 16'b1001111111111111; signal= 1'b1;
	#`DELAY;
	immediate = 16'b0111111111111111; signal= 1'b1;
	#`DELAY;

end
 
 
initial
begin
$monitor("immediate =%16b, extended=%32b signal=%1b ",immediate,extendedImmediate,signal);
end
 
endmodule
