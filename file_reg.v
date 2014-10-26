module file_reg(input we,
		input clk,
		input [4:0] left_addr,
		input [4:0] right_addr,
		input [31:0] result,
		input [4:0] left_addr,
		output reg [31:0]  left_out,
		output reg[31:0] right_out);

