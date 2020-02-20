//test cases for mips_data_memory module.
`define DELAY 20
module mips_data_memory_testbench(); 
reg signal_mem_write, clk,signal_mem_read;	
reg [31:0] data_in;
reg [5:0] opcode;
reg [31:0] address;
wire [31:0] read_data;

	mips_data_memory tb(read_data,address,data_in,opcode,clk,signal_mem_write,signal_mem_read);
initial begin
data_in= 32'b11111111111111111111111111111111; opcode=6'b101001;address=32'b00001 ; signal_mem_read=1'b1; signal_mem_write=1'b1; clk=1'b1;
#`DELAY;

end
 
initial
begin
$monitor("address=%32b,Read_data=%32b,signalWrite=%1b",address,read_data,signal_mem_write);
end
 
endmodule