//Testbench for read_instruction module.
`define DELAY 20
module read_instruction_testbench();
reg [31:0] program_counter;
wire [31:0] instruction;

read_instruction riTb(instruction, program_counter);
initial begin
program_counter= 32'b00001 ; 
#`DELAY;

end
 
initial
begin
$monitor(" pc=%32b instruction=%32b",program_counter,instruction);
end
 
endmodule