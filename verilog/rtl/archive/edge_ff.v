`timescale 1ns/1ps

`define USE_XNOR

/*
//Remove includes when hardening with openlane
`include "asyn_rstb_dff.v"
`include "asyn_rstb_dff_n.v"
`ifdef USE_XNOR
	`include "../gray_tree/edge_ff_gray.v"
`else
	`include "mux_2_1.v"
	`include "buffer.v"
`endif
*/

module edge_ff(
input d,rstb,clk,
output wire out);

`ifdef USE_XNOR
	edge_ff_gray eff_gray(
		.d(d),
		.clk(clk),
		.rstb(rstb),
		.out(out)
	);
`else
	wire [1:0]q;
	wire buff_out;
	// if keeping buffer
	buffer bf(.in(clk),.out(buff_out));
	asyn_rstb_dff dff(.clk(buff_out),.d(d),.rstb(rstb),.q(q[1]));
	asyn_rstb_dff_n dff_n(.clk(buff_out),.d(d),.rstb(rstb),.q(q[0]));
	// if removing buffer
	//asyn_rstb_dff dff(.clk(clk),.d(d),.rstb(rstb),.q(q[1]));
	//asyn_rstb_dff_n dff_n(.clk(clk),.d(d),.rstb(rstb),.q(q[0]));
	mux_2_1 mux(.in_0(q[0]),.in_1(q[1]),.sel(clk),.out(out));
`endif
endmodule