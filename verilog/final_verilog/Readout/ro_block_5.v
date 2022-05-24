`timescale 1ns/1ps
//module flip flop neg triggered and neg reset
module dffn_asyn_rstn(clk,rstb,d,q);
input clk,rstb,d;
output q;
reg q;
always@(negedge clk or negedge rstb)
if(!rstb) q<=#1 1'b0;
else q<=#1 d;
endmodule

//module for control signal for first out
module control_signals_ro(clk_ext,clk_16,pwr,ctrl);
input clk_ext; //It is the clock input
input pwr,clk_16; //clk_16 is the div 16 clock
output ctrl; //pwr has to be VDD
wire n1,n2;
//buffers added for safety
assign #0.5 n1=~clk_16; 
assign #0.5 n2=~n1;
dffn_asyn_rstn d2(.clk(n2),.rstb(clk_ext),.d(pwr),.q(ctrl));
endmodule

//buffer
module tbuf(in,ctrl,out);
input in,ctrl;
output out;
reg out;
always@(*)
begin
case(ctrl)
1'b0: #1 out=1'bz;
1'b1: #1 out=in;
endcase
end
endmodule

//second_readout_block
module ro_block_5(clk_16,clk_ext,pwr,in5,out);
input clk_ext,clk_16,pwr;
input [1:0]in5;
output [1:0]out;
wire ctrl;
control_signals_ro cs(.clk_ext(clk_ext),.clk_16(clk_16),.pwr(pwr),.ctrl(ctrl));
tbuf t0(.in(in5[0]),.ctrl(ctrl),.out(out[0]));
tbuf t1(.in(in5[1]),.ctrl(ctrl),.out(out[1]));
endmodule
/*
//Testbench
module tb_ro_5;
reg clk_ext,clk_16,pwr;
reg [1:0]in5;
wire [1:0]out;
parameter FREQ_IN=2560000;
parameter FREQ_DIV16=2560000/16;
real clk_in_hp=(1.0/(2*FREQ_IN))*1e9; //halp period of clock
real clk_in_hp2=(1.0/(2*FREQ_DIV16))*1e9; //halp period of clock
initial begin
$dumpfile("ro_block_5.vcd");
$dumpvars(2,tb_ro_5);
end
ro_block_5 b5(.clk_16(clk_16),.clk_ext(clk_ext),.pwr(pwr),.in5(in5),.out(out));
//clock generation
initial begin
clk_ext=1;
forever
#(clk_in_hp)clk_ext=~clk_ext;
end

initial begin
clk_16=1;
forever
#(clk_in_hp2)clk_16=~clk_16;
end

//signal generation
initial begin
assign pwr=1'b1;
assign in5[0]=1'b0;
assign in5[1]=1'b1;
repeat(20)@(posedge clk_16);
$finish;
end
endmodule
*/


