`timescale 1ns/1ps
`include"clk_tree.v"
`include"control_signals_ro.v"
module test_cs(clk_ext,rst_ext,d,ctrl);// d1 is input to first flop; to be set as 1.
input clk_ext,rst_ext,d;// clk_in is the input external clock
output [9:0]ctrl;
wire rstb;
wire [15:0]f_clk; //f_clk is the output div 2 clocks from the clk tree
clk_tree cts(.rst_ext(rst_ext),.clk_ext(clk_ext),.f_out(f_clk),.rstb(rstb));
control_signals_ro c(.clk(f_clk[9:0]),.rstb(rstb),.d(d),.ctrl(ctrl));
endmodule
//Analysis: resetting is required to fix the initial state of flops in clock tree

/*
//Testbench
module tb_test_cs;
reg clk_ext,rst_ext,d;
wire [9:0]ctrl;//control signal cs
parameter FREQ=2560000;
real clk_pd=(1.0/(2*FREQ))*1e9;
test_cs a(.clk_ext(clk_ext),.rst_ext(rst_ext),.d(d),.ctrl(ctrl));

initial begin
$dumpfile("test_cs.vcd");
$dumpvars(2,tb_test_cs);
end
//clock generation
initial begin
clk_ext=0;
forever
#(clk_pd)clk_ext=~clk_ext;
end
//signal generation
initial begin
$monitor("rst_ext=%b | ctrl=%b",rst_ext,ctrl);
d=1;
rst_ext=0;
repeat(5)@(posedge clk_ext);
#2 rst_ext=1;
repeat(2)@(posedge clk_ext); // if these cycles are less than 2, than outputs will be metastable until 2 cycles have occured.
#5 rst_ext=0;
repeat(100)@(posedge clk_ext);
$finish;
end
endmodule
*/
//Analysis: resetting is required to fix the initial state of flops in clock tree
/*
#500 rstb=0;
repeat(4)@(posedge clk_in);
#243 rstb=1;
repeat(200)@(posedge clk_in);
#478 $finish;
*/
