//This is for processor datapath.
//This module is structural.Always parts in there for only display screen steps.
module mips_32(clock);

	input clock;
	// Program counter
	reg[31:0] PC = 32'b0;

	// Signals
	wire MemtoReg,RegWrite,MemRead,MemWrite,extend,luiControl,branch,j,jal,jr,AluSrc,regDest;
	wire [1:0] load,AluOp;

	// Read the instruction
	wire [31:0 ] instruction;
	read_instruction read (instruction, PC);
	
	//for determine control unit signals according to instruction.
	controlUnit cu(MemtoReg,RegWrite,MemRead,MemWrite,extend,luiControl,load,instruction[31:26],branch,j,jal,jr,AluOp,AluSrc,regDest);
	
	wire [31:0] read_data_1,read_data_2;
	wire [31:0] write_data;
	
	wire [4:0]outputReg;
	selectDestination dest(outputReg,instruction[20:16],instruction[15:11],regDest);
	//reading or writing register memory.
	mips_registers register (read_data_1, read_data_2, write_data,instruction[25:21], instruction[20:16],outputReg, RegWrite, clock );
	
	//for sign or zero extended.
	wire [31:0] extendedImmediate;
	wire [31:0] outSelect;
	
	extended ext(instruction[15:0],extendedImmediate,extend);
	selectAluInputReg selectInputAlu(outSelect,read_data_2,extendedImmediate,AluSrc);
	
	
	wire [31:0] outputAlu;
	wire carryOut,Z;
	wire [2:0] outputAluControl;
	AluControl controlAlu(outputAluControl,instruction[5:0],AluOp);
	//Calling 32 bit Alu.
	Alu_32_Bit alu(carryOut,outputAlu,Z,read_data_1,outSelect,1'b0,outputAluControl);
	
	
	wire [31:0 ]read_data;
	//Reading or writing data memory.
	mips_data_memory datamem(read_data,outputAlu,read_data_2,instruction[31:26],clock,MemWrite,MemRead);
	
	//for lw,lh,lhu,lb,lbu operations.
	wire [31:0] loadResult;
	loadOperations loadcont (loadResult,read_data,load[1],load[0]);	

	wire[31:0] writeReg;
	selectWriteReg selectWriteReg(writeReg,outputAlu,loadResult,MemtoReg);
	//for lui operation or data comes from loadOperation selection.
	luiControl writed(write_data,instruction[15:0],luiControl,writeReg);
	
	wire [31:0]jumpOut;

	controlJump jmpControl(jumpOut,PC[31:28],instruction[25:0]);
	wire andRes;
	and (andRes,Z,branch);
	
	reg [31:0] registers [31:0];
	initial
	begin
		$readmemb("registers.txt", registers);
	end
  //program counter's increasing
	always @(posedge clock) begin
	 if(j==1)begin
		PC= jumpOut;
	 end
    else if(andRes==1)begin
      PC = PC+1+extendedImmediate;
    end
	 else if(jal) begin
      registers[31] = PC+1;
      PC=jumpOut;
      $writememb("registers.txt", registers);
    end
	 else if(jr) begin
		PC=read_data_1;
	 end
    else
      PC = PC+1;
  end

	
	initial begin
		$monitor(" PC: %2d, instruction: %32b \n opcode: %6b, rs: %5b, rt: %5b , rd=%5b,dest=%5b  \n  memtoReg =%1b , regWrite =%1b , memRead =%1b , memWrite =%1b , extended =%1b , luiControl =%1b , load =%2b, AluOp=%2b, AluSrc=%1b, branch=%1b, j=%1b, jal=%1b, jr=%1b, regDest=%1b,clock= %1b \n Register: read_data_1: %32b, read_data_2: %32b, write_data: %32b \n", PC, instruction,instruction[31:26],instruction[25:21],instruction[20:16],instruction[15:11],outputReg,MemtoReg,RegWrite,MemRead,MemWrite,extend,luiControl,load,AluOp,AluSrc,branch,j,jal,jr,regDest, clock, read_data_1, read_data_2, write_data);
	end

endmodule