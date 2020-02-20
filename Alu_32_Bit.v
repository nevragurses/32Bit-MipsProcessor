//module for 32 bit ALU 
module Alu_32_Bit ( carryoutputAlu,outputAluputAlu,Z,a,b,carryIn,AluOp);
	output carryoutputAlu; //carry outputAlu of 32 bit ALU.
	output[31:0] outputAluputAlu; //outputAluput of 32 bit ALU.
	output Z;
	input[31:0] a;
	input [31:0]b;
	input [2:0 ] AluOp;
	input carryIn;
	
	
	wire V,set,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31;
	
	
	Alu_1Bit alu0 (c1,outputAluputAlu[0],a[0],b[0],AluOp[2],set,AluOp);
	Alu_1Bit alu1 (c2,outputAluputAlu[1],a[1],b[1],c1,0,AluOp);
	Alu_1Bit alu2 (c3,outputAluputAlu[2],a[2],b[2],c2,0,AluOp);
	Alu_1Bit alu3 (c4,outputAluputAlu[3],a[3],b[3],c3,0,AluOp);
	Alu_1Bit alu4 (c5,outputAluputAlu[4],a[4],b[4],c4,0,AluOp);
	Alu_1Bit alu5 (c6,outputAluputAlu[5],a[5],b[5],c5,0,AluOp);
	Alu_1Bit alu6 (c7,outputAluputAlu[6],a[6],b[6],c6,0,AluOp);
	Alu_1Bit alu7 (c8,outputAluputAlu[7],a[7],b[7],c7,0,AluOp);
	Alu_1Bit alu8 (c9,outputAluputAlu[8],a[8],b[8],c8,0,AluOp);
	Alu_1Bit alu9 (c10,outputAluputAlu[9],a[9],b[9],c9,0,AluOp);
	Alu_1Bit alu10 (c11,outputAluputAlu[10],a[10],b[10],c10,0,AluOp);
	Alu_1Bit alu11 (c12,outputAluputAlu[11],a[11],b[11],c11,0,AluOp);
	Alu_1Bit alu12 (c13,outputAluputAlu[12],a[12],b[12],c12,0,AluOp);
	Alu_1Bit alu13 (c14,outputAluputAlu[13],a[13],b[13],c13,0,AluOp);
	Alu_1Bit alu14 (c15,outputAluputAlu[14],a[14],b[14],c14,0,AluOp);
	Alu_1Bit alu15 (c16,outputAluputAlu[15],a[15],b[15],c15,0,AluOp);
	Alu_1Bit alu16 (c17,outputAluputAlu[16],a[16],b[16],c16,0,AluOp);
	Alu_1Bit alu17 (c18,outputAluputAlu[17],a[17],b[17],c17,0,AluOp);
	Alu_1Bit alu18 (c19,outputAluputAlu[18],a[18],b[18],c18,0,AluOp);
	Alu_1Bit alu19 (c20,outputAluputAlu[19],a[19],b[19],c19,0,AluOp);
	Alu_1Bit alu20 (c21,outputAluputAlu[20],a[20],b[20],c20,0,AluOp);
	Alu_1Bit alu21 (c22,outputAluputAlu[21],a[21],b[21],c21,0,AluOp);
	Alu_1Bit alu22 (c23,outputAluputAlu[22],a[22],b[22],c22,0,AluOp);
	Alu_1Bit alu23 (c24,outputAluputAlu[23],a[23],b[23],c23,0,AluOp);
	Alu_1Bit alu24 (c25,outputAluputAlu[24],a[24],b[24],c24,0,AluOp);
	Alu_1Bit alu25 (c26,outputAluputAlu[25],a[25],b[25],c25,0,AluOp);
	Alu_1Bit alu26 (c27,outputAluputAlu[26],a[26],b[26],c26,0,AluOp);
	Alu_1Bit alu27 (c28,outputAluputAlu[27],a[27],b[27],c27,0,AluOp);
	Alu_1Bit alu28 (c29,outputAluputAlu[28],a[28],b[28],c28,0,AluOp);
	Alu_1Bit alu29 (c30,outputAluputAlu[29],a[29],b[29],c29,0,AluOp);
	Alu_1Bit alu30 (c31,outputAluputAlu[30],a[30],b[30],c30,0,AluOp);
	MSB_1BitAlu alu31 (carryoutputAlu,outputAluputAlu[31],V,set,a[31],b[31],c31,0,AluOp);
	
	
	wire [15:0] Zfirst;
	wire [7:0] Zsecond;
	wire [3:0] Zthird;
	wire [1:0] Zfourth;
	wire Zlast;
	
	or(Zfirst[0],outputAluputAlu[0],outputAluputAlu[1]); 
	or(Zfirst[1],outputAluputAlu[2],outputAluputAlu[3]); 
	or(Zfirst[2],outputAluputAlu[4],outputAluputAlu[5]); 
	or(Zfirst[3],outputAluputAlu[6],outputAluputAlu[7]); 
	or(Zfirst[4],outputAluputAlu[8],outputAluputAlu[9]); 
	or(Zfirst[5],outputAluputAlu[10],outputAluputAlu[11]); 
	or(Zfirst[6],outputAluputAlu[12],outputAluputAlu[13]); 
	or(Zfirst[7],outputAluputAlu[14],outputAluputAlu[15]);
	or(Zfirst[8],outputAluputAlu[16],outputAluputAlu[17]); 
	or(Zfirst[9],outputAluputAlu[18],outputAluputAlu[19]); 
	or(Zfirst[10],outputAluputAlu[20],outputAluputAlu[21]); 
	or(Zfirst[11],outputAluputAlu[22],outputAluputAlu[23]);
	or(Zfirst[12],outputAluputAlu[24],outputAluputAlu[25]); 
	or(Zfirst[13],outputAluputAlu[26],outputAluputAlu[27]); 
	or(Zfirst[14],outputAluputAlu[28],outputAluputAlu[29]); 
	or(Zfirst[15],outputAluputAlu[30],outputAluputAlu[31]);
  
	or(Zsecond[0],Zfirst[0],Zfirst[1]); 
	or(Zsecond[1],Zfirst[2],Zfirst[3]); 
	or(Zsecond[2],Zfirst[4],Zfirst[5]); 
	or(Zsecond[3],Zfirst[6],Zfirst[7]); 
	or(Zsecond[4],Zfirst[8],Zfirst[9]); 
	or(Zsecond[5],Zfirst[10],Zfirst[11]);
	or(Zsecond[6],Zfirst[12],Zfirst[13]); 
	or(Zsecond[7],Zfirst[14],Zfirst[15]);

	or(Zthird[0],Zsecond[0],Zsecond[1]); 
	or(Zthird[1],Zsecond[2],Zsecond[3]); 
	or(Zthird[2],Zsecond[4],Zsecond[5]); 
	or(Zthird[3],Zsecond[6],Zsecond[7]); 
  
	or(Zfourth[0],Zthird[0],Zthird[1]); 
	or(Zfourth[1],Zthird[2],Zthird[3]);
  
	or(Zlast,Zfourth[0],Zfourth[1]);
	
	not (Z,Zlast);
	

endmodule