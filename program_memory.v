module program_memory(input [15:0] addres,
input reset,
input clock,
output reg [31:0] data);
reg [31:0] program_memory[15:0];
	always@(posedge clock) begin
		if(reset)
			for(i=0;i<65535;i=i+1)
				program_memory[i]<=0;
		else	
			data<=program_memory[addres];
	end

endmodule
