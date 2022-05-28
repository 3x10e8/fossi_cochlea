`timescale 1ns/1ps
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
 
/* 
//Testbench
module tb_div2_block;
reg clk,rstb;
wire q;
parameter FREQ=2560000;
real clk_half_period= (1.0/(2*FREQ))*1e9; //real stores floating values
div2_block b1(q,clk,rstb);

//clock initiation
initial
begin
clk=0;
forever
#(clk_half_period) clk=~clk; //timeperiod: 2*200ns=400ns: 2.56MHz
end

//signal generation 
initial
begin
$dumpfile("div2_block.vcd");
$dumpvars(2,tb_div2_block);
rstb=0; //Always start with reset so that q assumes initial value=0
#560 rstb=1;//rstb=0; //testing that q should be xx for initial case
repeat(4) @(posedge clk);
#250 rstb=0;
#1200 $finish;
end
endmodule

//testbench analysis
//since 1ns delay is given for output on every clock edge, the output is xx for 1ns until value is assigned to q/qn
*/
