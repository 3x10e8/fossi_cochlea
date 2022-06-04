`timescale 1ns/1ps
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rst_dff_n.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rst_dff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff_n.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_tff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/buffer.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/dlrtn.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/edge_ff_n.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/edge_ff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/fb.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/gray_selector_fb.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/inv_buffer.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/mux_2_1.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/tbuf.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/u_d_bin_counter.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_1.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_2.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_3.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_4.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_5.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_6.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_7.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_8.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/LO/lo.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/cclk/cclk_gen.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/dig_div2/dig_div2.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/dig_evegen/dig_evegen.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/edge_ff_gray.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_first_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_sine_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_tree_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/peripheral_gray.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/wrapper_first/wrapper_first.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/wrapper_cell/wrapper_cell.v"

module digital_unison(
	input rstb,clk_master,ud_en,//phi1b_dig[0] is corresponding to the first wrapper
	input [7:0]phi1b_dig, //more of these will be required for unison's testbench.	
	input [7:0]comp_high_I,comp_high_Q,				
	output wire [7:0]sin_out,cos_out,sin_outb,cos_outb,fb2_I,fb2_Q,fb1_Q,fb1_I,
	output wire [1:0]read_out_I,read_out_Q,
	output wire div2out_7,
	output wire [2:0]no_ones_below_out_7,
	output wire [10:1]gray_clk_out_7,
	output wire rstb_out_7,ud_en_out_7,clk_master_out_7);
	wire [6:0]div2out;
	wire [2:0]no_ones_below_out[0:6];
	wire [10:1]gray_clk_out[0:6]; //these will be common among all as they need to be shorted.
	wire [6:0]rstb_out,ud_en_out,clk_master_out;//[0] index corresponds to the output of first wrapper and [1] index to that of second wrapper.
	

wrapper_first w0(
	
	.rstb(rstb),
	.clk_master(clk_master),
	.phi1b_dig(phi1b_dig[0]),
	.ud_en(ud_en),
	.comp_high_I(comp_high_I[0]),
	.comp_high_Q(comp_high_Q[0]),
	.div2out(div2out[0]),
	.sin_out(sin_out[0]),
	.cos_out(cos_out[0]),
	.sin_outb(sin_outb[0]),
	.cos_outb(cos_outb[0]),
	.fb2_I(fb2_I[0]),
	.fb2_Q(fb2_Q[0]),
	.fb1_I(fb1_I[0]),
	.fb1_Q(fb1_Q[0]),
	.no_ones_below_out(no_ones_below_out[0]),//
	.gray_clk(gray_clk_out[0]),
	.read_out_I(read_out_I[1:0]),
	.read_out_Q(read_out_Q[1:0]),
	.rstb_out(rstb_out[0]),
	.ud_en_out(ud_en_out[0]),
	.clk_master_out(clk_master_out[0]));

genvar j;
generate for(j=0;j<=5;j=j+1)begin:wrapper_cell_loop
wrapper_cell w1(
	
	.rstb(rstb_out[j]),
	.clk_master(clk_master_out[j]),
	.phi1b_dig(phi1b_dig[j+1]),
	.ud_en(ud_en_out[j]),
	.comp_high_I(comp_high_I[j+1]),
	.comp_high_Q(comp_high_Q[j+1]),
	.clkdiv2(div2out[j]),
	.gray_clk_in(gray_clk_out[j]), ////gray clk from wrapper_first
	.no_ones_below_in(no_ones_below_out[j]),//
	.div2out(div2out[j+1]),
	.sin_out(sin_out[j+1]),
	.cos_out(cos_out[j+1]),
	.sin_outb(sin_outb[j+1]),
	.cos_outb(cos_outb[j+1]),
	.fb2_I(fb2_I[j+1]),
	.fb2_Q(fb2_Q[j+1]),
	.fb1_I(fb1_I[j+1]),
	.fb1_Q(fb1_Q[j+1]),
	.no_ones_below_out(no_ones_below_out[j+1]),//
	.gray_clk_out(gray_clk_out[j+1]),//
	.read_out_I(read_out_I[1:0]),
	.read_out_Q(read_out_Q[1:0]),
	.rstb_out(rstb_out[j+1]),
	.ud_en_out(ud_en_out[j+1]),
	.clk_master_out(clk_master_out[j+1]));
end
endgenerate

wrapper_cell w_last(

	.rstb(rstb_out[6]),
	.clk_master(clk_master_out[6]),
	.phi1b_dig(phi1b_dig[7]),
	.ud_en(ud_en_out[6]),
	.comp_high_I(comp_high_I[7]),
	.comp_high_Q(comp_high_Q[7]),
	.clkdiv2(div2out[6]),
	.gray_clk_in(gray_clk_out[6]), ////gray clk from wrapper_first
	.no_ones_below_in(no_ones_below_out[6]),//
	.div2out(div2out_7),
	.sin_out(sin_out[7]),
	.cos_out(cos_out[7]),
	.sin_outb(sin_outb[7]),
	.cos_outb(cos_outb[7]),
	.fb2_I(fb2_I[7]),
	.fb2_Q(fb2_Q[7]),
	.fb1_I(fb1_I[7]),
	.fb1_Q(fb1_Q[7]),
	.no_ones_below_out(no_ones_below_out_7[2:0]),//
	.gray_clk_out(gray_clk_out_7[10:1]),//
	.read_out_I(read_out_I[1:0]),
	.read_out_Q(read_out_Q[1:0]),
	.rstb_out(rstb_out_7),
	.ud_en_out(ud_en_out_7),
	.clk_master_out(clk_master_out_7));
endmodule

//
//testbench

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


module tb_digital_unison;
	reg rstb,clk_master,ud_en;//phi1b_dig[0] is corresponding to the first wrapper
	reg [7:0]phi1b_dig; //more of these will be required for unison's testbench.					
    wire [7:0]sin_out,cos_out,sin_outb,cos_outb,fb2_I,fb2_Q,fb1_Q,fb1_I;
	wire [1:0]read_out_I,read_out_Q;
	wire div2out_7;
	wire [10:1]gray_clk_out_7;
	wire [2:0]no_ones_below_out_7;
	wire rstb_out_7,ud_en_out_7,clk_master_out_7;
	reg [7:0]input_signal_I, input_signal_Q, ref_I, ref_Q, input_lc_I, input_lc_Q, ref_lc_I, ref_lc_Q, clkdiv4;
	wire [7:0]comp_high_int2_I, comp_high_int2_Q, comp_high_int_I, comp_high_int_Q, comp_high_I, comp_high_Q;

	digital_unison bank(
		.rstb(rstb),
		.clk_master(clk_master),
		.ud_en(ud_en),
		.phi1b_dig(phi1b_dig[7:0]),
		.comp_high_I(comp_high_I[7:0]),
		.comp_high_Q(comp_high_Q[7:0]),
		.sin_out(sin_out[7:0]),
		.cos_out(cos_out[7:0]),
		.sin_outb(sin_outb[7:0]),
		.cos_outb(cos_outb[7:0]),
		.fb1_I(fb1_I[7:0]),
		.fb1_Q(fb1_Q[7:0]),
		.fb2_I(fb2_I[7:0]),
		.fb2_Q(fb2_Q[7:0]),
		.read_out_I(read_out_I[1:0]),
		.read_out_Q(read_out_Q[1:0]),
		.div2out_7(div2out_7),
		.no_ones_below_out_7(no_ones_below_out_7[2:0]),
		.gray_clk_out_7(gray_clk_out_7[10:1]),
		.rstb_out_7(rstb_out_7),
		.ud_en_out_7(ud_en_out_7),
		.clk_master_out_7(clk_master_out_7));

	genvar i;
	generate for(i=0; i<=7;i=i+1)begin:loop1
	and_gate ag1(
			.in1(input_signal_I[i]),
			.in2(ref_I[i]),
			.out(comp_high_int_I[i]));

	and_gate ag2(
			.in1(input_lc_I[i]),
			.in2(ref_lc_I[i]),
			.out(comp_high_int2_I[i]));

	or_gate or_(
			.in1(comp_high_int_I[i]),
			.in2(comp_high_int2_I[i]),
			.out(comp_high_I[i]));


	and_gate ag3(
			.in1(input_signal_Q[i]),
			.in2(ref_Q[i]),
			.out(comp_high_int_Q[i]));

	and_gate ag4(
			.in1(input_lc_Q[i]),
			.in2(ref_lc_Q[i]),
			.out(comp_high_int2_Q[i]));

	or_gate or_1(
			.in1(comp_high_int_Q[i]),
			.in2(comp_high_int2_Q[i]),
			.out(comp_high_Q[i]));
	end
	endgenerate


	//parameters(common)
	parameter PERIOD_MASTER=400; //change the frequencu of the master clk to model a different pitch unison
	real clk_master_hf_pd=PERIOD_MASTER/2;



	//master_clk
	initial begin
		clk_master=0;
			forever
				#(clk_master_hf_pd)clk_master = ~clk_master; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		$dumpfile("digital_unison.vcd");
		$dumpvars;
	end

	//parameters(specific)
	//Modelling signals for wrapper_first
	//--------------------------------------------------

	parameter n1=1; //n is always 1 in the first wrapper case
	parameter PERIOD_CORE=400*(2**(n1-1));
	real clk_core_half_pd=(PERIOD_CORE)/2;
	parameter PERIOD_INPUT_SIGNAL=40000;
	parameter LEVEL_CROSSING_FACTOR=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd=PERIOD_INPUT_SIGNAL/2;
	real clk_comp_high_half_pd=(PERIOD_CORE);
	real lc_offset=LEVEL_CROSSING_FACTOR*PERIOD_INPUT_SIGNAL/2;
	real lc_high=(PERIOD_INPUT_SIGNAL/2)*(1-2*LEVEL_CROSSING_FACTOR); //period until which lc input wave stays high


	//signal generation
	always @(posedge clk_master or negedge clk_master) begin //make clk_master as clkdiv2 for other wrappers
			if(clk_master) begin
				#2 phi1b_dig[0]<=0;
				#(clk_core_half_pd-2) phi1b_dig[0]<=1;
			end
			else begin
				phi1b_dig[0]<=phi1b_dig[0];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4[0]=0;
			#(clk_core_half_pd)clkdiv4[0]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd)clkdiv4[0] = ~clkdiv4[0]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4[0] or negedge clkdiv4[0]) begin
			if(clkdiv4[0]) begin
				#2 ref_I[0]<=1;
				#(clk_core_half_pd-2) ref_I[0]<=0;
			end
			else begin
				ref_I[0]<=ref_I[0];
			end
	end


	always @(posedge clkdiv4[0] or negedge clkdiv4[0]) begin
			if(clkdiv4[0]) begin
				#2 ref_Q[0]<=1;
				#(clk_core_half_pd-2) ref_Q[0]<=0;
			end
			else begin
				ref_Q[0]<=ref_Q[0];
			end
	end


	initial begin
			input_signal_I[0]=0;
			#(clk_core_half_pd) input_signal_I[0]=1; 
			forever
				#(clk_input_half_pd) input_signal_I[0]=~input_signal_I[0];
	end

	initial begin
			input_signal_Q[0]=0;
			#(clk_core_half_pd) input_signal_Q[0]=1; 
			forever
				#(clk_input_half_pd) input_signal_Q[0]=~input_signal_Q[0];
	end

	// lc signal modelling

	always @(posedge input_signal_I[0]) begin
			input_lc_I[0]<=0;
			#(lc_offset) input_lc_I[0]<=1;
			#(lc_high) input_lc_I[0]<=0; 
	end

	always @(posedge input_signal_Q[0]) begin
			input_lc_Q[0]<=0;
			#(lc_offset) input_lc_Q[0]<=1;
			#(lc_high) input_lc_Q[0]<=0; 
	end

	always @(posedge clkdiv4[0] or negedge clkdiv4[0]) begin
			if(!clkdiv4[0]) begin
				#2 ref_lc_I[0]<=1;
				#(clk_core_half_pd-2) ref_lc_I[0]<=0;
			end
			else begin
				ref_lc_I[0]<=ref_lc_I[0];
			end
	end

	always @(posedge clkdiv4[0] or negedge clkdiv4[0]) begin
			if(!clkdiv4[0]) begin
				#2 ref_lc_Q[0]<=1;
				#(clk_core_half_pd-2) ref_lc_Q[0]<=0;
			end
			else begin
				ref_lc_Q[0]<=ref_lc_Q[0];
			end
	end
	//-----------------------------------------------------------


	//Modelling signals for wrapper_cell

	parameter n2=2; //n is always 2 in the first wrapper case
	parameter PERIOD_CORE_2=400*(2**(n2-1));
	real clk_core_half_pd_2=(PERIOD_CORE_2)/2;
	parameter PERIOD_INPUT_SIGNAL_2=80000;//input signal is common for all
	parameter LEVEL_CROSSING_FACTOR_2=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd_2=PERIOD_INPUT_SIGNAL_2/2;
	real clk_comp_high_half_pd_2=(PERIOD_CORE_2);
	real lc_offset_2=LEVEL_CROSSING_FACTOR_2*PERIOD_INPUT_SIGNAL_2/2;
	real lc_high_2=(PERIOD_INPUT_SIGNAL_2/2)*(1-2*LEVEL_CROSSING_FACTOR_2); //period until which lc input wave stays high


	//signal generation
	//phi1b_dig[1] generation

	always @(posedge bank.div2out[0] or negedge bank.div2out[0]) begin //make clk_master as clkdiv2 for other wrappers
			if(bank.div2out[0]) begin
				#2 phi1b_dig[1]<=0;
				#(clk_core_half_pd_2-2) phi1b_dig[1]<=1;
			end
			else begin
				phi1b_dig[1]<=phi1b_dig[1];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4[1]=0;
			#(clk_core_half_pd_2)clkdiv4[1]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd_2)clkdiv4[1] = ~clkdiv4[1]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4[1] or negedge clkdiv4[1]) begin
			if(clkdiv4[1]) begin
				#2 ref_I[1]<=1;
				#(clk_core_half_pd_2-2) ref_I[1]<=0;
			end
			else begin
				ref_I[1]<=ref_I[1];
			end
	end


	always @(posedge clkdiv4[1] or negedge clkdiv4[1]) begin
			if(clkdiv4[1]) begin
				#2 ref_Q[1]<=1;
				#(clk_core_half_pd_2-2) ref_Q[1]<=0;
			end
			else begin
				ref_Q[1]<=ref_Q[1];
			end
	end


	initial begin
			input_signal_I[1]=0;
			#(clk_core_half_pd_2) input_signal_I[1]=1; 
			forever
				#(clk_input_half_pd_2) input_signal_I[1]=~input_signal_I[1];
	end

	initial begin
			input_signal_Q[1]=0;
			#(clk_core_half_pd_2) input_signal_Q[1]=1; 
			forever
				#(clk_input_half_pd_2) input_signal_Q[1]=~input_signal_Q[1];
	end

	// lc signal modelling

	always @(posedge input_signal_I[1]) begin
			input_lc_I[1]<=0;
			#(lc_offset_2) input_lc_I[1]<=1;
			#(lc_high_2) input_lc_I[1]<=0; 
	end

	always @(posedge input_signal_Q[1]) begin
			input_lc_Q[1]<=0;
			#(lc_offset_2) input_lc_Q[1]<=1;
			#(lc_high_2) input_lc_Q[1]<=0; 
	end

	always @(posedge clkdiv4[1] or negedge clkdiv4[1]) begin
			if(!clkdiv4[1]) begin
				#2 ref_lc_I[1]<=1;
				#(clk_core_half_pd_2-2) ref_lc_I[1]<=0;
			end
			else begin
				ref_lc_I[1]<=ref_lc_I[1];
			end
	end

	always @(posedge clkdiv4[1] or negedge clkdiv4[1]) begin
			if(!clkdiv4[1]) begin
				#2 ref_lc_Q[1]<=1;
				#(clk_core_half_pd_2-2) ref_lc_Q[1]<=0;
			end
			else begin
				ref_lc_Q[1]<=ref_lc_Q[1];
			end
	end

	//-----------------------------------------------------------
	//signals for core 3
	//-----------------------------------------------------------
	//Modelling signals for wrapper_cell

	parameter n3=3; //n is always 2 in the first wrapper case
	parameter PERIOD_CORE_3=400*(2**(n3-1));
	real clk_core_half_pd_3=(PERIOD_CORE_3)/2;
	parameter PERIOD_INPUT_SIGNAL_3=120000;//input signal is common for all
	parameter LEVEL_CROSSING_FACTOR_3=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd_3=PERIOD_INPUT_SIGNAL_3/2;
	real clk_comp_high_half_pd_3=(PERIOD_CORE_3);
	real lc_offset_3=LEVEL_CROSSING_FACTOR_3*PERIOD_INPUT_SIGNAL_3/2;
	real lc_high_3=(PERIOD_INPUT_SIGNAL_3/2)*(1-2*LEVEL_CROSSING_FACTOR_3); //period until which lc input wave stays high


	//signal generation
	//phi1b_dig[1] generation

	always @(posedge bank.div2out[1] or negedge bank.div2out[1]) begin //make clk_master as clkdiv2 for other wrappers
			if(bank.div2out[1]) begin
				#2 phi1b_dig[2]<=0;
				#(clk_core_half_pd_3-2) phi1b_dig[2]<=1;
			end
			else begin
				phi1b_dig[2]<=phi1b_dig[2];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4[2]=0;
			#(clk_core_half_pd_3)clkdiv4[2]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd_3)clkdiv4[2] = ~clkdiv4[2]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4[2] or negedge clkdiv4[2]) begin
			if(clkdiv4[2]) begin
				#2 ref_I[2]<=1;
				#(clk_core_half_pd_3-2) ref_I[2]<=0;
			end
			else begin
				ref_I[2]<=ref_I[2];
			end
	end


	always @(posedge clkdiv4[2] or negedge clkdiv4[2]) begin
			if(clkdiv4[2]) begin
				#2 ref_Q[2]<=1;
				#(clk_core_half_pd_3-2) ref_Q[2]<=0;
			end
			else begin
				ref_Q[2]<=ref_Q[2];
			end
	end


	initial begin
			input_signal_I[2]=0;
			#(clk_core_half_pd_3) input_signal_I[2]=1; 
			forever
				#(clk_input_half_pd_3) input_signal_I[2]=~input_signal_I[2];
	end

	initial begin
			input_signal_Q[2]=0;
			#(clk_core_half_pd_3) input_signal_Q[2]=1; 
			forever
				#(clk_input_half_pd_3) input_signal_Q[2]=~input_signal_Q[2];
	end

	// lc signal modelling

	always @(posedge input_signal_I[2]) begin
			input_lc_I[2]<=0;
			#(lc_offset_3) input_lc_I[2]<=1;
			#(lc_high_3) input_lc_I[2]<=0; 
	end

	always @(posedge input_signal_Q[2]) begin
			input_lc_Q[2]<=0;
			#(lc_offset_3) input_lc_Q[2]<=1;
			#(lc_high_3) input_lc_Q[2]<=0; 
	end

	always @(posedge clkdiv4[2] or negedge clkdiv4[2]) begin
			if(!clkdiv4[2]) begin
				#2 ref_lc_I[2]<=1;
				#(clk_core_half_pd_3-2) ref_lc_I[2]<=0;
			end
			else begin
				ref_lc_I[2]<=ref_lc_I[2];
			end
	end

	always @(posedge clkdiv4[2] or negedge clkdiv4[2]) begin
			if(!clkdiv4[2]) begin
				#2 ref_lc_Q[2]<=1;
				#(clk_core_half_pd_3-2) ref_lc_Q[2]<=0;
			end
			else begin
				ref_lc_Q[2]<=ref_lc_Q[2];
			end
	end

	//-----------------------------------------------------------
	//signals for core 4
	//-----------------------------------------------------------
	//Modelling signals for wrapper_cell

	parameter n4=4; //n is always 2 in the first wrapper case
	parameter PERIOD_CORE_4=400*(2**(n4-1));
	real clk_core_half_pd_4=(PERIOD_CORE_4)/2;
	parameter PERIOD_INPUT_SIGNAL_4=160000;//input signal is common for all
	parameter LEVEL_CROSSING_FACTOR_4=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd_4=PERIOD_INPUT_SIGNAL_4/2;
	real clk_comp_high_half_pd_4=(PERIOD_CORE_4);
	real lc_offset_4=LEVEL_CROSSING_FACTOR_4*PERIOD_INPUT_SIGNAL_4/2;
	real lc_high_4=(PERIOD_INPUT_SIGNAL_4/2)*(1-2*LEVEL_CROSSING_FACTOR_4); //period until which lc input wave stays high


	//signal generation
	//phi1b_dig[1] generation

	always @(posedge bank.div2out[2] or negedge bank.div2out[2]) begin //make clk_master as clkdiv2 for other wrappers
			if(bank.div2out[2]) begin
				#2 phi1b_dig[3]<=0;
				#(clk_core_half_pd_4-2) phi1b_dig[3]<=1;
			end
			else begin
				phi1b_dig[3]<=phi1b_dig[3];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4[3]=0;
			#(clk_core_half_pd_4)clkdiv4[3]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd_4)clkdiv4[3] = ~clkdiv4[3]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4[3] or negedge clkdiv4[3]) begin
			if(clkdiv4[3]) begin
				#2 ref_I[3]<=1;
				#(clk_core_half_pd_4-2) ref_I[3]<=0;
			end
			else begin
				ref_I[3]<=ref_I[3];
			end
	end


	always @(posedge clkdiv4[3] or negedge clkdiv4[3]) begin
			if(clkdiv4[3]) begin
				#2 ref_Q[3]<=1;
				#(clk_core_half_pd_4) ref_Q[3]<=0;
			end
			else begin
				ref_Q[3]<=ref_Q[3];
			end
	end


	initial begin
			input_signal_I[3]=0;
			#(clk_core_half_pd_4) input_signal_I[3]=1; 
			forever
				#(clk_input_half_pd_4) input_signal_I[3]=~input_signal_I[3];
	end

	initial begin
			input_signal_Q[3]=0;
			#(clk_core_half_pd_4) input_signal_Q[3]=1; 
			forever
				#(clk_input_half_pd_4) input_signal_Q[3]=~input_signal_Q[3];
	end

	// lc signal modelling

	always @(posedge input_signal_I[3]) begin
			input_lc_I[3]<=0;
			#(lc_offset_4) input_lc_I[3]<=1;
			#(lc_high_4) input_lc_I[3]<=0; 
	end

	always @(posedge input_signal_Q[3]) begin
			input_lc_Q[3]<=0;
			#(lc_offset_4) input_lc_Q[3]<=1;
			#(lc_high_4) input_lc_Q[3]<=0; 
	end

	always @(posedge clkdiv4[3] or negedge clkdiv4[3]) begin
			if(!clkdiv4[3]) begin
				#2 ref_lc_I[3]<=1;
				#(clk_core_half_pd_4-2) ref_lc_I[3]<=0;
			end
			else begin
				ref_lc_I[3]<=ref_lc_I[3];
			end
	end

	always @(posedge clkdiv4[3] or negedge clkdiv4[3]) begin
			if(!clkdiv4[3]) begin
				#2 ref_lc_Q[3]<=1;
				#(clk_core_half_pd_4-2) ref_lc_Q[3]<=0;
			end
			else begin
				ref_lc_Q[3]<=ref_lc_Q[3];
			end
	end


	//-----------------------------------------------------------
	//signals for core 5
	//-----------------------------------------------------------
	//Modelling signals for wrapper_cell

	parameter n5=5; //n is always 2 in the first wrapper case
	parameter PERIOD_CORE_5=400*(2**(n5-1));
	real clk_core_half_pd_5=(PERIOD_CORE_5)/2;
	parameter PERIOD_INPUT_SIGNAL_5=200000;//input signal is common for all
	parameter LEVEL_CROSSING_FACTOR_5=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd_5=PERIOD_INPUT_SIGNAL_5/2;
	real clk_comp_high_half_pd_5=(PERIOD_CORE_5);
	real lc_offset_5=LEVEL_CROSSING_FACTOR_5*PERIOD_INPUT_SIGNAL_5/2;
	real lc_high_5=(PERIOD_INPUT_SIGNAL_5/2)*(1-2*LEVEL_CROSSING_FACTOR_5); //period until which lc input wave stays high


	//signal generation
	//phi1b_dig[1] generation

	always @(posedge bank.div2out[3] or negedge bank.div2out[3]) begin //make clk_master as clkdiv2 for other wrappers
			if(bank.div2out[3]) begin
				#2 phi1b_dig[4]<=0;
				#(clk_core_half_pd_5-2) phi1b_dig[4]<=1;
			end
			else begin
				phi1b_dig[4]<=phi1b_dig[4];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4[4]=0;
			#(clk_core_half_pd_5)clkdiv4[4]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd_5)clkdiv4[4] = ~clkdiv4[4]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4[4] or negedge clkdiv4[4]) begin
			if(clkdiv4[4]) begin
				#2 ref_I[4]<=1;
				#(clk_core_half_pd_5-2) ref_I[4]<=0;
			end
			else begin
				ref_I[4]<=ref_I[4];
			end
	end


	always @(posedge clkdiv4[4] or negedge clkdiv4[4]) begin
			if(clkdiv4[4]) begin
				#2 ref_Q[4]<=1;
				#(clk_core_half_pd_5) ref_Q[4]<=0;
			end
			else begin
				ref_Q[4]<=ref_Q[4];
			end
	end


	initial begin
			input_signal_I[4]=0;
			#(clk_core_half_pd_5) input_signal_I[4]=1; 
			forever
				#(clk_input_half_pd_5) input_signal_I[4]=~input_signal_I[4];
	end

	initial begin
			input_signal_Q[4]=0;
			#(clk_core_half_pd_5) input_signal_Q[4]=1; 
			forever
				#(clk_input_half_pd_5) input_signal_Q[4]=~input_signal_Q[4];
	end

	// lc signal modelling

	always @(posedge input_signal_I[4]) begin
			input_lc_I[4]<=0;
			#(lc_offset_5) input_lc_I[4]<=1;
			#(lc_high_5) input_lc_I[4]<=0; 
	end

	always @(posedge input_signal_Q[4]) begin
			input_lc_Q[4]<=0;
			#(lc_offset_5) input_lc_Q[4]<=1;
			#(lc_high_5) input_lc_Q[4]<=0; 
	end

	always @(posedge clkdiv4[4] or negedge clkdiv4[4]) begin
			if(!clkdiv4[4]) begin
				#2 ref_lc_I[4]<=1;
				#(clk_core_half_pd_5-2) ref_lc_I[4]<=0;
			end
			else begin
				ref_lc_I[4]<=ref_lc_I[4];
			end
	end

	always @(posedge clkdiv4[4] or negedge clkdiv4[4]) begin
			if(!clkdiv4[4]) begin
				#2 ref_lc_Q[4]<=1;
				#(clk_core_half_pd_5-2) ref_lc_Q[4]<=0;
			end
			else begin
				ref_lc_Q[4]<=ref_lc_Q[4];
			end
	end



	//-----------------------------------------------------------
	//signals for core 6
	//-----------------------------------------------------------
	//Modelling signals for wrapper_cell

	parameter n6=6; //n is always 2 in the first wrapper case
	parameter PERIOD_CORE_6=400*(2**(n6-1));
	real clk_core_half_pd_6=(PERIOD_CORE_6)/2;
	parameter PERIOD_INPUT_SIGNAL_6=240000;//input signal is common for all
	parameter LEVEL_CROSSING_FACTOR_6=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd_6=PERIOD_INPUT_SIGNAL_6/2;
	real clk_comp_high_half_pd_6=(PERIOD_CORE_6);
	real lc_offset_6=LEVEL_CROSSING_FACTOR_6*PERIOD_INPUT_SIGNAL_6/2;
	real lc_high_6=(PERIOD_INPUT_SIGNAL_6/2)*(1-2*LEVEL_CROSSING_FACTOR_6); //period until which lc input wave stays high


	//signal generation
	//phi1b_dig[1] generation

	always @(posedge bank.div2out[4] or negedge bank.div2out[4]) begin //make clk_master as clkdiv2 for other wrappers
			if(bank.div2out[4]) begin
				#2 phi1b_dig[5]<=0;
				#(clk_core_half_pd_6-2) phi1b_dig[5]<=1;
			end
			else begin
				phi1b_dig[5]<=phi1b_dig[5];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4[5]=0;
			#(clk_core_half_pd_6)clkdiv4[5]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd_6)clkdiv4[5] = ~clkdiv4[5]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4[5] or negedge clkdiv4[5]) begin
			if(clkdiv4[5]) begin
				#2 ref_I[5]<=1;
				#(clk_core_half_pd_6-2) ref_I[5]<=0;
			end
			else begin
				ref_I[5]<=ref_I[5];
			end
	end


	always @(posedge clkdiv4[5] or negedge clkdiv4[5]) begin
			if(clkdiv4[5]) begin
				#2 ref_Q[5]<=1;
				#(clk_core_half_pd_6) ref_Q[5]<=0;
			end
			else begin
				ref_Q[5]<=ref_Q[5];
			end
	end


	initial begin
			input_signal_I[5]=0;
			#(clk_core_half_pd_6) input_signal_I[5]=1; 
			forever
				#(clk_input_half_pd_6) input_signal_I[5]=~input_signal_I[5];
	end

	initial begin
			input_signal_Q[5]=0;
			#(clk_core_half_pd_6) input_signal_Q[5]=1; 
			forever
				#(clk_input_half_pd_6) input_signal_Q[5]=~input_signal_Q[5];
	end

	// lc signal modelling

	always @(posedge input_signal_I[5]) begin
			input_lc_I[5]<=0;
			#(lc_offset_6) input_lc_I[5]<=1;
			#(lc_high_6) input_lc_I[5]<=0; 
	end

	always @(posedge input_signal_Q[5]) begin
			input_lc_Q[5]<=0;
			#(lc_offset_6) input_lc_Q[5]<=1;
			#(lc_high_6) input_lc_Q[5]<=0; 
	end

	always @(posedge clkdiv4[5] or negedge clkdiv4[5]) begin
			if(!clkdiv4[5]) begin
				#2 ref_lc_I[5]<=1;
				#(clk_core_half_pd_6-2) ref_lc_I[5]<=0;
			end
			else begin
				ref_lc_I[5]<=ref_lc_I[5];
			end
	end

	always @(posedge clkdiv4[5] or negedge clkdiv4[5]) begin
			if(!clkdiv4[5]) begin
				#2 ref_lc_Q[5]<=1;
				#(clk_core_half_pd_5-2) ref_lc_Q[5]<=0;
			end
			else begin
				ref_lc_Q[5]<=ref_lc_Q[5];
			end
	end

	//-----------------------------------------------------------
	//signals for core 7
	//-----------------------------------------------------------
	//Modelling signals for wrapper_cell

	parameter n7=7; //n is always 2 in the first wrapper case
	parameter PERIOD_CORE_7=400*(2**(n7-1));
	real clk_core_half_pd_7=(PERIOD_CORE_7)/2;
	parameter PERIOD_INPUT_SIGNAL_7=280000;//input signal is common for all
	parameter LEVEL_CROSSING_FACTOR_7=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd_7=PERIOD_INPUT_SIGNAL_7/2;
	real clk_comp_high_half_pd_7=(PERIOD_CORE_7);
	real lc_offset_7=LEVEL_CROSSING_FACTOR_7*PERIOD_INPUT_SIGNAL_7/2;
	real lc_high_7=(PERIOD_INPUT_SIGNAL_7/2)*(1-2*LEVEL_CROSSING_FACTOR_7); //period until which lc input wave stays high


	//signal generation
	//phi1b_dig[1] generation

	always @(posedge bank.div2out[5] or negedge bank.div2out[5]) begin //make clk_master as clkdiv2 for other wrappers
			if(bank.div2out[5]) begin
				#2 phi1b_dig[6]<=0;
				#(clk_core_half_pd_7-2) phi1b_dig[6]<=1;
			end
			else begin
				phi1b_dig[6]<=phi1b_dig[6];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4[6]=0;
			#(clk_core_half_pd_7)clkdiv4[6]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd_7)clkdiv4[6] = ~clkdiv4[6]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4[6] or negedge clkdiv4[6]) begin
			if(clkdiv4[6]) begin
				#2 ref_I[6]<=1;
				#(clk_core_half_pd_7-2) ref_I[6]<=0;
			end
			else begin
				ref_I[6]<=ref_I[6];
			end
	end


	always @(posedge clkdiv4[6] or negedge clkdiv4[6]) begin
			if(clkdiv4[6]) begin
				#2 ref_Q[6]<=1;
				#(clk_core_half_pd_7) ref_Q[6]<=0;
			end
			else begin
				ref_Q[6]<=ref_Q[6];
			end
	end


	initial begin
			input_signal_I[6]=0;
			#(clk_core_half_pd_7) input_signal_I[6]=1; 
			forever
				#(clk_input_half_pd_7) input_signal_I[6]=~input_signal_I[6];
	end

	initial begin
			input_signal_Q[6]=0;
			#(clk_core_half_pd_7) input_signal_Q[6]=1; 
			forever
				#(clk_input_half_pd_7) input_signal_Q[6]=~input_signal_Q[6];
	end

	// lc signal modelling

	always @(posedge input_signal_I[6]) begin
			input_lc_I[6]<=0;
			#(lc_offset_7) input_lc_I[6]<=1;
			#(lc_high_7) input_lc_I[6]<=0; 
	end

	always @(posedge input_signal_Q[6]) begin
			input_lc_Q[6]<=0;
			#(lc_offset_7) input_lc_Q[6]<=1;
			#(lc_high_7) input_lc_Q[6]<=0; 
	end

	always @(posedge clkdiv4[6] or negedge clkdiv4[6]) begin
			if(!clkdiv4[6]) begin
				#2 ref_lc_I[6]<=1;
				#(clk_core_half_pd_7-2) ref_lc_I[6]<=0;
			end
			else begin
				ref_lc_I[6]<=ref_lc_I[6];
			end
	end

	always @(posedge clkdiv4[6] or negedge clkdiv4[6]) begin
			if(!clkdiv4[6]) begin
				#2 ref_lc_Q[6]<=1;
				#(clk_core_half_pd_7-2) ref_lc_Q[6]<=0;
			end
			else begin
				ref_lc_Q[6]<=ref_lc_Q[6];
			end
	end
	//-----------------------------------------------------------
	//signals for core 8
	//-----------------------------------------------------------
	//Modelling signals for wrapper_cell

	parameter n8=8; //n is always 2 in the first wrapper case
	parameter PERIOD_CORE_8=400*(2**(n8-1));
	real clk_core_half_pd_8=(PERIOD_CORE_8)/2;
	parameter PERIOD_INPUT_SIGNAL_8=320000;//input signal is common for all
	parameter LEVEL_CROSSING_FACTOR_8=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd_8=PERIOD_INPUT_SIGNAL_8/2;
	real clk_comp_high_half_pd_8=(PERIOD_CORE_8);
	real lc_offset_8=LEVEL_CROSSING_FACTOR_8*PERIOD_INPUT_SIGNAL_8/2;
	real lc_high_8=(PERIOD_INPUT_SIGNAL_8/2)*(1-2*LEVEL_CROSSING_FACTOR_8); //period until which lc input wave stays high


	//signal generation
	//phi1b_dig[1] generation

	always @(posedge bank.div2out[6] or negedge bank.div2out[6]) begin //make clk_master as clkdiv2 for other wrappers
			if(bank.div2out[6]) begin
				#2 phi1b_dig[7]<=0;
				#(clk_core_half_pd_8-2) phi1b_dig[7]<=1;
			end
			else begin
				phi1b_dig[7]<=phi1b_dig[7];
			end
	end

	//modelling of comp_high

	initial begin
			clkdiv4[7]=0;
			#(clk_core_half_pd_8)clkdiv4[7]=1;
			//#(clk_master_half_pd) clkdiv2=1;
			forever
				#(clk_comp_high_half_pd_8)clkdiv4[7] = ~clkdiv4[7]; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv4[7] or negedge clkdiv4[7]) begin
			if(clkdiv4[7]) begin
				#2 ref_I[7]<=1;
				#(clk_core_half_pd_8-2) ref_I[7]<=0;
			end
			else begin
				ref_I[7]<=ref_I[7];
			end
	end


	always @(posedge clkdiv4[7] or negedge clkdiv4[7]) begin
			if(clkdiv4[7]) begin
				#2 ref_Q[7]<=1;
				#(clk_core_half_pd_8) ref_Q[7]<=0;
			end
			else begin
				ref_Q[7]<=ref_Q[7];
			end
	end


	initial begin
			input_signal_I[7]=0;
			#(clk_core_half_pd_8) input_signal_I[7]=1; 
			forever
				#(clk_input_half_pd_8) input_signal_I[7]=~input_signal_I[7];
	end

	initial begin
			input_signal_Q[7]=0;
			#(clk_core_half_pd_8) input_signal_Q[7]=1; 
			forever
				#(clk_input_half_pd_8) input_signal_Q[7]=~input_signal_Q[7];
	end

	// lc signal modelling

	always @(posedge input_signal_I[7]) begin
			input_lc_I[7]<=0;
			#(lc_offset_8) input_lc_I[7]<=1;
			#(lc_high_8) input_lc_I[7]<=0; 
	end

	always @(posedge input_signal_Q[7]) begin
			input_lc_Q[7]<=0;
			#(lc_offset_8) input_lc_Q[7]<=1;
			#(lc_high_8) input_lc_Q[7]<=0; 
	end

	always @(posedge clkdiv4[7] or negedge clkdiv4[7]) begin
			if(!clkdiv4[7]) begin
				#2 ref_lc_I[7]<=1;
				#(clk_core_half_pd_8-2) ref_lc_I[7]<=0;
			end
			else begin
				ref_lc_I[7]<=ref_lc_I[7];
			end
	end

	always @(posedge clkdiv4[7] or negedge clkdiv4[7]) begin
			if(!clkdiv4[7]) begin
				#2 ref_lc_Q[7]<=1;
				#(clk_core_half_pd_8-2) ref_lc_Q[7]<=0;
			end
			else begin
				ref_lc_Q[7]<=ref_lc_Q[7];
			end
	end


	//-----------------------------------------------------------
	initial begin
		
		rstb=0;
		#5 rstb=1;
		ud_en=1;
		repeat(100008) @(posedge clk_master);
		#5 ud_en=0;
		repeat(200) @(posedge clk_master);
		#100;
		$finish;
	end
endmodule