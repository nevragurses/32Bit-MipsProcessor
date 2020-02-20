
//Testbench for control unit module.
`define DELAY 20
module controlUnit_testbench();
reg [5:0] opcode;
wire MemtoReg,RegWrite,MemRead,MemWrite,extended,luiControl,j,jal,jr,AluSrc,regDest;
wire [1:0] load,AluOp;
controlUnit tb(MemtoReg,RegWrite,MemRead,MemWrite,extended,luiControl,load,opcode,branch,j,jal,jr,AluOp,AluSrc,regDest);

initial begin
	opcode = 6'b100000;
	#`DELAY;
	opcode = 6'b100100; 
	#`DELAY;
	opcode = 6'b100001; 
	#`DELAY;
	opcode = 6'b100101; 
	#`DELAY;
	opcode = 6'b001111; 
	#`DELAY;
	opcode = 6'b100011; 
	#`DELAY;
	opcode = 6'b101000; 
	#`DELAY;
	opcode = 6'b101001; 
	#`DELAY;
	opcode = 6'b101011;
	#`DELAY;
	opcode = 6'b000000;
	#`DELAY;
	opcode = 6'b000010;
	#`DELAY;
	opcode = 6'b000011;
	#`DELAY;
	opcode = 6'b001000;
	#`DELAY;
	opcode = 6'b000100;
	#`DELAY;
	

end
 
 
initial
begin
$monitor("opcode =%6b , memtoReg =%1b , regWrite =%1b , memRead =%1b , memWrite =%1b , extended =%1b , luiControl =%1b , load =%2b, AluOp=%2b, AluSrc=%1b, branch=%1b, j=%1b, jal=%1b, jr=%1b, regDest=%1b",opcode,MemtoReg,RegWrite,MemRead,MemWrite,extended,luiControl,load,AluOp,AluSrc,branch,j,jal,jr,regDest);
end
 
endmodule
