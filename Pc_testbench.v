//Testbench for Pc module.
`define DELAY 20
module Pc_testbench();
reg [31:0] pcIn;
reg clk;

wire [31:0] program_counter;

Pc tb(program_counter,clk,pcIn);

initial begin
	pcIn = 32'b000001; clk = 1'b1;
	#`DELAY;
end
 
 
initial
begin
$monitor("clk =%1b, pcIn=%32b, pcOut=%32b ",clk,pcIn,program_counter);
end
 
endmodule