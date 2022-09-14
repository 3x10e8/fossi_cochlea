`timescale 1ns/1ps
//To be included for running testbenches
//`include"/Volumes/export/isn/ishan/verilog/final_verilog/feedback/gray_count.v"


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
module lo(
	input [7:1]gray_clk, //gray_clk[1] starts from first second bit of gray clk with frequency f/4.
	input gray_sine,
	output wire sin_out,cos_out);

	wire [19:0]decoder_out; //decoder_output
	wire [1:0]rom_out;//out from rom 
	gray_decoder gd(.out(decoder_out),.in(gray_clk[6:1]));
	rom r1(.out(rom_out[0]),.in({decoder_out[8:0],decoder_out[10],decoder_out[11]}));
	rom r2(.out(rom_out[1]),.in({decoder_out[8],decoder_out[9],decoder_out[11],decoder_out[19:12]}));
	assign  sin_out=gray_sine^rom_out[0];
	assign  cos_out=gray_clk[7]^rom_out[1];
endmodule

/*
//testbench
module tb_lo;
reg rstb,clk_master,clkdiv2,gray_sine;//global_en and clk_ext is the master clock for the gray counter
wire [18:0]gray_clk;
wire sin_out,cos_out;

lo bank1(.gray_clk(gray_clk[n+6:n]),.gray_sine(gray_sine),.sin_out(sin_out),.cos_out(cos_out));
gray_count g1(.clk(clk_master), .reset(rstb), .gray_count(gray_clk[18:0]));

parameter PERIOD_MASTER=400; //For modelling different pitch, change the period of master			  
real clk_master_half_pd=PERIOD_MASTER/2;   
parameter n=2; // n is core's index. For observing the behaviour of other cores within the same unison, change the value of n.
parameter PERIOD_CORE=400*(2**(n-1));
real clk_core_half_pd=(PERIOD_CORE)/2;
real clk_gray_sine_half_pd=(PERIOD_CORE)*(2**7);

initial begin
$dumpfile("lo.vcd");
$dumpvars(2,tb_lo);
end

//clock generation
initial begin
	clk_master=0;
	forever
		#(clk_master_half_pd)clk_master = ~clk_master; //ext_clk generation freq=2.56 MHz
end

initial begin
	clkdiv2=0;
	forever
		#(clk_core_half_pd)clkdiv2 = ~clkdiv2; //ext_clk generation freq=2.56 MHz
end

initial begin
	gray_sine=0;
	forever
		#(clk_gray_sine_half_pd)gray_sine=~gray_sine;
end

//signal generation
initial begin
rstb=0;
#5 rstb=1;
repeat(1200) @(posedge clkdiv2);
#200;
$finish;
end
endmodule
*/

