`include "edge_ff.v"
`include "tbuf.v"
`include "gray_count.v"
`timescale 1ns/1ps


//first_readout_block fastest data out
module ro_block_1(
	input pwr,gray,clk_ext,in, //pwr is the vdd input 
	output reg out_mux);	   //gray is the gray clk bits
	wire eff_out;			   // clk_ext is the single global external clock.

	edge_ff ef(
		.d(pwr),
		.rstb(clk_ext),
		.clk(gray),
		.out(eff_out));

	tbuf tribuf(
		.in(in),
		.ctrl(eff_out),
		.out(out_mux));

endmodule


//Testbench
//gc: Gray Counter
//c: Counter
//clk_ext_global: master clock
module tb_ro_block_1;
	reg pwr,clk_ext_global,comp_out,en_global,gc_rstb; 
	wire [16:0]gc_clk;
	wire muxed_out;
	parameter FREQ=2560000;
	real clk_half_pd=(1.0/(2*FREQ))*1e9;
	real comp_out_half_pd=clk_half_pd*2;
	//module instantiation	
	gray_count gc_clock(
		.clk(clk_ext_global), 
		.enable(en_global), 
		.reset(gc_rstb), 
		.gray_count(gc_clk[16:0]));
	ro_block_1 ro1(
		.pwr(pwr),
		.gray(gc_clk[0]),
		.clk_ext(clk_ext_global),
		.in(comp_out));

	initial begin
	$dumpfile("tb_ro_block_1.vcd");
	$dumpvars;
	end 	
//signal generation
	initial begin
		clk_ext_global=0;
		forever
			#(clk_half_pd)clk_ext_global = ~clk_ext_global; // master ext_clk generation freq=2.56 MHz
	end

	initial begin 
		comp_out=1;
		forever
		#(comp_out_half_pd)comp_out = ~comp_out;
	end

	initial begin
		pwr=1;
		en_global=0;
		gc_rstb=1;
		repeat(10) @(posedge clk_ext);
		#5 en_global=1;
		#5 gc_rstb=0;
		repeat (10) @(posedge clk_ext);
		#5 gc_rstb=1;
		repeat(340) @(posedge clk_ext);
        #100;
		$finish; 
	end
	endmodule


