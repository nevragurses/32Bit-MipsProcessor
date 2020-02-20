//Testbench for luiControl module
`define DELAY 20
module luiControl_testbench();
reg [15:0] immediate;
reg [31:0] memoryData;
reg luiSignal;
wire[31:0] out;
luiControl tb(out,immediate,luiSignal,memoryData);

initial begin
	immediate = 16'b1111111111111111; memoryData=32'b10101010101001010101001010100101; luiSignal=1'b0;
	#`DELAY;
	immediate = 16'b1111111111111111; memoryData=32'b10101010101001010101001010100101; luiSignal=1'b1;
	#`DELAY;


end
 
 
initial
begin
$monitor("signal=%1b,immediate =%16b, memoryData=%32b ,output=%32b ",luiSignal, immediate,memoryData,out);
end
 
endmodule
