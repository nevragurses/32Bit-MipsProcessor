//This module for make sign extend or zero extend operation.
module extended(immediate,extendedImmediate,signal);
   output [31	:0] extendedImmediate;
	input [15:0]  immediate; 
	input signal;
	wire [31:0] zeroExtend;
	wire [31:0] signExtend;
	
	//Makes sign extend.
	or(signExtend[0],1'b0,immediate[0]);
	or(signExtend[1],1'b0,immediate[1]);
	or(signExtend[2],1'b0,immediate[2]);
	or(signExtend[3],1'b0,immediate[3]);
	or(signExtend[4],1'b0,immediate[4]);
	or(signExtend[5],1'b0,immediate[5]);
	or(signExtend[6],1'b0,immediate[6]);
	or(signExtend[7],1'b0,immediate[7]);
	or(signExtend[8],1'b0,immediate[6]);
	or(signExtend[9],1'b0,immediate[9]);
	or(signExtend[10],1'b0,immediate[10]);
	or(signExtend[11],1'b0,immediate[11]);
	or(signExtend[12],1'b0,immediate[12]);
	or(signExtend[13],1'b0,immediate[13]);
	or(signExtend[14],1'b0,immediate[14]);
	or(signExtend[15],1'b0,immediate[15]);
	or(signExtend[16],1'b0,immediate[15]);
	or(signExtend[17],1'b0,immediate[15]);
	or(signExtend[18],1'b0,immediate[15]);
	or(signExtend[19],1'b0,immediate[15]);
	or(signExtend[20],1'b0,immediate[15]);
	or(signExtend[21],1'b0,immediate[15]);
	or(signExtend[22],1'b0,immediate[15]);
	or(signExtend[23],1'b0,immediate[15]);
	or(signExtend[24],1'b0,immediate[15]);
	or(signExtend[25],1'b0,immediate[15]);
	or(signExtend[26],1'b0,immediate[15]);
	or(signExtend[27],1'b0,immediate[15]);
	or(signExtend[28],1'b0,immediate[15]);
	or(signExtend[29],1'b0,immediate[15]);
	or(signExtend[30],1'b0,immediate[15]);
	or(signExtend[31],1'b0,immediate[15]);
	
	
   //Makes zero extend.
	or(zeroExtend[0],1'b0,immediate[0]);
	or(zeroExtend[1],1'b0,immediate[1]);
	or(zeroExtend[2],1'b0,immediate[2]);
	or(zeroExtend[3],1'b0,immediate[3]);
	or(zeroExtend[4],1'b0,immediate[4]);
	or(zeroExtend[5],1'b0,immediate[5]);
	or(zeroExtend[6],1'b0,immediate[6]);
	or(zeroExtend[7],1'b0,immediate[7]);
	or(zeroExtend[8],1'b0,immediate[6]);
	or(zeroExtend[9],1'b0,immediate[9]);
	or(zeroExtend[10],1'b0,immediate[10]);
	or(zeroExtend[11],1'b0,immediate[11]);
	or(zeroExtend[12],1'b0,immediate[12]);
	or(zeroExtend[13],1'b0,immediate[13]);
	or(zeroExtend[14],1'b0,immediate[14]);
	or(zeroExtend[15],1'b0,immediate[15]);
	or(zeroExtend[16],1'b0,1'b0);
	or(zeroExtend[17],1'b0,1'b0);
	or(zeroExtend[18],1'b0,1'b0);
	or(zeroExtend[19],1'b0,1'b0);
	or(zeroExtend[20],1'b0,1'b0);
	or(zeroExtend[21],1'b0,1'b0);
	or(zeroExtend[22],1'b0,1'b0);
	or(zeroExtend[23],1'b0,1'b0);
	or(zeroExtend[24],1'b0,1'b0);
	or(zeroExtend[25],1'b0,1'b0);
	or(zeroExtend[26],1'b0,1'b0);
	or(zeroExtend[27],1'b0,1'b0);
	or(zeroExtend[28],1'b0,1'b0);
	or(zeroExtend[29],1'b0,1'b0);
	or(zeroExtend[30],1'b0,1'b0);
	or(zeroExtend[31],1'b0,1'b0);
	//Selects sign extended data or zero extended data according to control unit signal.
	mux2_to_1_32Bit mux (extendedImmediate ,zeroExtend,signExtend,signal );

endmodule
	 