//This module for control unit.It is created as structural.
module controlUnit(MemtoReg,RegWrite,MemRead,MemWrite,extended,luiControl,load,opcode,
							branch,j,jal,jr,AluOp,AluSrc,regDest);
	input [5:0] opcode;
	output MemtoReg,RegWrite,MemRead,MemWrite,extended,luiControl,branch,j,jal,jr,AluSrc,regDest;
	output [1:0] load,AluOp;

	wire lb,lbu,lh,lhu,lui,lw,sb,sh,sw,Rtype,jump,jumpAndLink,jumpReg,beq;
	wire first,second,third,fourth,fifth,sixth;
	
	not(sixth,opcode[5]); not(fifth,opcode[4]); not(fourth,opcode[3]);
	not(third,opcode[2]); not(second,opcode[1]);not(first,opcode[0]);
	
	and(lb,opcode[5],fifth,fourth,third,second,first);
	and(lbu,opcode[5],fifth,fourth,opcode[2],second,first);
	and(lh,opcode[5],fifth,fourth,third,second,opcode[0]);
	and(lhu,opcode[5],fifth,fourth,opcode[2],second,opcode[0]);
	and(lui,sixth,fifth,opcode[3],opcode[2],opcode[1],opcode[0]);
	and(lw,opcode[5],fifth,fourth,third,opcode[1],opcode[0]);
	and(sb,opcode[5],fifth,opcode[3],third,second,first);
	and(sh,opcode[5],fifth,opcode[3],third,second,opcode[0]);
	and(sw,opcode[5],fifth,opcode[3],third,opcode[1],opcode[0]);
	and(Rtype,sixth,fifth,fourth,third,second,first);
	and (jump,sixth,fifth,fourth,third,opcode[1],first);
	and (jumpAndLink,sixth,fifth,fourth,third,opcode[1],opcode[0]);
	and (jumpReg,sixth,fifth,opcode[3],third,second,first);
	and (beq,sixth,fifth,fourth,opcode[2],second,first);

	//All signals in control unit.
	or(MemtoReg,lb,lbu,lh,lhu,lw);
	or(RegWrite,lb,lbu,lh,lhu,lui,lw,Rtype);
	or(MemRead,lb,lbu,lh,lhu,lw);
	or(MemWrite,sb,sh,sw);
	or(extended,lw,lhu,lbu,sw,sh,sb); //for sign or zero extend
	or(luiControl,lui,1'b0); //for lui
	//These are for load operations.
	or(load[1],lh,lhu);
	or(load[0],lw,1'b0);
	
	or(AluSrc,lb,lbu,lh,lhu,lw,sw,sh,sb);
	or(regDest,Rtype);
	or(branch,beq,1'b0);
	or(jal,jumpAndLink,1'b0);
	or(j,jump,1'b0);
	or(jr,jumpReg,1'b0);
	or(AluOp[1],Rtype);
	or(AluOp[0],beq);



endmodule