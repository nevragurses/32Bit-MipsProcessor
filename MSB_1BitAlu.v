//module for most significant 1 bit ALU.
module MSB_1BitAlu(carryOut,outputAlu,V,set,a,b,carryIn,less,AluOp);
    output carryOut,outputAlu;
	 output V,set;
	 input [2:0]  AluOp; //AluOp code 
    input a,b ,carryIn,less;
    wire x1,x2,x3,select,m0,m1,s1,overflow;
	 
	 xorGate selectOperation(select,b,AluOp[2]); // b xor most significant bit of ALUop bit.
	 
	 //Actually Alu include a full adder.This parts for full adder operations.
    xorGate Gate1(x1,a,select );  
    xorGate Gate2(s1, x1 ,carryIn ); //summation or substruction part of multiplexer.
    and (x2, a,select);
    and (x3,carryIn,x1); 
	 
	 or (carryOut, x2,x3 ); //carryOut of Alu.
	 
	 
	 and(m0,select,a); //and part in multiplexer.
	 or (m1,select,a); //or part in multiplexer.
    
	 xorGate detectOverflow(V,carryIn,carryOut);//for V(detecting overflow) part of most significant bit alu.
	 xorGate setOutput (set,V,s1);//set part of most significant bit alu.
	 
	 

	 mux Multiplexer1(outputAlu,m0,s1,m1,less,AluOp[1],AluOp[0]); //multiplexer is calling for finding ALU output.
	 
	 
endmodule  