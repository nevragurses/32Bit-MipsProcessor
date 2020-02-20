//This module for reading data memory and writing data memory.This is actually for load and store operations.
module mips_data_memory(read_data,address,data_in,opcode,clk,signal_mem_write,signal_mem_read);
	output reg[31:0] read_data;
	input [5:0]opcode;
	input  [31:0] address,data_in;
	input signal_mem_write,signal_mem_read,clk;
	
	reg [31:0] data_memory [255:0];
	
	initial begin
		$readmemb("memoryData.txt", data_memory);
	end
	
	always @(*) begin
		if(signal_mem_read) begin
			read_data = data_memory[address];
		end
	end

	always @(posedge clk) begin
		if(signal_mem_write) begin
			//for sh operation
			if(opcode == 6'h29) begin
				$display("sh operation doing...");
				data_memory[address][15:0] = data_in[15:0];
			end
			//for sb operation
			else if(opcode == 6'h28  ) begin
				 $display("sb operation doing...");
				data_memory[address][7:0] = data_in[7:0];
			end
			//for sw operation
			else begin
				$display("sw operation doing...");
				data_memory[address]=data_in;
			end	
				$writememb("memoryData.txt", data_memory);
		end		
	end
	
	
endmodule
