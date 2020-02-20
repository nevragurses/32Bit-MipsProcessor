//Multiplexer for 32 bit two input.
module mux2_to_1_32Bit  (muxOut ,I0,I1,signal );
   output [31:0] muxOut;
   input [31:0] I0,I1;
	input signal; 
	//Calls 2:1 multiplexer module for each bit.
	mux2_to_1 m0 (muxOut[0] ,I0[0],I1[0],signal );
	mux2_to_1 m1 (muxOut[1] ,I0[1],I1[1],signal );
	mux2_to_1 m2 (muxOut[2] ,I0[2],I1[2],signal );
	mux2_to_1 m3 (muxOut[3] ,I0[3],I1[3],signal );
	mux2_to_1 m4 (muxOut[4],I0[4],I1[4],signal );
	mux2_to_1 m5 (muxOut[5] ,I0[5],I1[5],signal );
	mux2_to_1 m6 (muxOut[6] ,I0[6],I1[6],signal );
	mux2_to_1 m7 (muxOut[7] ,I0[7],I1[7],signal );
	mux2_to_1 m8 (muxOut[8] ,I0[8],I1[8],signal );
	mux2_to_1 m9 (muxOut[9] ,I0[9],I1[9],signal );
	mux2_to_1 m10 (muxOut[10] ,I0[10],I1[10],signal );
	mux2_to_1 m11 (muxOut[11] ,I0[11],I1[11],signal );
	mux2_to_1 m12 (muxOut[12] ,I0[12],I1[12],signal );
	mux2_to_1 m13 (muxOut[13] ,I0[13],I1[13],signal );
	mux2_to_1 m14 (muxOut[14] ,I0[14],I1[14],signal );
	mux2_to_1 m15 (muxOut[15] ,I0[15],I1[15],signal );
	mux2_to_1 m16 (muxOut[16] ,I0[16],I1[16],signal );
	mux2_to_1 m17 (muxOut[17] ,I0[17],I1[17],signal );
	mux2_to_1 m18 (muxOut[18] ,I0[18],I1[18],signal );
	mux2_to_1 m19 (muxOut[19] ,I0[19],I1[19],signal );
	mux2_to_1 m20 (muxOut[20] ,I0[20],I1[20],signal );
	mux2_to_1 m21 (muxOut[21] ,I0[21],I1[21],signal );
	mux2_to_1 m22 (muxOut[22] ,I0[22],I1[22],signal );
	mux2_to_1 m23 (muxOut[23] ,I0[23],I1[23],signal );
	mux2_to_1 m24 (muxOut[24] ,I0[24],I1[24],signal );
	mux2_to_1 m25 (muxOut[25] ,I0[25],I1[25],signal );
	mux2_to_1 m26 (muxOut[26] ,I0[26],I1[26],signal );
	mux2_to_1 m27 (muxOut[27] ,I0[27],I1[27],signal );
	mux2_to_1 m28 (muxOut[28] ,I0[28],I1[28],signal );
	mux2_to_1 m29 (muxOut[29] ,I0[29],I1[29],signal );
	mux2_to_1 m30 (muxOut[30] ,I0[30],I1[30],signal );
	mux2_to_1 m31 (muxOut[31] ,I0[31],I1[31],signal);
	
endmodule	
	