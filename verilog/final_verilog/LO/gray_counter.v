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


/* faulty: check the test_counter one
//Testbench
module tb_gray_counter;
reg [9:0]clk; //clk[0] is input clk, clk[1]=clk/2 and so on...
reg rstb; //d starts from clk/4 or clk[2]
wire[7:0]out;
parameter FREQ=2560000;
real clk_half_period= (1.0/(2*FREQ))*1e9; //real stores floating values
gray_counter g1(.rstb(rstb),.d(clk[9:2]),.clk(clk[7:0]),.out(out));

initial begin
$dumpfile("gray_counter.vcd");
$dumpvars(2,tb_gray_counter);
end

//clock generation
//genvar i;
//for (i=0;i<=9;i=i+1)begin
initial begin
clk[0]=0;
#2 clk[0]=1;
forever
#(clk_half_period)clk[0]=~clk[0];
end

initial begin
clk[1]=0;
#4 clk[1]=1;
forever
#(clk_half_period*2)clk[1]=~clk[1];
end


initial begin
repeat(20) @(posedge clk[5]);
#200 $finish;
end
endmodule
*/