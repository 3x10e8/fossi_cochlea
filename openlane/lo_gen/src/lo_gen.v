`timescale 1ns/1ps
//module for flop used in counter construction
module dffp_asyn_rstb(d,rstb,clk,out);
input d,rstb,clk;
output out;
reg out;
always@(posedge clk or negedge rstb)
begin
if(!rstb) out<=#1 1'b0;
else out<=#1 d;
end
endmodule

//gray counter top module
module gray_counter(rstb,d,clk,out);
input [7:0]d,clk;
input rstb;
output [7:0]out;
wire [7:0]out;
genvar i;
generate for(i=0;i<=7;i=i+1) begin:counter_loop
dffp_asyn_rstb d1(.d(d[i]),.rstb(rstb),.clk(clk[i]),.out(out[i]));
end
endgenerate
endmodule

//gray_decoder
module gray_decoder(out,in);
input [5:0]in;
output [19:0]out;
assign #1 out[0]=(~in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(in[0]);
assign #1 out[1]=(~in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(~in[0]);
assign #1 out[2]=(~in[5])&(~in[4])&(~in[3])&(in[2])&(in[1])&(~in[0]);
assign #1 out[3]=(~in[5])&(~in[4])&(in[3])&(in[2])&(~in[1])&(in[0]);
assign #1 out[4]=(~in[5])&(~in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign #1 out[5]=(~in[5])&(~in[4])&(in[3])&(~in[2])&(in[1])&(in[0]);
assign #1 out[6]=(~in[5])&(in[4])&(in[3])&(~in[2])&(~in[1])&(in[0]);
assign #1 out[7]=(~in[5])&(in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign #1 out[8]=(~in[5])&(in[4])&(in[3])&(in[2])&(~in[1])&(~in[0]);
assign #1 out[9]=(~in[5])&(in[4])&(~in[3])&(~in[2])&(~in[1])&(~in[0]);
assign #1 out[10]=(in[5])&(in[4])&(~in[3])&(~in[2])&(~in[1])&(~in[0]);
assign #1 out[11]=(in[5])&(in[4])&(in[3])&(in[2])&(~in[1])&(~in[0]);
assign #1 out[12]=(in[5])&(in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign #1 out[13]=(in[5])&(in[4])&(in[3])&(~in[2])&(~in[1])&(in[0]);
assign #1 out[14]=(in[5])&(~in[4])&(in[3])&(~in[2])&(in[1])&(in[0]);
assign #1 out[15]=(in[5])&(~in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign #1 out[16]=(in[5])&(~in[4])&(in[3])&(in[2])&(~in[1])&(in[0]);
assign #1 out[17]=(in[5])&(~in[4])&(~in[3])&(in[2])&(in[1])&(~in[0]);
assign #1 out[18]=(in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(~in[0]);
assign #1 out[19]=(in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(in[0]);
endmodule

//rom module
module rom(out,in);
input [10:0]in;
output out;
assign #1 out=~(in[0]|in[1]|in[2]|in[3]|in[4]|in[5]|in[6]|in[7]|in[8]|in[9]|in[10]);
endmodule

//lo_gen
module lo_gen(rstb,f_clk,sin_out,cos_out);
input rstb; //clk_ext is the external input clk
input [9:0]f_clk;//f_clk is the output from clk_tree starting from clk/2;only div 2 clocks, not the input
output sin_out,cos_out;
//wire clk_inter;//input max clock along with reset merged
wire [7:0]counter_out; //counter output bits
wire [19:0]decoder_out; //decoder_output
wire [1:0]rom_out;//out from rom 
wire [1:0]out_xor; //out from xor
//assign #1 clk_inter=clk_in&&rstb;
gray_counter gc(.rstb(rstb),.d(f_clk[9:2]),.clk(f_clk[7:0]),.out(counter_out)); //replace clk_ with clk_inter in other case
gray_decoder gd(.out(decoder_out),.in(counter_out[5:0]));
rom r1(.out(rom_out[0]),.in({decoder_out[10],decoder_out[11],decoder_out[8:0]}));
rom r2(.out(rom_out[1]),.in({decoder_out[8],decoder_out[9],decoder_out[11],decoder_out[19:12]}));
assign #1 out_xor[0]=counter_out[7]^rom_out[0];
assign #1 out_xor[1]=counter_out[6]^rom_out[1];
assign #1 sin_out=rstb&&out_xor[0];
assign #1 cos_out=rstb&&out_xor[1];
endmodule


/*
//testbench
module tb_lo;
reg rst_ext,clk_ext;
wire cos_out,sin_out;
lo_gen bank1(.rst_ext(rst_ext),.clk_ext(clk_ext),.sin_out(sin_out),.cos_out(cos_out));
parameter FREQ=2560000;
real clk_pd=(1.0/(2*FREQ))*1e9;
initial begin
$dumpfile("final_lo.vcd");
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
rst_ext=0;
#450 rst_ext=1;
repeat(2) @(posedge clk_ext);
#100 rst_ext=0;
repeat(256) @(posedge clk_ext);
#330 rst_ext=1;
repeat(3) @(posedge clk_ext);
#10 rst_ext=0;
repeat(300) @(posedge clk_ext);
#10 rst_ext=1;
repeat(5)@(posedge clk_ext);
#200 $finish;
end
endmodule
*/


