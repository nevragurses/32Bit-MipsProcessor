//test cases for 32 bit ALU module.
`define DELAY 20
module Alu_32_Bit_testbench();
	wire carryOut;
	wire [31:0] outputAlu;
	wire Z;
	reg [31:0] less;
	reg[31:0] a;
	reg [31:0]b;
	reg [2:0 ] AluOp;
	reg carryIn;


	Alu_32_Bit alu32tb (carryOut,outputAlu,Z,a,b,carryIn,AluOp);

initial begin
a = 32'b11101101010110101011010101101010; b = 32'b01011110111111011111101111110111; carryIn = 1'b0;  AluOp =3'b000; 
#`DELAY;
a = 32'b10101010101010101010101010101010; b = 32'b01100011011000110110001101100011; carryIn = 1'b0;  AluOp =3'b001; 
#`DELAY;
a = 32'b00101010001010100010101000101010; b = 32'b00101010001010100010101000101010; carryIn = 1'b0;  AluOp =3'b010; 
#`DELAY;
a = 32'b01111010011110100111101001111010; b = 32'b00101010001010100010101000101010; carryIn = 1'b0;  AluOp =3'b110; 
#`DELAY;
a = 32'b10100000000000000000000000000000; b = 32'b10110000000000000000000000000000; carryIn = 1'b0;  AluOp =3'b111; 

end
 
 
initial
begin
$monitor(" AluOp=%3b,a=%32b,b=%32b,cin=%1b,outputAlu=%32b,cOut=%1b Z=%1b", AluOp ,a, b, carryIn,outputAlu, carryOut,Z);
end
 
endmodule