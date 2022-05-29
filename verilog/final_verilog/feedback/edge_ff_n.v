`timescale 1ns/1ps
`include "asyn_rst_dff.v"
`include "asyn_rst_dff_n.v"
`include "mux_2_1.v"
`include "buffer.v"

module edge_ff_n(
input d,rstb,clk,
output wire out);
wire [1:0]q;
wire buff_out;
//wire rstb_inv; //rstb_inv used after passing the reset signal(clk_ext) through an inverter.
//assign rstb_inv=~rstb;
buffer bf(.in(clk),.out(buff_out));
asyn_rst_dff dff(.clk(buff_out),.d(d),.rstb(rstb),.q(q[1]));
asyn_rst_dff_n dff_n(.clk(buff_out),.d(d),.rstb(rstb),.q(q[0]));
mux_2_1 mux(.in_0(q[0]),.in_1(q[1]),.sel(clk),.out(out));
endmodule


