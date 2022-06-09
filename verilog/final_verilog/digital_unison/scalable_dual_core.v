
`timescale 1ns/1ps
//`include "../.final_verilog_dv_includes.v"

//`define RUN_DV // if running dv locally
`ifdef RUN_DV
	`include "/Volumes/export/isn/ishan/fossi_cochlea/verilog/final_verilog/final_verilog_dv_includes.v"
`endif

module scalable_dual_core (
	// global inputs from RISC (must level shift vccd2->vccd1)
	input rstb, ud_en,//phi1b_dig[0] is corresponding to the first wrapper

	// unison specific inputs from RISC
	input clk_master,
	input clkdiv2_in,
	input [9:0]gray_clk_in,
	input [2:0]no_ones_below_in,
	// outputs to analog
	output wire [1:0] clkdiv2_I, clkdiv2_Q,
	output wire [1:0] cclk_I, cclk_Q,

	output wire [1:0] cos_out, sin_out,
	output wire [1:0] cos_outb, sin_outb, // must be inverted in analog

	// inputs from analog, one per I/Q wavelet core in unison
	input [1:0] comp_high_I, comp_high_Q,	
	input [1:0] phi1b_dig_I, phi1b_dig_Q, //more of these will be required for unison's testbench.	
	
	output wire [1:0] fb1_I, fb1_Q,
	output wire [1:0] fb2_I, fb2_Q, // feedback to -ve side must be inverted in analog
	
	//final outputs of digital core
	output wire div2out,
	output wire [10:1] gray_clk_out,
	output wire [2:0] no_ones_below_out,

	// unison outputs
	output wire [1:0] read_out_I, read_out_Q,	

	// make duplicate ports for manual stitching
	output wire rstb_out, ud_en_out, clk_master_out, 
	output wire [1:0] read_out_I_top, read_out_Q_top
);
//int: intermediate connections
wire div2out_int;
wire [10:1]gray_clk_out_int; //these will be common among all as they need to be shorted.
wire [2:0]no_ones_below_out_int;

wrapper_cell w2(
	.rstb(rstb),
	.ud_en(ud_en),
	.clk_master(clk_master),

	.clkdiv2(clkdiv2_in), // this is from previous core
	.gray_clk_in(gray_clk_in[9:0]), ////gray clk from wrapper_first
	.no_ones_below_in(no_ones_below_in[2:0]),
	
	.sin_out(sin_out[0]),
	.cos_out(cos_out[0]),
	.sin_outb(sin_outb[0]),
	.cos_outb(cos_outb[0]),

	.clkdiv2_I(clkdiv2_I[0]), // this is clkdiv2 as inputted from previous core, outputting to analog
	.clkdiv2_Q(clkdiv2_Q[0]),
	.cclk_I(cclk_I[0]),
	.cclk_Q(cclk_Q[0]),

	.comp_high_I(comp_high_I[0]),
	.comp_high_Q(comp_high_Q[0]),
	.phi1b_dig_I(phi1b_dig_I[0]),
	.phi1b_dig_Q(phi1b_dig_Q[0]),
	
	.fb1_I(fb1_I[0]),
	.fb2_I(fb2_I[0]),
	.fb1_Q(fb1_Q[0]),
	.fb2_Q(fb2_Q[0]),

	// to output ports of dual_core
	.div2out(div2out_int), 
	.gray_clk_out(gray_clk_out_int[10:1]),
	.no_ones_below_out(no_ones_below_out_int[2:0]),

	.read_out_I(read_out_I[1:0]),
	.read_out_Q(read_out_Q[1:0])
);

wrapper_cell w3(
	.rstb(rstb),
	.ud_en(ud_en),
	.clk_master(clk_master),

	.clkdiv2(div2out_int), // this is from previous core
	.gray_clk_in(gray_clk_out_int[10:1]), ////gray clk from w2
	.no_ones_below_in(no_ones_below_out_int[2:0]),
	
	.sin_out(sin_out[1]),
	.cos_out(cos_out[1]),
	.sin_outb(sin_outb[1]),
	.cos_outb(cos_outb[1]),

	.clkdiv2_I(clkdiv2_I[1]), // this is clkdiv2 as inputted from previous core, outputting to analog
	.clkdiv2_Q(clkdiv2_Q[1]),
	.cclk_I(cclk_I[1]),
	.cclk_Q(cclk_Q[1]),

	.comp_high_I(comp_high_I[1]),
	.comp_high_Q(comp_high_Q[1]),
	.phi1b_dig_I(phi1b_dig_I[1]),
	.phi1b_dig_Q(phi1b_dig_Q[1]),
	
	.fb1_I(fb1_I[1]),
	.fb2_I(fb2_I[1]),
	.fb1_Q(fb1_Q[1]),
	.fb2_Q(fb2_Q[1]),

	// to output ports of dual_core
	.div2out(div2out), 
	.gray_clk_out(gray_clk_out[10:1]),
	.no_ones_below_out(no_ones_below_out[2:0]),

	.read_out_I(read_out_I[1:0]),
	.read_out_Q(read_out_Q[1:0])
);
/*
wrapper_first w0(
	.rstb(rstb),
	.ud_en(ud_en),
	.clk_master(clk_master),

	// to LO mux
	.cos_out(cos_out[0]),
	.cos_outb(cos_outb[0]),
	.sin_out(sin_out[0]),
	.sin_outb(sin_outb[0]),

 	// to phi clk gen
	.clkdiv2_I(clkdiv2_I[0]),
	.clkdiv2_Q(clkdiv2_Q[0]),
	.cclk_I(cclk_I[0]),
	.cclk_Q(cclk_Q[0]),

	// from comparator
	.comp_high_I(comp_high_I[0]),
	.comp_high_Q(comp_high_Q[0]),
	.phi1b_dig_I(phi1b_dig_I[0]),
	.phi1b_dig_Q(phi1b_dig_Q[0]),

	// to feedback cap
	.fb1_I(fb1_I[0]),
	.fb2_I(fb2_I[0]),
	.fb1_Q(fb1_Q[0]),
	.fb2_Q(fb2_Q[0]),

	// to next digital core
	.div2out(div2out_0),
	.gray_clk(gray_clk_out_0[10:1]),
	.no_ones_below_out(no_ones_below_out_0[2:0]),

	// shared
	.read_out_I(read_out_I[1:0]),
	.read_out_Q(read_out_Q[1:0])
);
*/

// duplicate ports on top of dual_core
assign ud_en_out=ud_en;
assign clk_master_out=clk_master;
assign rstb_out=rstb;
assign read_out_I_top=read_out_I;
assign read_out_Q_top=read_out_Q;

endmodule

`ifdef RUN_DV
	////testbench
	module and_gate(
		input in1,
		input in2,
		output wire out);
		assign #1 out=in1&in2;
	endmodule

	module or_gate(
		input in1,
		input in2,
		output wire out);
		assign out=in1|in2;
	endmodule

	module tb_scalable_dual_core;
	reg rstb,ud_en,clk_master;

	reg [1:0]phi1b_dig_c1; //more of these will be required for unison's testbench.
	reg [1:0]phi1b_dig_c2;
							//phi1b_dig[0] is corresponding to the first wrapper
	wire [1:0]sin_out_c1,cos_out_c1,sin_outb_c1,cos_outb_c1,fb2_I_c1,fb2_Q_c1,fb1_Q_c1,fb1_I_c1,cclk_I_c1,cclk_Q_c1; //signals out from first_dual_core
	wire [1:0]sin_out_c2,cos_out_c2,sin_outb_c2,cos_outb_c2,fb2_I_c2,fb2_Q_c2,fb1_Q_c2,fb1_I_c2,cclk_I_c2,cclk_Q_c2;//signals out from scalable dual core
	wire [10:1]gray_clk_out_c1;
	wire [10:1]gray_clk_out_c2;
	wire [2:0]no_ones_below_out_c1;
	wire [2:0]no_ones_below_out_c2;
	wire [1:0]read_out_I,read_out_Q; //these will be common among all as they need to be shorted.
	wire [1:0]read_out_I_top_c1,read_out_Q_top_c1;
	wire div2out_c1,rstb_out_c1,ud_en_out_c1,clk_master_out_c1;//[0] index corresponds to the output of first wrapper and [1] index to that of second wrapper.
	wire div2out_c2,rstb_out_c2,ud_en_out_c2,clk_master_out_c2;//[0] index corresponds to the output of first wrapper and [1] index to that of second wrapper.
	reg [1:0]input_signal_I_c1, input_signal_Q_c1, ref_I_c1, ref_Q_c1, input_lc_I_c1, input_lc_Q_c1, ref_lc_I_c1, ref_lc_Q_c1, clkdiv4_c1;
	reg [1:0]input_signal_I_c2, input_signal_Q_c2, ref_I_c2, ref_Q_c2, input_lc_I_c2, input_lc_Q_c2, ref_lc_I_c2, ref_lc_Q_c2, clkdiv4_c2;
	wire [1:0]comp_high_int2_I_c1, comp_high_int2_Q_c1, comp_high_int_I_c1, comp_high_int_Q_c1, comp_high_I_c1, comp_high_Q_c1;
	wire [1:0]comp_high_int2_I_c2, comp_high_int2_Q_c2, comp_high_int_I_c2, comp_high_int_Q_c2, comp_high_I_c2, comp_high_Q_c2;
	
	wire [1:0]clkdiv2_I_c1, clkdiv2_Q_c1;//signals out from first_dual_core
	wire [1:0]clkdiv2_I_c2, clkdiv2_Q_c2;//signals out from scalable_dual_core
	wire [1:0]read_out_I_top;
	wire [1:0]read_out_Q_top;

	first_dual_core core01(
		.rstb(rstb),
		.ud_en(ud_en),
		.clk_master(clk_master),
		//outputs	
		.sin_out(sin_out_c1[1:0]),
		.cos_out(cos_out_c1[1:0]),
		.sin_outb(sin_outb_c1[1:0]),
		.cos_outb(cos_outb_c1[1:0]),

		.clkdiv2_I(clkdiv2_I_c1[1:0]),
		.clkdiv2_Q(clkdiv2_Q_c1[1:0]),
		.cclk_I(cclk_I_c1[1:0]),
		.cclk_Q(cclk_Q_c1[1:0]),

		//to be generated
		.phi1b_dig_I(phi1b_dig_c1[1:0]),
		.phi1b_dig_Q(phi1b_dig_c1[1:0]),
		.comp_high_I(comp_high_I_c1[1:0]),
		.comp_high_Q(comp_high_Q_c1[1:0]),

		.fb2_I(fb2_I_c1[1:0]),
		.fb2_Q(fb2_Q_c1[1:0]),
		.fb1_I(fb1_I_c1[1:0]),
		.fb1_Q(fb1_Q_c1[1:0]),

		.div2out(div2out_c1),
		.gray_clk_out(gray_clk_out_c1[10:1]),
		.no_ones_below_out(no_ones_below_out_c1[2:0]),

		.read_out_I(read_out_I),
		.read_out_Q(read_out_Q),

		.rstb_out(rstb_out_c1),
		.ud_en_out(ud_en_out_c1),
		.clk_master_out(clk_master_out_c1),
		.read_out_I_top(read_out_I_top_c1),
		.read_out_Q_top(read_out_Q_top_c1)
	);

	scalable_dual_core core02(
		.rstb(rstb_out_c1),
		.ud_en(ud_en_out_c1),
		.clk_master(clk_master_out_c1),

		.sin_out(sin_out_c2[1:0]),
		.cos_out(cos_out_c2[1:0]),
		.sin_outb(sin_outb_c2[1:0]),
		.cos_outb(cos_outb_c2[1:0]),

		.clkdiv2_in(div2out_c1),
		.gray_clk_in(gray_clk_out_c1),
		.no_ones_below_in(no_ones_below_out_c1),



		.clkdiv2_I(clkdiv2_I_c2[1:0]),
		.clkdiv2_Q(clkdiv2_Q_c2[1:0]),
		.cclk_I(cclk_I_c2[1:0]),
		.cclk_Q(cclk_Q_c2[1:0]),

		.phi1b_dig_I(phi1b_dig_c2[1:0]),
		.phi1b_dig_Q(phi1b_dig_c2[1:0]),
		.comp_high_I(comp_high_I_c2[1:0]),
		.comp_high_Q(comp_high_Q_c2[1:0]),

		.fb2_I(fb2_I_c2[1:0]),
		.fb2_Q(fb2_Q_c2[1:0]),
		.fb1_I(fb1_I_c2[1:0]),
		.fb1_Q(fb1_Q_c2[1:0]),

		.div2out(div2out_c2),
		.gray_clk_out(gray_clk_out_c2[10:1]),
		.no_ones_below_out(no_ones_below_out_c2[2:0]),

		.read_out_I(read_out_I_top_c1),
		.read_out_Q(read_out_Q_top_c1),

		.rstb_out(rstb_out_c2),
		.ud_en_out(ud_en_out_c2),
		.clk_master_out(clk_master_out_c2),
		.read_out_I_top(read_out_I_top),
		.read_out_Q_top(read_out_Q_top)
	);

	genvar i;
	generate for(i=0; i<=1;i=i+1)begin:loop1
	and_gate ag1(
			.in1(input_signal_I_c1[i]),
			.in2(ref_I_c1[i]),
			.out(comp_high_int_I_c1[i]));

	and_gate ag2(
			.in1(input_lc_I_c1[i]),
			.in2(ref_lc_I_c1[i]),
			.out(comp_high_int2_I_c1[i]));

	or_gate or_(
			.in1(comp_high_int_I_c1[i]),
			.in2(comp_high_int2_I_c1[i]),
			.out(comp_high_I_c1[i]));


	and_gate ag3(
			.in1(input_signal_Q_c1[i]),
			.in2(ref_Q_c1[i]),
			.out(comp_high_int_Q_c1[i]));

	and_gate ag4(
			.in1(input_lc_Q_c1[i]),
			.in2(ref_lc_Q_c1[i]),
			.out(comp_high_int2_Q_c1[i]));

	or_gate or_1(
			.in1(comp_high_int_Q_c1[i]),
			.in2(comp_high_int2_Q_c1[i]),
			.out(comp_high_Q_c1[i]));
	end
	endgenerate
		genvar j;
	generate for(j=0; j<=1;j=j+1)begin:loop2
	and_gate ag1(
			.in1(input_signal_I_c2[j]),
			.in2(ref_I_c2[j]),
			.out(comp_high_int_I_c2[j]));

	and_gate ag2(
			.in1(input_lc_I_c2[j]),
			.in2(ref_lc_I_c2[j]),
			.out(comp_high_int2_I_c2[j]));

	or_gate or_(
			.in1(comp_high_int_I_c2[j]),
			.in2(comp_high_int2_I_c2[j]),
			.out(comp_high_I_c2[j]));


	and_gate ag3(
			.in1(input_signal_Q_c2[j]),
			.in2(ref_Q_c2[j]),
			.out(comp_high_int_Q_c2[j]));

	and_gate ag4(
			.in1(input_lc_Q_c2[j]),
			.in2(ref_lc_Q_c2[j]),
			.out(comp_high_int2_Q_c2[j]));

	or_gate or_1(
			.in1(comp_high_int_Q_c2[j]),
			.in2(comp_high_int2_Q_c2[j]),
			.out(comp_high_Q_c2[j]));
	end
	endgenerate


	initial begin
		$dumpfile("scalable_dual_core.vcd");
		$dumpvars;
	end 

	//parameters(common)
	parameter PERIOD_MASTER=400;
	real clk_master_hf_pd=PERIOD_MASTER/2;



	//master_clk
	initial begin
		clk_master=0;
			forever
				#(clk_master_hf_pd)clk_master = ~clk_master; //ext_clk generation freq=2.56 MHz
	end


	//parameters(specific)
	//Modelling signals for wrapper_first
	//--------------------------------------------------

	parameter n=1; //n is always 2 in the first wrapper case
	parameter PERIOD_CORE_c1=400*(2**(n-1));
	real clk_core_half_pd_c1=(PERIOD_CORE_c1)/2;
	parameter PERIOD_INPUT_SIGNAL_c1=40000;
	parameter LEVEL_CROSSING_FACTOR_c1=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd_c1=PERIOD_INPUT_SIGNAL_c1/2;
	real clk_comp_high_half_pd_c1=(PERIOD_CORE_c1);
	real lc_offset_c1=LEVEL_CROSSING_FACTOR_c1*PERIOD_INPUT_SIGNAL_c1/2;
	real lc_high_c1=(PERIOD_INPUT_SIGNAL_c1/2)*(1-2*LEVEL_CROSSING_FACTOR_c1); //period until which lc input wave stays high


	//signal generation
	always @(posedge clk_master or negedge clk_master) begin //make clk_master as clkdiv2 for other wrappers
			if(clk_master) begin
				#2 phi1b_dig_c1[0]<=0;
				#(clk_core_half_pd_c1-2) phi1b_dig_c1[0]<=1;
			end
			else begin
				phi1b_dig_c1[0]<=phi1b_dig_c1[0];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4_c1[0]=0;
			#(clk_core_half_pd_c1)clkdiv4_c1[0]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd_c1)clkdiv4_c1[0] = ~clkdiv4_c1[0]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4_c1[0] or negedge clkdiv4_c1[0]) begin
			if(clkdiv4_c1[0]) begin
				#2 ref_I_c1[0]<=1;
				#(clk_core_half_pd_c1-2) ref_I_c1[0]<=0;
			end
			else begin
				ref_I_c1[0]<=ref_I_c1[0];
			end
	end


	always @(posedge clkdiv4_c1[0] or negedge clkdiv4_c1[0]) begin
			if(clkdiv4_c1[0]) begin
				#2 ref_Q_c1[0]<=1;
				#(clk_core_half_pd_c1-2) ref_Q_c1[0]<=0;
			end
			else begin
				ref_Q_c1[0]<=ref_Q_c1[0];
			end
	end


	initial begin
			input_signal_I_c1[0]=0;
			#(clk_core_half_pd_c1) input_signal_I_c1[0]=1; 
			forever
				#(clk_input_half_pd_c1) input_signal_I_c1[0]=~input_signal_I_c1[0];
	end

	initial begin
			input_signal_Q_c1[0]=0;
			#(clk_core_half_pd_c1) input_signal_Q_c1[0]=1; 
			forever
				#(clk_input_half_pd_c1) input_signal_Q_c1[0]=~input_signal_Q_c1[0];
	end

	// lc signal modelling

	always @(posedge input_signal_I_c1[0]) begin
			input_lc_I_c1[10]<=0;
			#(lc_offset_c1) input_lc_I_c1[0]<=1;
			#(lc_high_c1) input_lc_I_c1[0]<=0; 
	end

	always @(posedge input_signal_Q_c1[0]) begin
			input_lc_Q_c1[0]<=0;
			#(lc_offset_c1) input_lc_Q_c1[0]<=1;
			#(lc_high_c1) input_lc_Q_c1[0]<=0; 
	end

	always @(posedge clkdiv4_c1[0] or negedge clkdiv4_c1[0]) begin
			if(!clkdiv4_c1[0]) begin
				#2 ref_lc_I_c1[0]<=1;
				#(clk_core_half_pd_c1-2) ref_lc_I_c1[0]<=0;
			end
			else begin
				ref_lc_I_c1[0]<=ref_lc_I_c1[0];
			end
	end

	always @(posedge clkdiv4_c1[0] or negedge clkdiv4_c1[0]) begin
			if(!clkdiv4_c1[0]) begin
				#2 ref_lc_Q_c1[0]<=1;
				#(clk_core_half_pd_c1-2) ref_lc_Q_c1[0]<=0;
			end
			else begin
				ref_lc_Q_c1[0]<=ref_lc_Q_c1[0];
			end
	end
	//-----------------------------------------------------------


	//Modelling signals for wrapper_cell

	parameter m=2; //n is always 2 in the first wrapper case
	parameter PERIOD_CORE_2_c1=400*(2**(m-1));
	real clk_core_half_pd_2_c1=(PERIOD_CORE_2_c1)/2;
	parameter PERIOD_INPUT_SIGNAL_2_c1=80000;//input signal is common for all
	parameter LEVEL_CROSSING_FACTOR_2_c1=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd_2_c1=PERIOD_INPUT_SIGNAL_2_c1/2;
	real clk_comp_high_half_pd_2_c1=(PERIOD_CORE_2_c1);
	real lc_offset_2_c1=LEVEL_CROSSING_FACTOR_2_c1*PERIOD_INPUT_SIGNAL_2_c1/2;
	real lc_high_2_c1=(PERIOD_INPUT_SIGNAL_2_c1/2)*(1-2*LEVEL_CROSSING_FACTOR_2_c1); //period until which lc input wave stays high


	//signal generation
	//phi1b_dig[1] generation

	always @(posedge clkdiv2_I_c1[1] or negedge clkdiv2_I_c1[1]) begin //make clk_master as clkdiv2 for other wrappers
			if(clkdiv2_I_c1[1]) begin
				#2 phi1b_dig_c1[1]<=0;
				#(clk_core_half_pd_2_c1-2) phi1b_dig_c1[1]<=1;
			end
			else begin
				phi1b_dig_c1[1]<=phi1b_dig_c1[1];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4_c1[1]=0;
			#(clk_core_half_pd_2_c1)clkdiv4_c1[1]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd_2_c1)clkdiv4_c1[1] = ~clkdiv4_c1[1]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4_c1[1] or negedge clkdiv4_c1[1]) begin
			if(clkdiv4_c1[1]) begin
				#2 ref_I_c1[1]<=1;
				#(clk_core_half_pd_2_c1-2) ref_I_c1[1]<=0;
			end
			else begin
				ref_I_c1[1]<=ref_I_c1[1];
			end
	end


	always @(posedge clkdiv4_c1[1] or negedge clkdiv4_c1[1]) begin
			if(clkdiv4_c1[1]) begin
				#2 ref_Q_c1[1]<=1;
				#(clk_core_half_pd_2_c1-2) ref_Q_c1[1]<=0;
			end
			else begin
				ref_Q_c1[1]<=ref_Q_c1[1];
			end
	end


	initial begin
			input_signal_I_c1[1]=0;
			#(clk_core_half_pd_2_c1) input_signal_I_c1[1]=1; 
			forever
				#(clk_input_half_pd_2_c1) input_signal_I_c1[1]=~input_signal_I_c1[1];
	end

	initial begin
			input_signal_Q_c1[1]=0;
			#(clk_core_half_pd_2_c1) input_signal_Q_c1[1]=1; 
			forever
				#(clk_input_half_pd_2_c1) input_signal_Q_c1[1]=~input_signal_Q_c1[1];
	end

	// lc signal modelling

	always @(posedge input_signal_I_c1[1]) begin
			input_lc_I_c1[1]<=0;
			#(lc_offset_2_c1) input_lc_I_c1[1]<=1;
			#(lc_high_2_c1) input_lc_I_c1[1]<=0; 
	end

	always @(posedge input_signal_Q_c1[1]) begin
			input_lc_Q_c1[1]<=0;
			#(lc_offset_2_c1) input_lc_Q_c1[1]<=1;
			#(lc_high_2_c1) input_lc_Q_c1[1]<=0; 
	end

	always @(posedge clkdiv4_c1[1] or negedge clkdiv4_c1[1]) begin
			if(!clkdiv4_c1[1]) begin
				#2 ref_lc_I_c1[1]<=1;
				#(clk_core_half_pd_2_c1-2) ref_lc_I_c1[1]<=0;
			end
			else begin
				ref_lc_I_c1[1]<=ref_lc_I_c1[1];
			end
	end

	always @(posedge clkdiv4_c1[1] or negedge clkdiv4_c1[1]) begin
			if(!clkdiv4_c1[1]) begin
				#2 ref_lc_Q_c1[1]<=1;
				#(clk_core_half_pd_2_c1-2) ref_lc_Q_c1[1]<=0;
			end
			else begin
				ref_lc_Q_c1[1]<=ref_lc_Q_c1[1];
			end
	end

	//signals for scalable dual core

	//parameters(specific)
	//Modelling signals for wrapper_first
	//--------------------------------------------------

	parameter nc2=3; //n is always 2 in the first wrapper case
	parameter PERIOD_CORE_c2=400*(2**(nc2-1));
	real clk_core_half_pd_c2=(PERIOD_CORE_c2)/2;
	parameter PERIOD_INPUT_SIGNAL_c2=40000;
	parameter LEVEL_CROSSING_FACTOR_c2=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd_c2=PERIOD_INPUT_SIGNAL_c2/2;
	real clk_comp_high_half_pd_c2=(PERIOD_CORE_c2);
	real lc_offset_c2=LEVEL_CROSSING_FACTOR_c2*PERIOD_INPUT_SIGNAL_c2/2;
	real lc_high_c2=(PERIOD_INPUT_SIGNAL_c2/2)*(1-2*LEVEL_CROSSING_FACTOR_c2); //period until which lc input wave stays high


	//signal generation
	always @(posedge clkdiv2_I_c2[0] or negedge clkdiv2_I_c2[0]) begin //make clk_master as clkdiv2 for other wrappers
			if(clkdiv2_I_c2[0]) begin
				#2 phi1b_dig_c2[0]<=0;
				#(clk_core_half_pd_c2-2) phi1b_dig_c2[0]<=1;
			end
			else begin
				phi1b_dig_c2[0]<=phi1b_dig_c2[0];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4_c2[0]=0;
			#(clk_core_half_pd_c2)clkdiv4_c2[0]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd_c2)clkdiv4_c2[0] = ~clkdiv4_c2[0]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4_c2[0] or negedge clkdiv4_c2[0]) begin
			if(clkdiv4_c2[0]) begin
				#2 ref_I_c2[0]<=1;
				#(clk_core_half_pd_c2-2) ref_I_c2[0]<=0;
			end
			else begin
				ref_I_c2[0]<=ref_I_c2[0];
			end
	end


	always @(posedge clkdiv4_c2[0] or negedge clkdiv4_c2[0]) begin
			if(clkdiv4_c2[0]) begin
				#2 ref_Q_c2[0]<=1;
				#(clk_core_half_pd_c2-2) ref_Q_c2[0]<=0;
			end
			else begin
				ref_Q_c2[0]<=ref_Q_c2[0];
			end
	end


	initial begin
			input_signal_I_c2[0]=0;
			#(clk_core_half_pd_c2) input_signal_I_c2[0]=1; 
			forever
				#(clk_input_half_pd_c2) input_signal_I_c2[0]=~input_signal_I_c2[0];
	end

	initial begin
			input_signal_Q_c2[0]=0;
			#(clk_core_half_pd_c2) input_signal_Q_c2[0]=1; 
			forever
				#(clk_input_half_pd_c2) input_signal_Q_c2[0]=~input_signal_Q_c2[0];
	end

	// lc signal modelling

	always @(posedge input_signal_I_c2[0]) begin
			input_lc_I_c2[10]<=0;
			#(lc_offset_c2) input_lc_I_c2[0]<=1;
			#(lc_high_c2) input_lc_I_c2[0]<=0; 
	end

	always @(posedge input_signal_Q_c2[0]) begin
			input_lc_Q_c2[0]<=0;
			#(lc_offset_c2) input_lc_Q_c2[0]<=1;
			#(lc_high_c2) input_lc_Q_c2[0]<=0; 
	end

	always @(posedge clkdiv4_c2[0] or negedge clkdiv4_c2[0]) begin
			if(!clkdiv4_c2[0]) begin
				#2 ref_lc_I_c2[0]<=1;
				#(clk_core_half_pd_c2-2) ref_lc_I_c2[0]<=0;
			end
			else begin
				ref_lc_I_c2[0]<=ref_lc_I_c2[0];
			end
	end

	always @(posedge clkdiv4_c2[0] or negedge clkdiv4_c2[0]) begin
			if(!clkdiv4_c2[0]) begin
				#2 ref_lc_Q_c2[0]<=1;
				#(clk_core_half_pd_c2-2) ref_lc_Q_c2[0]<=0;
			end
			else begin
				ref_lc_Q_c2[0]<=ref_lc_Q_c2[0];
			end
	end
	//-----------------------------------------------------------


	//Modelling signals for wrapper_cell

	parameter m_c2=4; //n is always 2 in the first wrapper case
	parameter PERIOD_CORE_2_c2=400*(2**(m_c2-1));
	real clk_core_half_pd_2_c2=(PERIOD_CORE_2_c2)/2;
	parameter PERIOD_INPUT_SIGNAL_2_c2=80000;//input signal is common for all
	parameter LEVEL_CROSSING_FACTOR_2_c2=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd_2_c2=PERIOD_INPUT_SIGNAL_2_c2/2;
	real clk_comp_high_half_pd_2_c2=(PERIOD_CORE_2_c2);
	real lc_offset_2_c2=LEVEL_CROSSING_FACTOR_2_c2*PERIOD_INPUT_SIGNAL_2_c2/2;
	real lc_high_2_c2=(PERIOD_INPUT_SIGNAL_2_c2/2)*(1-2*LEVEL_CROSSING_FACTOR_2_c2); //period until which lc input wave stays high


	//signal generation
	//phi1b_dig[1] generation

	always @(posedge clkdiv2_I_c2[1] or negedge clkdiv2_I_c2[1]) begin //make clk_master as clkdiv2 for other wrappers
			if(clkdiv2_I_c2[1]) begin
				#2 phi1b_dig_c2[1]<=0;
				#(clk_core_half_pd_2_c2-2) phi1b_dig_c2[1]<=1;
			end
			else begin
				phi1b_dig_c2[1]<=phi1b_dig_c2[1];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4_c2[1]=0;
			#(clk_core_half_pd_2_c2)clkdiv4_c2[1]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd_2_c2)clkdiv4_c2[1] = ~clkdiv4_c2[1]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4_c2[1] or negedge clkdiv4_c2[1]) begin
			if(clkdiv4_c2[1]) begin
				#2 ref_I_c2[1]<=1;
				#(clk_core_half_pd_2_c2-2) ref_I_c2[1]<=0;
			end
			else begin
				ref_I_c2[1]<=ref_I_c2[1];
			end
	end


	always @(posedge clkdiv4_c2[1] or negedge clkdiv4_c2[1]) begin
			if(clkdiv4_c2[1]) begin
				#2 ref_Q_c2[1]<=1;
				#(clk_core_half_pd_2_c2-2) ref_Q_c2[1]<=0;
			end
			else begin
				ref_Q_c2[1]<=ref_Q_c2[1];
			end
	end


	initial begin
			input_signal_I_c2[1]=0;
			#(clk_core_half_pd_2_c2) input_signal_I_c2[1]=1; 
			forever
				#(clk_input_half_pd_2_c2) input_signal_I_c2[1]=~input_signal_I_c2[1];
	end

	initial begin
			input_signal_Q_c2[1]=0;
			#(clk_core_half_pd_2_c2) input_signal_Q_c2[1]=1; 
			forever
				#(clk_input_half_pd_2_c2) input_signal_Q_c2[1]=~input_signal_Q_c2[1];
	end

	// lc signal modelling

	always @(posedge input_signal_I_c2[1]) begin
			input_lc_I_c2[1]<=0;
			#(lc_offset_2_c2) input_lc_I_c2[1]<=1;
			#(lc_high_2_c2) input_lc_I_c2[1]<=0; 
	end

	always @(posedge input_signal_Q_c2[1]) begin
			input_lc_Q_c2[1]<=0;
			#(lc_offset_2_c2) input_lc_Q_c2[1]<=1;
			#(lc_high_2_c2) input_lc_Q_c2[1]<=0; 
	end

	always @(posedge clkdiv4_c2[1] or negedge clkdiv4_c2[1]) begin
			if(!clkdiv4_c2[1]) begin
				#2 ref_lc_I_c2[1]<=1;
				#(clk_core_half_pd_2_c2-2) ref_lc_I_c2[1]<=0;
			end
			else begin
				ref_lc_I_c2[1]<=ref_lc_I_c2[1];
			end
	end

	always @(posedge clkdiv4_c2[1] or negedge clkdiv4_c2[1]) begin
			if(!clkdiv4_c2[1]) begin
				#2 ref_lc_Q_c2[1]<=1;
				#(clk_core_half_pd_2_c2-2) ref_lc_Q_c2[1]<=0;
			end
			else begin
				ref_lc_Q_c2[1]<=ref_lc_Q_c2[1];
			end
	end


	//-----------------------------------------------------------
	initial begin
		
		rstb=0;
		#5 rstb=1;
		ud_en=1;
		repeat(1008) @(posedge clk_master);
		#5 ud_en=0;
		repeat(200) @(posedge clk_master);
		#100;
		$finish;
	end
	endmodule
`endif
