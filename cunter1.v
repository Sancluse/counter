 /*cunter 9 */

module cunter1	(clk,reset,count);
	input wire	clk;
	input wire	reset;
	
	output reg	[3:0]	count;
	
	always @ (posedge clk or posedge reset) begin   //时钟上升沿或者重置的上升沿
 		if ( reset==1)
 			count <=0;
		else 
			if (count<9)
				count <= count + 1;
			else 
				count <= 0;
		end
/*	  
	  always @ (posedge clk or negedge reset ) begin //时钟上升沿、重置的下降沿触发
		if (!reset==1)
			count <= 0;//寄存器赋值使用《=0
		else 
			if (count < 9)
				count <= count + 1;
			else  
				count <= 0;
	  end
*/
endmodule 









