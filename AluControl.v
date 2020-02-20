module AluControl (outputAluControl,funct,AluOp);

	output [2:0] outputAluControl;
	input [5:0] funct;
	input [1:0] AluOp;
	wire f1,n1,n2,f2;
	or (f1,funct[0],funct[3]);
	and (outputAluControl[0], AluOp[1],f1);
	not (n1,funct[2]);
	not (n2,AluOp[1]);
	or (outputAluControl[1],n1,n2);
	and (f2,AluOp[1],funct[1]);
	or (outputAluControl[2],AluOp[0],f2);

endmodule