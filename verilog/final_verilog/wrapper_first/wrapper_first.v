/*
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
*/
module wrapper_first(
	input rstb,clk_master,phi1b_dig,ud_en, //ud_en is common for all the cores and unisons.
	input comp_high_I,comp_high_Q, 
	output wire div2out,sin_out,cos_out,sin_outb,cos_outb, //sin_outb will be same as sin_out as the inverter and buffer will be added near the mux switch.
	output wire [2:0]no_ones_below_out,
	output wire [10:1]gray_clk,
	output wire fb2_I,fb2_Q,fb1_Q,fb1_I,cclk,
	output wire [1:0]read_out_I,read_out_Q, //fb1_I:fb_I+ve, fb2_I=fb_I-ve 
	output wire rstb_out,clk_master_out,ud_en_out);
	wire q_sine;								//read_out_I[0]=out_mux_eve
	wire comp_out_I,comp_out_Q,eve_I,eve_Q,polxevent_I,polxevent_Q;
	wire gray_clk_0;

	peripheral_gray gray_gen(
		
		.rstb(rstb),
		.clk_master(clk_master),
		.gray_clk({gray_clk[10:1],gray_clk_0}),
		.q_sine(q_sine),
		.no_ones_below_out(no_ones_below_out[2:0]));

	lo bank1(
		.gray_clk(gray_clk[7:1]),
		.gray_sine(q_sine),
		.sin_out(sin_out),
		.cos_out(cos_out));

	dig_div2 div2(
		.clkdiv2(clk_master),
		.rstb(rstb),
		.div2out(div2out),
		.cclk(cclk));

	dig_evegen POL_EVE_I(
		.comp_high(comp_high_I),
		.phi1b_dig(phi1b_dig),
		.rstb(rstb),
		.eve(eve_I),
		.polxevent(polxevent_I),
		.comp_out(comp_out_I));

	dig_evegen POL_EVE_Q(
		.comp_high(comp_high_Q),
		.phi1b_dig(phi1b_dig),
		.eve(eve_Q),
		.rstb(rstb),
		.polxevent(polxevent_Q),
		.comp_out(comp_out_Q));

	fb fb_block_I(
		
		.clkdiv2(clk_master),
		.comp_out(comp_out_I),
		.cclk(cclk),
		.rstb(rstb),
		.ud_en(ud_en),
		.gray_clk(gray_clk[10:1]),
		.fb_out(fb1_I));

	fb fb_block_Q(
		
		.clkdiv2(clk_master),
		.comp_out(comp_out_Q),
		.cclk(cclk),
		.rstb(rstb),
		.ud_en(ud_en),
		.gray_clk(gray_clk[10:1]),
		.fb_out(fb1_Q));

	ro_block_1 ro_block_I(
		
		.gray(gray_clk_0), //parameterize the testbench for all the readouts
		.clk_master(clk_master),
		.in_eve(eve_I),
		.in_pol_eve(polxevent_I),
		.out_mux_eve(read_out_I[0]),
		.out_mux_pol_eve(read_out_I[1]));

	ro_block_1 ro_block_Q(
		
		.gray(gray_clk_0), //parameterize the testbench for all the readouts
		.clk_master(clk_master),
		.in_eve(eve_Q),
		.in_pol_eve(polxevent_Q),
		.out_mux_eve(read_out_Q[0]),
		.out_mux_pol_eve(read_out_Q[1]));

	assign fb2_I=fb1_I; //All these ports ahve been shorted as the inversion or buffering is done later on.
	assign fb2_Q=fb1_Q; //fb2_I is the inverted feedback for the -ve part of the loop.
	assign sin_outb=sin_out; //fb1_I is the actual feedback for the +ve part of the loop
	assign cos_outb=cos_out;

	assign ud_en_out=ud_en;
	assign clk_master_out=clk_master;
	assign rstb_out=rstb;
	
endmodule






////testbench

/*
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

module tb_wrapper_first;
reg rstb,clk_master,phi1b_dig,ud_en;
wire div2out,sin_out,cos_out,sin_outb,cos_outb,fb2_I,fb2_Q,fb1_Q,fb1_I;
wire [2:0]no_ones_below_out;
wire [10:1]gray_clk;
wire [1:0]read_out_I,read_out_Q;
wire rstb_out,ud_en_out,clk_master_out,cclk;
reg input_signal_I, input_signal_Q, ref_I, ref_Q, input_lc_I, input_lc_Q, ref_lc_I, ref_lc_Q, clkdiv4;
wire comp_high_int2_I, comp_high_int2_Q, comp_high_int_I, comp_high_int_Q, comp_high_I, comp_high_Q;

wrapper_first w1(
	
	.rstb(rstb),
	.clk_master(clk_master),
	.phi1b_dig(phi1b_dig),
	.ud_en(ud_en),
	.comp_high_I(comp_high_I),
	.comp_high_Q(comp_high_Q),
	.div2out(div2out),
	.sin_out(sin_out),
	.cos_out(cos_out),
	.sin_outb(sin_outb),
	.cos_outb(cos_outb),
	.fb2_I(fb2_I),
	.fb2_Q(fb2_Q),
	.fb1_I(fb1_I),
	.fb1_Q(fb1_Q),
	.no_ones_below_out(no_ones_below_out[2:0]),
	.gray_clk(gray_clk[10:1]),
	.read_out_I(read_out_I[1:0]),
	.read_out_Q(read_out_Q[1:0]),
	.rstb_out(rstb_out),
	.ud_en_out(ud_en_out),
	.cclk(cclk),
	.clk_master_out(clk_master_out));
	


and_gate ag1(
		.in1(input_signal_I),
		.in2(ref_I),
		.out(comp_high_int_I));

and_gate ag2(
		.in1(input_lc_I),
		.in2(ref_lc_I),
		.out(comp_high_int2_I));

or_gate or_(
		.in1(comp_high_int_I),
		.in2(comp_high_int2_I),
		.out(comp_high_I));


and_gate ag3(
		.in1(input_signal_Q),
		.in2(ref_Q),
		.out(comp_high_int_Q));

and_gate ag4(
		.in1(input_lc_Q),
		.in2(ref_lc_Q),
		.out(comp_high_int2_Q));

or_gate or_1(
		.in1(comp_high_int_Q),
		.in2(comp_high_int2_Q),
		.out(comp_high_Q));



initial begin
	$dumpfile("wrapper_first.vcd");
	$dumpvars;
end 

//parameters
parameter n=1; //n is always 1 in the first wrapper case
parameter PERIOD_CORE=400*(2**(n-1));
real clk_core_half_pd=(PERIOD_CORE)/2;
parameter PERIOD_INPUT_SIGNAL=4000000;
parameter LEVEL_CROSSING_FACTOR=0.3; //represents the factor after which we are modelling the level crossing.			   
real clk_input_half_pd=PERIOD_INPUT_SIGNAL/2;
real clk_comp_high_half_pd=(PERIOD_CORE);
real lc_offset=LEVEL_CROSSING_FACTOR*PERIOD_INPUT_SIGNAL/2;
real lc_high=(PERIOD_INPUT_SIGNAL/2)*(1-2*LEVEL_CROSSING_FACTOR); //period until which lc input wave stays high


//signal generation
initial begin
	clk_master=0;
		forever
			#(clk_core_half_pd)clk_master = ~clk_master; //ext_clk generation freq=2.56 MHz
end

always @(posedge clk_master or negedge clk_master) begin //make clk_master as clkdiv2 for other wrappers
		if(clk_master) begin
			#2 phi1b_dig<=0;
			#(clk_core_half_pd-2) phi1b_dig<=1;
		end
		else begin
			phi1b_dig<=phi1b_dig;
		end
end

//modelling of comp_high

initial begin
		clkdiv4=0;
		#(clk_core_half_pd)clkdiv4=1;
		//#(clk_master_half_pd) clkdiv2=1;
		forever
			#(clk_comp_high_half_pd)clkdiv4 = ~clkdiv4; //ext_clk generation freq=2.56 MHz
end

always @(posedge clkdiv4 or negedge clkdiv4) begin
		if(clkdiv4) begin
			#2 ref_I<=1;
			#(clk_core_half_pd-2) ref_I<=0;
		end
		else begin
			ref_I<=ref_I;
		end
end


always @(posedge clkdiv4 or negedge clkdiv4) begin
		if(clkdiv4) begin
			#2 ref_Q<=1;
			#(clk_core_half_pd-2) ref_Q<=0;
		end
		else begin
			ref_Q<=ref_Q;
		end
end


initial begin
		input_signal_I=0;
		#(clk_core_half_pd) input_signal_I=1; 
		forever
			#(clk_input_half_pd) input_signal_I=~input_signal_I;
end

initial begin
		input_signal_Q=0;
		#(clk_core_half_pd) input_signal_Q=1; 
		forever
			#(clk_input_half_pd) input_signal_Q=~input_signal_Q;
end

// lc signal modelling

always @(posedge input_signal_I) begin
		input_lc_I<=0;
		#(lc_offset) input_lc_I<=1;
		#(lc_high) input_lc_I<=0; 
end

always @(posedge input_signal_Q) begin
		input_lc_Q<=0;
		#(lc_offset) input_lc_Q<=1;
		#(lc_high) input_lc_Q<=0; 
end

always @(posedge clkdiv4 or negedge clkdiv4) begin
		if(!clkdiv4) begin
			#2 ref_lc_I<=1;
			#(clk_core_half_pd-2) ref_lc_I<=0;
		end
		else begin
			ref_lc_I<=ref_lc_I;
		end
end

always @(posedge clkdiv4 or negedge clkdiv4) begin
		if(!clkdiv4) begin
			#2 ref_lc_Q<=1;
			#(clk_core_half_pd-2) ref_lc_Q<=0;
		end
		else begin
			ref_lc_Q<=ref_lc_Q;
		end
end

//
initial begin
	
	rstb=0;
	#5 rstb=1;
	ud_en=1;
	repeat(10008) @(posedge clk_master);
	#5 ud_en=0;
	repeat(200) @(posedge clk_master);
	#100;
	$finish;
end
endmodule

*/






