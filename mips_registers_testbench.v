//test cases for mips_registers module.
`define DELAY 20
module mips_registers_testbench(); 
reg signal_reg_write, clk;	
reg [31:0] write_data;
reg [4:0] read_reg_1,write_reg;
reg [4:0] read_reg_2;
wire [31:0] read_data_1;
wire [31:0] read_data_2;

	mips_registers regtb ( read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk );
initial begin
read_reg_1= 5'b00000 ; read_reg_2= 5'b00001; write_reg=5'b00010 ; signal_reg_write=1'b1; clk=1'b1; write_data= 32'b10001110111111011111101111110111;
#`DELAY;



end
 
initial
begin
$monitor(" read_reg_1=%5b , Read_reg_2=%5b , read_data_1=%32b , read_data_2=%32b ,write_data=%32b , write_reg =%5b ",read_reg_1,read_reg_2,read_data_1,read_data_2,write_data,write_reg);
end
 
endmodule