//This module for load operations. Lw,lb,lbu,lh,lhu operations performs according to control unit signals.
module loadOperations(load,readFromMem,lbSignal,lhSignal);	
	output [31:0 ]load;
	input [31:0] readFromMem;
	input lbSignal,lhSignal;

	wire [31:0] lb,lh;

	//lb or lbu operation.
	or(lb[0],1'b0,readFromMem[0]);
	or(lb[1],1'b0,readFromMem[1]);
	or(lb[2],1'b0,readFromMem[2]);
	or(lb[3],1'b0,readFromMem[3]);
	or(lb[4],1'b0,readFromMem[4]);
	or(lb[5],1'b0,readFromMem[5]);
	or(lb[6],1'b0,readFromMem[6]);
	or(lb[7],1'b0,readFromMem[7]);
	or(lb[8],1'b0,1'b0);
	or(lb[9],1'b0,1'b0);
	or(lb[10],1'b0,1'b0);
	or(lb[11],1'b0,1'b0);
	or(lb[12],1'b0,1'b0);
	or(lb[13],1'b0,1'b0);
	or(lb[14],1'b0,1'b0);
	or(lb[15],1'b0,1'b0);
	or(lb[16],1'b0,1'b0);
	or(lb[17],1'b0,1'b0);
	or(lb[18],1'b0,1'b0);
	or(lb[19],1'b0,1'b0);
	or(lb[20],1'b0,1'b0);
	or(lb[21],1'b0,1'b0);
	or(lb[22],1'b0,1'b0);
	or(lb[23],1'b0,1'b0);
	or(lb[24],1'b0,1'b0);
	or(lb[25],1'b0,1'b0);
	or(lb[26],1'b0,1'b0);
	or(lb[27],1'b0,1'b0);
	or(lb[28],1'b0,1'b0);
	or(lb[29],1'b0,1'b0);
	or(lb[30],1'b0,1'b0);
	or(lb[31],1'b0,1'b0);

	//lh or lhu operation.
	or(lh[0],1'b0,readFromMem[0]);
	or(lh[1],1'b0,readFromMem[1]);
	or(lh[2],1'b0,readFromMem[2]);
	or(lh[3],1'b0,readFromMem[3]);
	or(lh[4],1'b0,readFromMem[4]);
	or(lh[5],1'b0,readFromMem[5]);
	or(lh[6],1'b0,readFromMem[6]);
	or(lh[7],1'b0,readFromMem[7]);
	or(lh[8],1'b0,readFromMem[8]);
	or(lh[9],1'b0,readFromMem[9]);
	or(lh[10],1'b0,readFromMem[10]);
	or(lh[11],1'b0,readFromMem[11]);
	or(lh[12],1'b0,readFromMem[12]);
	or(lh[13],1'b0,readFromMem[13]);
	or(lh[14],1'b0,readFromMem[14]);
	or(lh[15],1'b0,readFromMem[15]);
	or(lh[16],1'b0,1'b0);
	or(lh[17],1'b0,1'b0);
	or(lh[18],1'b0,1'b0);
	or(lh[19],1'b0,1'b0);
	or(lh[20],1'b0,1'b0);
	or(lh[21],1'b0,1'b0);
	or(lh[22],1'b0,1'b0);
	or(lh[23],1'b0,1'b0);
	or(lh[24],1'b0,1'b0);
	or(lh[25],1'b0,1'b0);
	or(lh[26],1'b0,1'b0);
	or(lh[27],1'b0,1'b0);
	or(lh[28],1'b0,1'b0);
	or(lh[29],1'b0,1'b0);
	or(lh[30],1'b0,1'b0);
	or(lh[31],1'b0,1'b0);


	//Selects lb,lh or lw operation according to control unit signals.
	mux  m0 (load[0] ,lb[0],lh[0],readFromMem[0],32'b1,lbSignal,lhSignal );
	mux  m1 (load[1] ,lb[1],lh[1],readFromMem[1],32'b1,lbSignal,lhSignal );
	mux  m2 (load[2] ,lb[2],lh[2],readFromMem[2],32'b1,lbSignal,lhSignal );
	mux  m3 (load[3] ,lb[3],lh[3],readFromMem[3],32'b1,lbSignal,lhSignal );
	mux  m4 (load[4],lb[4],lh[4],readFromMem[4],32'b1 ,lbSignal,lhSignal);
	mux  m5 (load[5] ,lb[5],lh[5],readFromMem[5],32'b1,lbSignal,lhSignal );
	mux  m6 (load[6] ,lb[6],lh[6],readFromMem[6],32'b1,lbSignal,lhSignal );
	mux  m7 (load[7] ,lb[7],lh[7],readFromMem[7],32'b1 ,lbSignal,lhSignal);
	mux  m8 (load[8] ,lb[8],lh[8],readFromMem[8],32'b1,lbSignal,lhSignal );
	mux  m9 (load[9] ,lb[9],lh[9],readFromMem[9],32'b1,lbSignal,lhSignal );
	mux  m10 (load[10] ,lb[10],lh[10],readFromMem[10],32'b1 ,lbSignal,lhSignal);
	mux  m11 (load[11] ,lb[11],lh[11],readFromMem[11] ,32'b1,lbSignal,lhSignal);
	mux  m12 (load[12] ,lb[12],lh[12],readFromMem[12] ,32'b1,lbSignal,lhSignal);
	mux  m13 (load[13] ,lb[13],lh[13],readFromMem[13],32'b1 ,lbSignal,lhSignal);
	mux  m14 (load[14] ,lb[14],lh[14],readFromMem[14],32'b1,lbSignal,lhSignal );
	mux  m15 (load[15] ,lb[15],lh[15],readFromMem[15],32'b1,lbSignal,lhSignal );
	mux  m16 (load[16] ,lb[16],lh[16],readFromMem[16],32'b1 ,lbSignal,lhSignal);
	mux  m17 (load[17] ,lb[17],lh[17],readFromMem[17],32'b1,lbSignal,lhSignal );
	mux  m18 (load[18] ,lb[18],lh[18],readFromMem[18],32'b1,lbSignal,lhSignal );
	mux  m19 (load[19] ,lb[19],lh[19],readFromMem[19],32'b1,lbSignal,lhSignal);
	mux  m20 (load[20] ,lb[20],lh[20],readFromMem[20],32'b1,lbSignal,lhSignal );
	mux  m21 (load[21] ,lb[21],lh[21],readFromMem[21],32'b1,lbSignal,lhSignal );
	mux  m22 (load[22] ,lb[22],lh[22],readFromMem[22],32'b1,lbSignal,lhSignal );
	mux  m23 (load[23] ,lb[23],lh[23],readFromMem[23],32'b1,lbSignal,lhSignal );
	mux  m24 (load[24] ,lb[24],lh[24],readFromMem[24],32'b1,lbSignal,lhSignal );
	mux  m25 (load[25] ,lb[25],lh[25],readFromMem[25],32'b1,lbSignal,lhSignal );
	mux  m26 (load[26] ,lb[26],lh[26],readFromMem[26],32'b1,lbSignal,lhSignal );
	mux  m27 (load[27] ,lb[27],lh[27],readFromMem[27],32'b1,lbSignal,lhSignal );
	mux  m28 (load[28] ,lb[28],lh[28],readFromMem[28],32'b1,lbSignal,lhSignal );
	mux  m29 (load[29] ,lb[29],lh[29],readFromMem[29],32'b1,lbSignal,lhSignal );
	mux  m30 (load[30] ,lb[30],lh[30],readFromMem[30],32'b1 ,lbSignal,lhSignal);
	mux  m31 (load[31] ,lb[31],lh[31],readFromMem[31],32'b1 ,lbSignal,lhSignal);


endmodule