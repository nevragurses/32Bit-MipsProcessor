module selectDestination(outputReg,rt,rd,RegDst);
	output [4:0] outputReg;
   input [4:0] rt,rd;
	input RegDst; 
	//Calls 2:1 multiplexer module for each bit.
	mux2_to_1 m0 (outputReg[0] ,rt[0],rd[0],RegDst );
	mux2_to_1 m1 (outputReg[1] ,rt[1],rd[1],RegDst );
	mux2_to_1 m2 (outputReg[2] ,rt[2],rd[2],RegDst );
	mux2_to_1 m3 (outputReg[3] ,rt[3],rd[3],RegDst );
	mux2_to_1 m4 (outputReg[4],rt[4],rd[4],RegDst );
endmodule	