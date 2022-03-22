`timescale 1ns/1ps
//clock gating inplementation
module dlatch(d,clkn,q); // negative level triggered latch
input d,clkn;
output reg q;
always@(clkn or d)
if(!clkn) q<=#1 d;
endmodule

module dffn(d,q,clkn);
input clkn,d; //d: data;rstb:neg triggered asynchronous reset
output q; 
reg q; //assignment of always block is made reset

always@(negedge clkn)
begin
q<=#1 d;//adding delay: tc-q, good code style
end
endmodule

module clk_synchronizer(clk_ext,rst_ext,clk,rstb);
input clk_ext,rst_ext;
output clk,rstb;
wire q1,q2,q_latch; // q is the output from first flop, q_latch is the put from clk gate latch
dffn df1(.d(rst_ext),.q(q1),.clkn(clk_ext));
dffn df2(.d(q1),.q(q2),.clkn(clk_ext));
assign #1 rstb=~(rst_ext|q2); //rst_ext is active high reset
//dlatch dl(.d(rstb),.clkn(clk_ext),.q(q_latch));
//assign #1 clk=q_latch&&clk_ext;//rstb is active low reset
assign #1 clk=clk_ext;
endmodule

module div2_block(q,clk,rstb);
input clk,rstb; //d: data;rstb:neg triggered asynchronous reset
output q;
wire qn,d; //assignment of assign is made as wire
reg q; //assignment of always block is made reset

assign qn=~q;
assign d=qn;
always@(posedge clk or negedge rstb)
begin
if(!rstb) q<=#1 1'b0; //adding delay: tc-q
else q<=#1 d;//adding delay: tc-q, good code style
end
endmodule
 

module clk_tree(rst_ext,clk_ext,f_out,rstb); //clk_ext is the input clock
input rst_ext,clk_ext;				  //f_out[0] is the fclk and f_out[i]=fclk/2^(i)
output [15:0]f_out;
output rstb; //rstb generated from clock synchronizer
wire [14:0]q;
assign q=f_out;
clk_synchronizer clk_syn(.clk_ext(clk_ext),.rst_ext(rst_ext),.clk(f_out[0]),.rstb(rstb));
div2_block inst1(  
.q(f_out[1]),
.clk(f_out[0]),
.rstb(rstb));
genvar i;
generate for(i=2; i<=15; i=i+1) begin: div_2loop
div2_block b1(.q(f_out[i]),.clk(q[i-1]),.rstb(rstb));
end
endgenerate
endmodule

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

module rom(out,in);
input [10:0]in;
output out;
assign #1 out=~(in[0]|in[1]|in[2]|in[3]|in[4]|in[5]|in[6]|in[7]|in[8]|in[9]|in[10]);
endmodule

module final_lo(rst_ext,clk_ext,sin_out,cos_out);
input rst_ext,clk_ext; //clk_ext is the external input clk
output sin_out,cos_out;
wire [15:0]f_clk;//f_clk is the output from clk_tree starting from clk/2;only div 2 clocks, not the input
//wire clk_inter;//input max clock along with reset merged
wire rstb;
wire [7:0]counter_out; //counter output bits
wire [19:0]decoder_out; //decoder_output
wire [1:0]rom_out;//out from rom 
wire [1:0]out_xor; //out from xor
//assign #1 clk_inter=clk_in&&rstb;
clk_tree cts(.rst_ext(rst_ext),.clk_ext(clk_ext),.f_out(f_clk),.rstb(rstb));//replace clk_ with clk_inter in other case
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
final_lo bank1(.rst_ext(rst_ext),.clk_ext(clk_ext),.sin_out(sin_out),.cos_out(cos_out));
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

