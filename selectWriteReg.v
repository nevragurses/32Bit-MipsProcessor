module selectWriteReg (writeReg,outputAlu,memoryOutput,MemtoReg);
	output [31:0] writeReg;
	input [31:0] outputAlu;
	input [31:0] memoryOutput;
	input MemtoReg;
	
	mux2_to_1_32Bit mux (writeReg,outputAlu,memoryOutput,MemtoReg);



endmodule