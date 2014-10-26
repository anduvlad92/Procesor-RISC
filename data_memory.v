module data_memory(input [31:0] addres,
	input reset,
	input clock,
	input we,
	input [31:0] data_in,
	output reg[31:0] data_out);
reg [31:0] data_memory[31:0];
integer unsigned  i;
	always@(posedge clock) begin
		if(reset)
			for(i=0;i<=4294967295;i=i+1)
				data_memory[i]<=0;
			
		else
			if(we)
				data_memory[addres]=data_in;
			else
				data_out=data_memory[addres];
	end
endmodule
