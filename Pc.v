//This module for increase pc by one.
module Pc(program_counter,clk,pcIn);
	output reg [31:0] program_counter;
	input [31:0] pcIn;
	input clk;
	
	always@(posedge clk) begin
		program_counter <= pcIn + 1;  
	end

endmodule