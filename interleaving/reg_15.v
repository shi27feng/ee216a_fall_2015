module reg_15(
	input clk,
	input [31:0] i_reg,
	input srdyi_reg,
	output srdyo_reg,
	output [31:0] o_reg
	);
	
	reg [31:0] r[0:14];
	reg en[0:14];

	always @(posedge clk) begin
		r[0] <= i_reg;
		r[1] <= r[0];
		r[2] <= r[1];
		r[3] <= r[2];
		r[4] <= r[3];
		r[5] <= r[4];
		r[6] <= r[5];
		r[7] <= r[6];
		r[8] <= r[7];
		r[9] <= r[8];
		r[10] <= r[9];
		r[11] <= r[10];
		r[12] <= r[11];
		r[13] <= r[12];
		r[14] <= r[13];

		en[0] <= srdyi_reg;
		en[1] <= en[0];
		en[2] <= en[1];
		en[3] <= en[2];
		en[4] <= en[3];
		en[5] <= en[4];
		en[6] <= en[5];
		en[7] <= en[6];
		en[8] <= en[7];
		en[9] <= en[8];
		en[10] <= en[9];
		en[11] <= en[10];
		en[12] <= en[11];
		en[13] <= en[12];
		en[14] <= en[13];

	end
	assign o_reg = r[14];
	assign srdyo_reg = en[14];
endmodule