`timescale 1ns/1ps

module cunter1_tb ();
      reg clk;
	 reg reset;
	 wire 	[3:0]	count;

	cunter1	cunter1_inst(.clk(clk),.reset(reset),.count(count));
	
	initial clk = 1;
	always	#10 clk=~clk;//给了一个晶振时钟

	initial begin
			reset = 1;
			# 205;  //保证复位时不与时钟下降沿重合
			reset = 0;
			#1000;
			$stop;
	end

endmodule



