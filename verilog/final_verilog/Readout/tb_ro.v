`include "gray_ro.v"
`timescale 1ns/1ps
//testbench for the gray readout
module tb_ro;
reg clk_ext,rst_ext,d1;
wire out;
gray_ro ro(.clk_ext(clk_ext),.d1(d1),.rst_ext(rst_ext),.out(out));
parameter FREQ_IN=2560000;
real clk_in_hp=(1.0/(2*FREQ_IN))*1e9; //halp period of clock
initial begin
$dumpfile("tb_ro.vcd");
$dumpvars(2,tb_ro);
end
//clock generation
initial begin
d1=1;
clk_ext=0;
forever
#(clk_in_hp) clk_ext=~clk_ext;
end
//signal generation
//signal generation
initial begin
rst_ext=0;
#276 rst_ext=1;
repeat(2)@(posedge clk_ext);
#200 rst_ext=0;
repeat(30)@(posedge clk_ext);
#200 rst_ext=1;
repeat(20)@(posedge clk_ext);
$finish;
end
endmodule



