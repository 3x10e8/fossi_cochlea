`timescale 1ns/1ps
/*
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff_n.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/mux_2_1.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/buffer.v"
*/

//this module is different from the usual edge ff as it has buffers inserted on the mux selection line.
module edge_ff_gray(
input d,rstb,clk,
output wire out);
wire [1:0]q; //q[0] goes to 0th input port of mux
wire buff_out,buff_int;// buff_int is the intermediate output of 2 buffers.

asyn_rstb_dff dff(.clk(clk),.d(d),.rstb(rstb),.q(q[1]));
asyn_rstb_dff_n dff_n(.clk(clk),.d(d),.rstb(rstb),.q(q[0]));
mux_2_1 mux(.in_0(q[0]),.in_1(q[1]),.sel(buff_out),.out(out));
buffer bf0(.in(clk),.out(buff_int));
buffer bf1(.in(buff_int),.out(buff_out));
endmodule