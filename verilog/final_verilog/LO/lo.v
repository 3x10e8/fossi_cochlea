`timescale 1ns/1ps
`include"./../feedback/gray_count.v"


//gray_decoder
module gray_decoder(out,in);
input [5:0]in;
output [19:0]out;
assign  out[0]=(~in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(in[0]);
assign  out[1]=(~in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(~in[0]);
assign  out[2]=(~in[5])&(~in[4])&(~in[3])&(in[2])&(in[1])&(~in[0]);
assign  out[3]=(~in[5])&(~in[4])&(in[3])&(in[2])&(~in[1])&(in[0]);
assign  out[4]=(~in[5])&(~in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign  out[5]=(~in[5])&(~in[4])&(in[3])&(~in[2])&(in[1])&(in[0]);
assign  out[6]=(~in[5])&(in[4])&(in[3])&(~in[2])&(~in[1])&(in[0]);
assign  out[7]=(~in[5])&(in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign  out[8]=(~in[5])&(in[4])&(in[3])&(in[2])&(~in[1])&(~in[0]);
assign  out[9]=(~in[5])&(in[4])&(~in[3])&(~in[2])&(~in[1])&(~in[0]);
assign  out[10]=(in[5])&(in[4])&(~in[3])&(~in[2])&(~in[1])&(~in[0]);
assign  out[11]=(in[5])&(in[4])&(in[3])&(in[2])&(~in[1])&(~in[0]);
assign  out[12]=(in[5])&(in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign  out[13]=(in[5])&(in[4])&(in[3])&(~in[2])&(~in[1])&(in[0]);
assign  out[14]=(in[5])&(~in[4])&(in[3])&(~in[2])&(in[1])&(in[0]);
assign  out[15]=(in[5])&(~in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign  out[16]=(in[5])&(~in[4])&(in[3])&(in[2])&(~in[1])&(in[0]);
assign  out[17]=(in[5])&(~in[4])&(~in[3])&(in[2])&(in[1])&(~in[0]);
assign  out[18]=(in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(~in[0]);
assign  out[19]=(in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(in[0]);
endmodule

//rom module
module rom(out,in);
input [10:0]in;
output out;
assign  out=~(in[0]|in[1]|in[2]|in[3]|in[4]|in[5]|in[6]|in[7]|in[8]|in[9]|in[10]);
endmodule

 //final_lo
module lo(rstb,gray_clk,sin_out,cos_out);
input rstb; //clk_ext is the external input clk
input [7:0]gray_clk;//f_clk[0] is the fastest clk. f_clk is the output from clk_tree starting from clk/2;only div 2 clocks, not the input
output wire sin_out,cos_out;
//counter output bits
wire [19:0]decoder_out; //decoder_output
wire [1:0]rom_out;//out from rom 
wire [1:0]out_xor; //out from xor
gray_decoder gd(.out(decoder_out),.in(gray_clk[5:0]));
rom r1(.out(rom_out[0]),.in({decoder_out[8:0],decoder_out[10],decoder_out[11]}));
rom r2(.out(rom_out[1]),.in({decoder_out[8],decoder_out[9],decoder_out[11],decoder_out[19:12]}));
assign  out_xor[0]=gray_clk[7]^rom_out[0];
assign  out_xor[1]=gray_clk[6]^rom_out[1];
assign  sin_out=rstb&&out_xor[0];
assign  cos_out=rstb&&out_xor[1];
endmodule


//testbench
module tb_lo;
reg rstb,clk_ext, global_en;//global_en and clk_ext is the master clock for the gray counter
wire [16:0]gray_clk;
wire sin_out,cos_out;

lo bank1(.rstb(rstb),.gray_clk(gray_clk[8:1]),.sin_out(sin_out),.cos_out(cos_out));
gray_count g1(.clk(clk_ext), .enable(global_en), .reset(rstb), .gray_count(gray_clk[16:0]));

parameter FREQ=2560000;
real clk_pd=(1.0/(2*FREQ))*1e9;
initial begin
$dumpfile("lo.vcd");
$dumpvars(2,tb_lo);
end
//clock generation
initial begin
clk_ext=0;
forever
#(clk_pd)clk_ext=~clk_ext;
end

//signal generation
initial begin
global_en=1;
rstb=0;
#450 rstb=1;
repeat(1200) @(posedge clk_ext);
global_en=0;
rstb=0;
repeat(5)@(posedge clk_ext);
#200 $finish;
end
endmodule


