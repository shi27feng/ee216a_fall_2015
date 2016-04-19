module reg_32(
	input clk,
	input [31:0] i_reg,
	input srdyi_reg,
	output srdyo_reg,
	output [31:0] o_reg
	);
	
	reg [31:0] r[0:31];
	reg en[0:31];

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
		r[15] <= r[14];
		r[16] <= r[15];
		r[17] <= r[16];
		r[18] <= r[17];
		r[19] <= r[18];
		r[20] <= r[19];
		r[21] <= r[20];
		r[22] <= r[21];
		r[23] <= r[22];
		r[24] <= r[23];
		r[25] <= r[24];
		r[26] <= r[25];
		r[27] <= r[26];
		r[28] <= r[27];
		r[29] <= r[28];
		r[30] <= r[29];
		r[31] <= r[30];


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
		en[15] <= en[14];
		en[16] <= en[15];
		en[17] <= en[16];
		en[18] <= en[17];
		en[19] <= en[18];
		en[20] <= en[19];
		en[21] <= en[20];
		en[22] <= en[21];
		en[23] <= en[22];
		en[24] <= en[23];
		en[25] <= en[24];
		en[26] <= en[25];
		en[27] <= en[26];
		en[28] <= en[27];
		en[29] <= en[28];
		en[30] <= en[29];
		en[31] <= en[30];

	end
	
	assign o_reg = r[31];
	assign srdyo_reg = en[31];
endmodule