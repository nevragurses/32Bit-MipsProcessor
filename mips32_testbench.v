//Test bench for mips_32 module
module mips32_testbench ();
  reg clock;
	
  mips_32 tb(clock);
  initial clock = 0;

  initial begin 
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		#50 clock=~clock; #50 clock=~clock;
		
  end
endmodule




