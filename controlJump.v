module controlJump(jumpOut,fourBitPC,address);
	output [31:0] jumpOut;
	input [3:0] fourBitPC;
	input [25:0] address;
	or(jumpOut[0],1'b0,address[0]);  
	or(jumpOut[1],1'b0,address[1]);
	or(jumpOut[2],1'b0,address[2]);  
	or(jumpOut[3],1'b0,address[3]);
	or(jumpOut[4],1'b0,address[4]);
	or(jumpOut[5],1'b0,address[5]);
	or(jumpOut[6],1'b0,address[6]);
	or(jumpOut[7],1'b0,address[7]);
	or(jumpOut[8],1'b0,address[8]);
	or(jumpOut[9],1'b0,address[9]);
	or(jumpOut[10],1'b0,address[10]);
	or(jumpOut[11],1'b0,address[11]);
	or(jumpOut[12],1'b0,address[12]);
	or(jumpOut[13],1'b0,address[13]);
	or(jumpOut[14],1'b0,address[14]);
	or(jumpOut[15],1'b0,address[15]);
	or(jumpOut[16],1'b0,address[16]);
	or(jumpOut[17],1'b0,address[17]);
	or(jumpOut[18],1'b0,address[18]);
	or(jumpOut[19],1'b0,address[19]);
	or(jumpOut[20],1'b0,address[20]);
	or(jumpOut[21],1'b0,address[21]);
	or(jumpOut[22],1'b0,address[22]);
	or(jumpOut[23],1'b0,address[23]);
	or(jumpOut[24],1'b0,address[24]);
	or(jumpOut[25],1'b0,address[25]);
	
	or(jumpOut[26],1'b0,fourBitPC[0]);
	or(jumpOut[27],1'b0,fourBitPC[1]);
	or(jumpOut[28],1'b0,fourBitPC[2]);
	or(jumpOut[29],1'b0,fourBitPC[3]);
	
	or(jumpOut[30],1'b0,1'b0);
	or(jumpOut[31],1'b0,1'b0);
	
endmodule	
	
	