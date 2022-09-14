//`timescale 1ns/1ps
//`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rst_dff.v"
//d flip flop with positive clock edge and negative reset port



module dig_evegen(
	input comp_high,phi1b_dig,rstb,
	output wire eve, polxevent,comp_out);
	wire [2:0]d; //d[2] is the output of the last flop.
	
	asyn_rstb_dff dff0(
			.d(comp_high),
			.rstb(rstb),
			.clk(phi1b_dig),
			.q(comp_out));
		
	asyn_rstb_dff dff1(
			.d(comp_out),
			.rstb(rstb),
			.clk(phi1b_dig),
			.q(d[0]));
		
	asyn_rstb_dff dff2(
			.d(d[0]),
			.rstb(rstb),
			.clk(phi1b_dig),
			.q(d[1]));
		
	asyn_rstb_dff dff3(
			.d(d[1]),
			.rstb(rstb),
			.clk(phi1b_dig),
			.q(d[2]));

	assign eve=d[0]^d[2];
	assign polxevent=eve&d[0];
endmodule

/*
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

module tb_dig_evegen;
	reg phi1b_dig,rstb;
	wire eve,polxevent,comp_out,comp_high_int,comp_high_int2,comp_high;
	reg clkdiv2,clkdiv4,input_signal,input_lc,ref,ref_lc;//input_lc refers to the waveform representing the region of level crossing overlap with the input signal.
	and_gate ag1(
		.in1(input_signal),
		.in2(ref),
		.out(comp_high_int));

	and_gate ag2(
		.in1(input_lc),
		.in2(ref_lc),
		.out(comp_high_int2));

	or_gate or_(
		.in1(comp_high_int),
		.in2(comp_high_int2),
		.out(comp_high));

	dig_evegen gen(
		.comp_high(comp_high),
		.phi1b_dig(phi1b_dig),
		.eve(eve),
		.rstb(rstb),
		.polxevent(polxevent),
		.comp_out(comp_out));

	
	
	parameter PERIOD_INPUT_SIGNAL=40000;
	parameter LEVEL_CROSSING_FACTOR=0.3; //represents the factor after which we are modelling the level crossing.			   
	real clk_input_half_pd=PERIOD_INPUT_SIGNAL/2;
	parameter n=1; //n is the index of core 
	parameter PERIOD_CORE=400*(2**(n-1));
	real clk_core_half_pd=(PERIOD_CORE)/2;
	real clk_comp_high_half_pd=(PERIOD_CORE);
	real lc_offset=LEVEL_CROSSING_FACTOR*PERIOD_INPUT_SIGNAL/2;
	real lc_high=(PERIOD_INPUT_SIGNAL/2)*(1-2*LEVEL_CROSSING_FACTOR); //period until which lc input wave stays high
	

	initial begin
	$dumpfile("dig_evegen.vcd");
	$dumpvars;
	end 


	initial begin
		
		clkdiv2=0;
		//#(clk_master_half_pd) clkdiv2=1;
		forever
			#(clk_core_half_pd)clkdiv2 = ~clkdiv2; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		
		clkdiv4=0;
		#(clk_core_half_pd)clkdiv4=1;
		//#(clk_master_half_pd) clkdiv2=1;
		forever
			#(clk_comp_high_half_pd)clkdiv4 = ~clkdiv4; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv2 or negedge clkdiv2) begin
		if(clkdiv2) begin
			#2 phi1b_dig<=0;
			#(clk_core_half_pd-2) phi1b_dig<=1;
		end
		else begin
			phi1b_dig<=phi1b_dig;
		end
	end

	always @(posedge clkdiv4 or negedge clkdiv4) begin
		if(clkdiv4) begin
			#2 ref<=1;
			#(clk_core_half_pd-2) ref<=0;
		end
		else begin
			ref<=ref;
		end
	end

	initial begin
		input_signal=0;
		#(clk_core_half_pd) input_signal=1; 
		forever
			#(clk_input_half_pd) input_signal=~input_signal;
	end
	
	// lc signal modelling

	always @(posedge input_signal) begin
		input_lc<=0;
		#(lc_offset) input_lc<=1;
		#(lc_high) input_lc<=0; 
	end

	always @(posedge clkdiv4 or negedge clkdiv4) begin
		if(!clkdiv4) begin
			#2 ref_lc<=1;
			#(clk_core_half_pd-2) ref_lc<=0;
		end
		else begin
			ref_lc<=ref_lc;
		end
	end
	
		
	initial begin
		rstb=0;
		#5 rstb=1;
		repeat(700) @(posedge phi1b_dig);
		#100;
		$finish;
	end
endmodule 
*/











