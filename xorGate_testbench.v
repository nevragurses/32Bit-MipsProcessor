// test cases for xorGate module. 
`define DELAY 20
module xorGate_testbench();
reg a,b;
wire result;

xorGate tb (result, a,b);


initial begin
a = 1'b0; b = 1'b0;
#`DELAY;
a = 1'b1; b = 1'b0;
#`DELAY;
a = 1'b0; b = 1'b1;
#`DELAY;
a = 1'b1; b = 1'b1;
end

initial
begin
$monitor("a =%1b, b=%1b, result=%1b ",a, b, result);
end
endmodule