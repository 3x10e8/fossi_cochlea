`timescale 1ns/1ps
//`include "edge_ff_gray.v"

module asyn_rst_tdeff(
	input t,clk,rstb,
	output wire q_n);
	wire q,xor_out;

	assign xor_out=t^q;
	assign q_n=~q;

	edge_ff_gray eff_gray(
		.d(xor_out),
		.rstb(rstb),
		.clk(clk),
		.out(q));

	endmodule
/*
module not_gate(
input a,
output wire out);
assign out=~a;
endmodule
*/
module buffer_single( // this contains two buffers back to back
	input in,
	output wire out);
	wire w;
	genvar i;
	not_gate g1(.a(in),.out(w)); //not gate module defined inside buffer module used in edge_ff_gray.
	not_gate g2(.a(w),.out(out));
endmodule

module gray_first_cell(
	input always1,rstb,clk_master,
	output wire q_jm1,q_j,no_ones_below_jm1);
	wire xor_out,xor_in;
	asyn_rst_tdeff t_ff(
		.t(always1),
		.clk(clk_master),
		.rstb(rstb),
		.q_n(q_jm1));

	edge_ff_gray eff(
		.d(xor_out),
		.rstb(rstb),
		.clk(clk_master),
		.out(q_j));

	buffer_single bf(
		.in(always1),
		.out(no_ones_below_jm1));

	assign xor_in=q_jm1&always1;
	assign xor_out=q_j^xor_in;
endmodule

