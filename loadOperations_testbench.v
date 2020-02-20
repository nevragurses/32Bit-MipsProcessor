//Testbench for loadOperations module.
`define DELAY 20
module loadOperations_testbench();
reg [31:0] readFromMem;
reg lbSignal,lhSignal;
wire [31:0] load;

loadOperations tb(load,readFromMem,lbSignal,lhSignal);	


initial begin
	readFromMem=32'b11111111111111111111111111111111; lhSignal=1'b0;lbSignal=1'b0;
	#`DELAY;
	readFromMem = 32'b10000000001111111111111111111111; lhSignal=1'b0;lbSignal=1'b1;
	#`DELAY;
	readFromMem = 32'b10011111111111111111111111111111; lhSignal=1'b1;lbSignal=1'b0;
	#`DELAY;
	
end
 
 
initial
begin
$monitor("readFromMem =%32b, load=%32b , lhSignal=%1b , lbSignal=%1b ",readFromMem,load,lhSignal,lbSignal);
end
 
endmodule
