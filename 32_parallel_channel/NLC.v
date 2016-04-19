module NLC(
    input clk,
    input reset,
	input srdyi,
	output [20:0] x_lin,
	output srdyo,
	input [20:0] x_adc,
	input [19:0] section_limit,
	input [31:0] recip_stdev_4,
	input [31:0] recip_stdev_3,
	input [31:0] recip_stdev_2,
	input [31:0] recip_stdev_1,
	input [31:0] neg_mean_4,
	input [31:0] neg_mean_3,
	input [31:0] neg_mean_2,
	input [31:0] neg_mean_1,
	input [31:0] coeff_4_9,
	input [31:0] coeff_4_8,
	input [31:0] coeff_4_7,
	input [31:0] coeff_4_6,
	input [31:0] coeff_4_5,
	input [31:0] coeff_4_4,
	input [31:0] coeff_4_3,
	input [31:0] coeff_4_2,
	input [31:0] coeff_4_10,
	input [31:0] coeff_4_1,
	input [31:0] coeff_4_0,
	input [31:0] coeff_3_9,
	input [31:0] coeff_3_8,
	input [31:0] coeff_3_7,
	input [31:0] coeff_3_6,
	input [31:0] coeff_3_5,
	input [31:0] coeff_3_4,
	input [31:0] coeff_3_3,
	input [31:0] coeff_3_2,
	input [31:0] coeff_3_10,
	input [31:0] coeff_3_1,
	input [31:0] coeff_3_0,
	input [31:0] coeff_2_9,
	input [31:0] coeff_2_8,
	input [31:0] coeff_2_7,
	input [31:0] coeff_2_6,
	input [31:0] coeff_2_5,
	input [31:0] coeff_2_4,
	input [31:0] coeff_2_3,
	input [31:0] coeff_2_2,
	input [31:0] coeff_2_10,
	input [31:0] coeff_2_1,
	input [31:0] coeff_2_0,
	input [31:0] coeff_1_9,
	input [31:0] coeff_1_8,
	input [31:0] coeff_1_7,
	input [31:0] coeff_1_6,
	input [31:0] coeff_1_5,
	input [31:0] coeff_1_4,
	input [31:0] coeff_1_3,
	input [31:0] coeff_1_2,
	input [31:0] coeff_1_10,
	input [31:0] coeff_1_1,
	input [31:0] coeff_1_0
	
	// output reg [3:0] state,
	// output reg [3:0] next_state,
	// output wire zsydyo,
	// output wire [20:0] z21bits,
	// output wire [31:0] z32bits
	);

	wire [31:0] o_smc;
	// reg [20:0] i_fp;
	wire srdyo_fp_smc;
	// reg srdyi_fp_smc;

	wire [31:0] o_adder_mean;
	wire srdyo_adder_mean;

	wire [31:0] o_mult_std;
	wire srdyo_mult_std;

	// // reg [31:0] i_multx;
	// reg [31:0] i_multy;
	wire [31:0] o_mult;
	wire srdyo_mult;
	// reg srdyi_mult;

	// reg [31:0] i_adderx;
	// reg [31:0] i_addery;
	wire [31:0] o_adder;
	wire srdyo_adder;
	// reg srdyi_adder;

	// wire [20:0] o_fp;
	// reg [20:0] i_smc;
	// wire srdyo_smc_fp;
	reg srdyi_smc_fp;

	reg [20:0] x_adc_abs;
	reg [31:0] coeff[10:0];

	reg [3:0] count;
	reg [31:0] o_z;

	reg srdyo_z;
	wire srdyi_mult;

	reg [31:0] recip_stdev;
	reg [31:0] neg_mean;

	reg [3:0] state;
	reg [3:0] next_state;
	parameter rst = 0,
			  w8_srdyi = 1,
			  fp2smc = 2,
			  multi = 3,
			  adder = 4,
			  z_1 = 5,
			  smc2fp = 6,
			  w8_x_lin = 7;


	fp_to_smc_float fp_to_smc_float (
	  .clk(clk),
	  .GlobalReset(reset),
	  .y_o_portx(o_smc),
	  .x_i(x_adc),
	  .srdyo_o(srdyo_fp_smc),
	  .srdyi_i(srdyi)
	);

	smc_float_adder add_neg_mean (
	  .clk(clk),
	  .GlobalReset(reset),
	  .x_i_porty(o_smc),
	  .y_i_porty(neg_mean),
	  .z_o_portx(o_adder_mean),
	  .srdyo_o(srdyo_adder_mean),
	  .srdyi_i(srdyo_fp_smc)
	);


	smc_float_multiplier multi_std (
	  .clk(clk),
	  .GlobalReset(reset),
	  .x_i_porty(o_adder_mean),
	  .y_i_porty(recip_stdev),
	  .z_o_portx(o_mult_std),
	  .srdyo_o(srdyo_mult_std),
	  .srdyi_i(srdyo_adder_mean)
	);

	smc_float_multiplier smc_float_multiplier (
	  .clk(clk),
	  .GlobalReset(reset),
	  .x_i_porty(o_z),
	  .y_i_porty(o_mult_std),
	  .z_o_portx(o_mult),
	  .srdyo_o(srdyo_mult),
	  .srdyi_i(srdyi_mult)
	);

	smc_float_adder smc_float_adder (
	  .clk(clk),
	  .GlobalReset(reset),
	  .x_i_porty(o_mult),
	  .y_i_porty(coeff[count]),
	  .z_o_portx(o_adder),
	  .srdyo_o(srdyo_adder),
	  .srdyi_i(srdyo_mult)
	);

	smc_float_to_fp smc_float_to_fp (
	  .clk(clk),
	  .GlobalReset(reset),
	  .x_i_porty(o_z),
	  .y_o(x_lin),
	  .srdyo_o(srdyo),
	  .srdyi_i(srdyi_smc_fp)
	);

	assign srdyi_mult = srdyo_mult_std | srdyo_z;
	// assign zsydyo = srdyi_smc_fp;
	// assign z32bits = o_z;
	// assign z21bits = x_lin;

	// ABS
    always @(x_adc) begin
       if (x_adc[20] == 0) begin
          x_adc_abs = x_adc;
       end
       else begin
          x_adc_abs = ~x_adc + 1;
       end
    end

    ////////////////////////////////////////////////////////////////////
	//To determine which section a ADC input belongs to
	always @(x_adc_abs) begin
	//if (x_adc >0 && x_adc > section_limit) begin
		//if (x_adc > section_limit) begin
		if (x_adc[20]==0)
			if(x_adc_abs > section_limit) begin
				neg_mean = neg_mean_4;
				recip_stdev = recip_stdev_4;
				coeff[10] = coeff_4_10;
				coeff[9] = coeff_4_9;  
				coeff[8] = coeff_4_8;  
				coeff[7] = coeff_4_7;  
				coeff[6] = coeff_4_6;  
				coeff[5] = coeff_4_5;  
				coeff[4] = coeff_4_4;  
				coeff[3] = coeff_4_3;  
				coeff[2] = coeff_4_2;  
				coeff[1] = coeff_4_1;  
				coeff[0] = coeff_4_0;
			end 
		//else if (x_adc > 0 && x_adc < section_limit) begin   
			else begin           
				neg_mean = neg_mean_3;
				recip_stdev = recip_stdev_3;
				coeff[10] = coeff_3_10;
				coeff[9] = coeff_3_9;  
				coeff[8] = coeff_3_8;  
				coeff[7] = coeff_3_7;  
				coeff[6] = coeff_3_6;  
				coeff[5] = coeff_3_5;  
				coeff[4] = coeff_3_4;  
				coeff[3] = coeff_3_3;  
				coeff[2] = coeff_3_2;  
				coeff[1] = coeff_3_1;  
				coeff[0] = coeff_3_0; 
			end
		//else if (x_adc < 0 && section_limit + x_adc >= 0) begin
		else 
			if (x_adc_abs <= section_limit) begin
				neg_mean = neg_mean_2;
				recip_stdev = recip_stdev_2;
				coeff[10] = coeff_2_10;
				coeff[9] = coeff_2_9;  
				coeff[8] = coeff_2_8;  
				coeff[7] = coeff_2_7;  
				coeff[6] = coeff_2_6;  
				coeff[5] = coeff_2_5;  
				coeff[4] = coeff_2_4;  
				coeff[3] = coeff_2_3;  
				coeff[2] = coeff_2_2;  
				coeff[1] = coeff_2_1;  
				coeff[0] = coeff_2_0; 
			end
		//else if (x_adc < 0 && section_limit + x_adc <= 0) begin
		// else if (x_adc[20]==1 && x_adc_abs >= section_limit) begin
			else begin
				neg_mean = neg_mean_1;
				recip_stdev = recip_stdev_1;
				coeff[10] = coeff_1_10;
				coeff[9] = coeff_1_9;  
				coeff[8] = coeff_1_8;  
				coeff[7] = coeff_1_7;  
				coeff[6] = coeff_1_6;  
				coeff[5] = coeff_1_5;  
				coeff[4] = coeff_1_4;  
				coeff[3] = coeff_1_3;  
				coeff[2] = coeff_1_2;  
				coeff[1] = coeff_1_1;  
				coeff[0] = coeff_1_0; 
			end
	end
	
	always @(posedge clk) begin
		if (reset) begin        
			state <= rst;   
		end
		else begin                
			state <= next_state;    
		end
    end


    always @(*) begin
    	case(state)
    		rst: begin 		// 0
    			next_state = fp2smc;
    		end
    		// w8_srdyi: begin // 1
    		// 	if(srdyi==1)
    		// 		next_state = fp2smc;
    		// 	else
    		// 		next_state = w8_srdyi;
    		// end
    		fp2smc: begin 	// 2
    			if(srdyo_fp_smc==1)
    				next_state = multi;
    			else
    				next_state = fp2smc;
    		end
    		multi: begin 	// 3
    			if(srdyo_mult==1)
    				next_state = adder;
    			else
    				next_state = multi;
    		end
    		adder: begin 	// 4
    			if(srdyo_adder==1)
    				next_state = z_1;
    			else
    				next_state = adder;
    		end
    		z_1: begin 		// 5
    			if(count!=0)
    				next_state = multi;
    			else
    				next_state = smc2fp;
    		end
    		smc2fp: begin 	// 6
    			next_state = w8_x_lin;
    		end
    		w8_x_lin: begin // 7
    			if(srdyo==0)
    				next_state = w8_x_lin;
    			else begin
    				next_state = rst;
    				// $display(x_lin);
    			end
    		end
    		default: next_state = rst;

    	endcase
    end

    always @(posedge clk) begin
    	case(state)
    		rst: begin
    			count <= 10;
    			srdyi_smc_fp <= 0;
    			srdyo_z <= 0;
    			o_z <= 0;
    		end
    		w8_srdyi: begin
    			
    		end
    		fp2smc: begin
    			
    		end
    		multi: begin
    			srdyo_z <= 0;
    		end
    		adder: begin
    			
    		end
    		z_1: begin
    			srdyo_z <= 1;
    			count <= count - 1;
    			o_z <= o_adder;
    		end
    		smc2fp: begin
    			srdyo_z <= 0;
    			srdyi_smc_fp <= 1;
    		end
    		w8_x_lin: begin
    			srdyo_z <= 0;
    			srdyi_smc_fp <= 0;
    		end
    	endcase

    end
endmodule