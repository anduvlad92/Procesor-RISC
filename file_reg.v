module file_reg(input we,
		input clk,
		input [4:0] left_addr,
		input [4:0] right_addr,
		input [31:0] result,
		input [4:0] dest_addr,
		output reg [31:0]  left_out,
		output reg[31:0] right_out);
reg [31:0] regFile [31:0];

	always@(posedge clk) begin 
		if(we)
			regFile[dest_addr]<=result;
		else 
			begin 
			left_out<=regFile[left_addr];
			right_out<=regFile[right_addr];
	
			end

	end
endmodule

