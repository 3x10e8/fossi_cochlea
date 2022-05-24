`include "clk_tree.v"
`include "control_signals_ro.v"
`include "out_bus.v"
`include "input_gen.v"
`timescale 1ns/1ps
module gray_ro(clk_ext,d1,rst_ext,out);//d1 is input of first flop;
input d1;
input clk_ext,rst_ext;
output out;
wire [15:0]f_clk; //clk out from clk generator
wire rstb;
wire [7:0]ctrl;
wire [7:0]in_signal;
parameter FREQ_IN=2560000;
//real clk_in_hp=(1.0/(2*FREQ))*1e9; //half period of clock
clk_tree cts(.rst_ext(rst_ext),.clk_ext(clk_ext),.f_out(f_clk),.rstb(rstb));
input_gen #(.FREQ(FREQ_IN),.PHASE(18)) in1(.enable(f_clk[0]),.signal(in_signal[0]));
input_gen #(.FREQ(FREQ_IN/2),.PHASE(18)) in2(.enable(f_clk[1]),.signal(in_signal[1]));
input_gen #(.FREQ(FREQ_IN/4),.PHASE(18)) in3(.enable(f_clk[2]),.signal(in_signal[2]));
input_gen #(.FREQ(FREQ_IN/8),.PHASE(18)) in4(.enable(f_clk[3]),.signal(in_signal[3]));
input_gen #(.FREQ(FREQ_IN/16),.PHASE(18)) in5(.enable(f_clk[4]),.signal(in_signal[4]));
input_gen #(.FREQ(FREQ_IN/32),.PHASE(18)) in6(.enable(f_clk[5]),.signal(in_signal[5]));
input_gen #(.FREQ(FREQ_IN/64),.PHASE(18)) in7(.enable(f_clk[6]),.signal(in_signal[6]));
input_gen #(.FREQ(FREQ_IN/128),.PHASE(18)) in8(.enable(f_clk[7]),.signal(in_signal[7]));
control_signals_ro cs(.clkb(f_clk[7:0]),.rstb(rstb),.d1(d1),.ctrl(ctrl));
out_bus bus(.in(in_signal),.ctrl(ctrl),.out(out),.rstb(rstb));
endmodule

//to be changed for actual case




