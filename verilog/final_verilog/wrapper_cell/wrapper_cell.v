
`timescale 1ns/1ps
//`include "../final_verilog_dv_includes.v"

module wrapper_cell(
	input rstb,clk_master,ud_en, //ud_en is common for all the cores and unisons.
	input comp_high_I,comp_high_Q,clkdiv2, 
	input phi1b_dig_I, phi1b_dig_Q, 
	input [9:0]gray_clk_in,
	input [2:0]no_ones_below_in,
	output wire div2out,sin_out,cos_out,sin_outb,cos_outb, //sin_outb will be same as sin_out as the inverter and buffer will be added near the mux switch.
	output wire [2:0]no_ones_below_out,
	output wire [10:1]gray_clk_out,
	output wire fb2_I,fb2_Q,fb1_Q,fb1_I,cclk_I,cclk_Q,
	output wire [1:0]read_out_I,read_out_Q, //fb1_I:fb_I+ve, fb2_I=fb_I-ve 
	output wire rstb_out,clk_master_out,ud_en_out);
	wire q_sine;								//read_out_I[0]=out_mux_eve
	wire comp_out_I,comp_out_Q,eve_I,eve_Q,polxevent_I,polxevent_Q;
	wire gray_clk_out_0;


	gray_tree_cell gray_tree(
		.gray_clk_in(gray_clk_in[9:0]),   //dropping the first bit off and passing the rest.
		.no_ones_below_in(no_ones_below_in[2:0]),
		.gray_clk_out({gray_clk_out[10:1],gray_clk_out_0}),
		.no_ones_below_out(no_ones_below_out[2:0]),
		.q_sine(q_sine),
		.rstb(rstb),
		.clk_master(clk_master));

	lo bank1(
		.gray_clk(gray_clk_out[7:1]),
		.gray_sine(q_sine),
		.sin_out(sin_out),
		.cos_out(cos_out));

	dig_div2 div2(
		.clkdiv2(clkdiv2),
		.rstb(rstb),
		.div2out(div2out),
		.cclk(cclk_I));

	dig_evegen POL_EVE_I(
		.comp_high(comp_high_I),
		.phi1b_dig(phi1b_dig_I),
		.eve(eve_I),
		.rstb(rstb),
		.polxevent(polxevent_I),
		.comp_out(comp_out_I));

	dig_evegen POL_EVE_Q(
		.comp_high(comp_high_Q),
		.phi1b_dig(phi1b_dig_Q),
		.eve(eve_Q),
		.rstb(rstb),
		.polxevent(polxevent_Q),
		.comp_out(comp_out_Q));

	fb fb_block_I(
		
		.clkdiv2(clkdiv2),
		.comp_out(comp_out_I),
		.cclk(cclk_I),
		.rstb(rstb),
		.ud_en(ud_en),
		.gray_clk(gray_clk_out[10:1]),
		.fb_out(fb1_I));

	fb fb_block_Q(
		
		.clkdiv2(clkdiv2),
		.comp_out(comp_out_Q),
		.cclk(cclk_Q),
		.rstb(rstb),
		.ud_en(ud_en),
		.gray_clk(gray_clk_out[10:1]),
		.fb_out(fb1_Q));

	ro_block_2 ro_block_I(
		
		.gray(gray_clk_out_0), //parameterize the testbench for all the readouts
		.clk_master(clk_master),
		.in_eve(eve_I),
		.in_pol_eve(polxevent_I),
		.out_mux_eve(read_out_I[0]),
		.out_mux_pol_eve(read_out_I[1]));

	ro_block_2 ro_block_Q(
		
		.gray(gray_clk_out_0), //parameterize the testbench for all the readouts
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
	assign cclk_Q=cclk_I;
endmodule



//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*
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

module tb_wrapper_cell;
reg rstb,clk_master,ud_en;
reg [1:0]phi1b_dig; //more of these will be required for unison's testbench.
					//phi1b_dig[0] is corresponding to the first wrapper
wire [1:0]div2out,sin_out,cos_out,sin_outb,cos_outb,fb2_I,fb2_Q,fb1_Q,fb1_I,cclk_I,cclk_Q;
wire [2:0]no_ones_below_out[0:1];
wire [10:1]gray_clk_out[0:1];
wire [1:0]read_out_I,read_out_Q; //these will be common among all as they need to be shorted.
wire [1:0]rstb_out,ud_en_out,clk_master_out;//[0] index corresponds to the output of first wrapper and [1] index to that of second wrapper.
reg [1:0]input_signal_I, input_signal_Q, ref_I, ref_Q, input_lc_I, input_lc_Q, ref_lc_I, ref_lc_Q, clkdiv4;
wire [1:0]comp_high_int2_I, comp_high_int2_Q, comp_high_int_I, comp_high_int_Q, comp_high_I, comp_high_Q;

wrapper_first w0(
	
	.rstb(rstb),
	.clk_master(clk_master),
	.phi1b_dig_I(phi1b_dig[0]),
	.phi1b_dig_Q(phi1b_dig[0]),
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
	.cclk_I(cclk_I[0]),
	.cclk_Q(cclk_Q[0]),
	.clk_master_out(clk_master_out[0]));

wrapper_cell w1(
	
	.rstb(rstb_out[0]),
	.clk_master(clk_master_out[0]),
	.phi1b_dig_I(phi1b_dig[1]),
	.phi1b_dig_Q(phi1b_dig[1]),
	.ud_en(ud_en_out[0]),
	.comp_high_I(comp_high_I[1]),
	.comp_high_Q(comp_high_Q[1]),
	.clkdiv2(div2out[0]),
	.gray_clk_in(gray_clk_out[0]), ////gray clk from wrapper_first
	.no_ones_below_in(no_ones_below_out[0]),//
	.div2out(div2out[1]),
	.sin_out(sin_out[1]),
	.cos_out(cos_out[1]),
	.sin_outb(sin_outb[1]),
	.cos_outb(cos_outb[1]),
	.fb2_I(fb2_I[1]),
	.fb2_Q(fb2_Q[1]),
	.fb1_I(fb1_I[1]),
	.fb1_Q(fb1_Q[1]),
	.no_ones_below_out(no_ones_below_out[1]),//
	.gray_clk_out(gray_clk_out[1]),//
	.read_out_I(read_out_I[1:0]),
	.read_out_Q(read_out_Q[1:0]),
	.rstb_out(rstb_out[1]),
	.ud_en_out(ud_en_out[1]),
	.cclk_I(cclk_I[1]),
	.cclk_Q(cclk_Q[1]),
	.clk_master_out(clk_master_out[1]));
	

genvar i;
generate for(i=0; i<=1;i=i+1)begin:loop1
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


initial begin
	$dumpfile("wrapper_cell.vcd");
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
parameter PERIOD_CORE=400*(2**(n-1));
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

parameter m=2; //n is always 2 in the first wrapper case
parameter PERIOD_CORE_2=400*(2**(m-1));
real clk_core_half_pd_2=(PERIOD_CORE_2)/2;
parameter PERIOD_INPUT_SIGNAL_2=80000;//input signal is common for all
parameter LEVEL_CROSSING_FACTOR_2=0.3; //represents the factor after which we are modelling the level crossing.			   
real clk_input_half_pd_2=PERIOD_INPUT_SIGNAL_2/2;
real clk_comp_high_half_pd_2=(PERIOD_CORE_2);
real lc_offset_2=LEVEL_CROSSING_FACTOR_2*PERIOD_INPUT_SIGNAL_2/2;
real lc_high_2=(PERIOD_INPUT_SIGNAL_2/2)*(1-2*LEVEL_CROSSING_FACTOR_2); //period until which lc input wave stays high


//signal generation
//phi1b_dig[1] generation

always @(posedge div2out[0] or negedge div2out[0]) begin //make clk_master as clkdiv2 for other wrappers
		if(div2out[0]) begin
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



