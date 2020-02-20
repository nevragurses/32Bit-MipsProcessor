//This module for reading instruction from instruction memory according to pc address.
module read_instruction(instruction, program_counter);
	input [31:0] program_counter;
	output reg [31:0] instruction;
	
	reg [31:0] instructions [255:0];
	initial begin 
		$readmemb("instructionMem.txt", instructions);
		
	end
	always@(*)begin 
		instruction = instructions[program_counter];
	end	



endmodule