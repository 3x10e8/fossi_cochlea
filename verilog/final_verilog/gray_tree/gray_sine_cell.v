`timescale 1ns/1ps
//`include "edge_ff_gray.v"

module gray_sine_cell(
	input no_ones_below_jm2,q_jm2,q_jm1,clk_master,rstb,
	output wire q_j);
	wire q_msb,no_ones_below_jm1;
	wire xor_out,inv_out,xor_in;
	edge_ff_gray eff_gray(
		.d(xor_out),
		.rstb(rstb),
		.clk(clk_master),
		.out(q_j));
	assign q_msb=q_j|q_jm1;	
	assign inv_out=~q_jm2;
	assign no_ones_below_jm1=no_ones_below_jm2&inv_out;
	assign xor_in=no_ones_below_jm1&q_msb;
	assign xor_out=q_j^xor_in;
endmodule

