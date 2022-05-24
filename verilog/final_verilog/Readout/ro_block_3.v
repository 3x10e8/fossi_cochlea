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
module control_signals_ro(clk_ext,clk_4,pwr,ctrl);
input clk_ext; //It is the clock input
input pwr,clk_4; //clk_4 is the div 4 clock
output ctrl; //pwr has to be VDD
wire n1,n2;
//buffers added for safety
assign #0.5 n1=~clk_4; 
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
module ro_block_3(clk_4,clk_ext,pwr,in3,out);
input clk_ext,clk_4,pwr;
input [1:0]in3;
output [1:0]out;
wire ctrl;
control_signals_ro cs(.clk_ext(clk_ext),.clk_4(clk_4),.pwr(pwr),.ctrl(ctrl));
tbuf t0(.in(in3[0]),.ctrl(ctrl),.out(out[0]));
tbuf t1(.in(in3[1]),.ctrl(ctrl),.out(out[1]));
endmodule
/*
//Testbench
module tb_ro_3;
reg clk_ext,clk_4,pwr;
reg [1:0]in3;
wire [1:0]out;
parameter FREQ_IN=2560000;
parameter FREQ_DIV4=2560000/4;
real clk_in_hp=(1.0/(2*FREQ_IN))*1e9; //halp period of clock
real clk_in_hp2=(1.0/(2*FREQ_DIV4))*1e9; //halp period of clock
initial begin
$dumpfile("ro_block_3.vcd");
$dumpvars(2,tb_ro_3);
end
ro_block_3 b3(.clk_4(clk_4),.clk_ext(clk_ext),.pwr(pwr),.in3(in3),.out(out));
//clock generation
initial begin
clk_ext=1;
forever
#(clk_in_hp)clk_ext=~clk_ext;
end

initial begin
clk_4=1;
forever
#(clk_in_hp2)clk_4=~clk_4;
end

//signal generation
initial begin
assign pwr=1'b1;
assign in3[0]=1'b0;
assign in3[1]=1'b1;
repeat(20)@(posedge clk_4);
$finish;
end
endmodule
*/


