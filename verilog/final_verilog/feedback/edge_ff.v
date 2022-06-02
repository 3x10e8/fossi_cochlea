`timescale 1ns/1ps
//`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff.v"
//`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff_n.v"
//`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/mux_2_1.v"
//`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/buffer.v"

module edge_ff(
input d,rstb,clk,
output wire out);
wire [1:0]q;
wire buff_out;
buffer bf(.in(clk),.out(buff_out));
asyn_rstb_dff dff(.clk(buff_out),.d(d),.rstb(rstb),.q(q[1]));
asyn_rstb_dff_n dff_n(.clk(buff_out),.d(d),.rstb(rstb),.q(q[0]));
mux_2_1 mux(.in_0(q[0]),.in_1(q[1]),.sel(clk),.out(out));
endmodule

