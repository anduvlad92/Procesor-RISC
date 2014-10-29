////////////////////////////////////////////
//Stores temporary variables////////////////
//dest_addr is a write port/////////////////
//left_addr and right_addr are read ports///
//left _addr and right addr are on 5 bits/// 
//so they have 32 different values///
module file_reg(input we,
		input clk,
		input [4:0] left_addr,
		input [4:0] right_addr,
		input [31:0] result,
		input [4:0] dest_addr,  // we store the result in regFile register  at this addres
		output reg [31:0]  left_out,
		output reg[31:0] right_out);
reg [31:0] regFile [0:31];  //data is stored here

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

