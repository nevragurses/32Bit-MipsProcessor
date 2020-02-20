//This module select lui operation or data comes from loadOperation part according to lui signal.
module luiControl(out,immediate,luiSignal,data);
	input [15:0] immediate;
	input[31:0] data;
	input luiSignal;
	output [31:0] out;
	wire [31:0] lui;

	//performs lui operation.
	or(lui[0],1'b0,1'b0);
	or(lui[1],1'b0,1'b0);
	or(lui[2],1'b0,1'b0);
	or(lui[3],1'b0,1'b0);
	or(lui[4],1'b0,1'b0);
	or(lui[5],1'b0,1'b0);
	or(lui[6],1'b0,1'b0);
	or(lui[7],1'b0,1'b0);
	or(lui[8],1'b0,1'b0);
	or(lui[9],1'b0,1'b0);
	or(lui[10],1'b0,1'b0);
	or(lui[11],1'b0,1'b0);
	or(lui[12],1'b0,1'b0);
	or(lui[13],1'b0,1'b0);
	or(lui[14],1'b0,1'b0);
	or(lui[15],1'b0,1'b0);
	or(lui[16],1'b0,immediate[0]);
	or(lui[17],1'b0,immediate[1]);
	or(lui[18],1'b0,immediate[2]);
	or(lui[19],1'b0,immediate[3]);
	or(lui[20],1'b0,immediate[4]);
	or(lui[21],1'b0,immediate[5]);
	or(lui[22],1'b0,immediate[6]);
	or(lui[23],1'b0,immediate[7]);
	or(lui[24],1'b0,immediate[8]);
	or(lui[25],1'b0,immediate[9]);
	or(lui[26],1'b0,immediate[10]);
	or(lui[27],1'b0,immediate[11]);
	or(lui[28],1'b0,immediate[12]);
	or(lui[29],1'b0,immediate[13]);
	or(lui[30],1'b0,immediate[14]);
	or(lui[31],1'b0,immediate[15]);
	//Select lui operation or data that comes loadOperation part according to control unit lui signal.
	mux2_to_1_32Bit  luiSelect (out ,data,lui,luiSignal );
	

endmodule