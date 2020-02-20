module selectAluInputReg (outSelect,rt,extended,ALUSrc);
	output [31:0] outSelect;
	input [31:0] extended;
	input [31:0] rt;
	input ALUSrc;
	
	mux2_to_1_32Bit mux (outSelect,rt,extended,ALUSrc );
	
endmodule