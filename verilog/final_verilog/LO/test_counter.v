`timescale 1ns/1ps
`include "gray_counter.v"
`include "clk_tree.v"
module test_counter(rst_ext,clk_ext,out);
input rst_ext,clk_ext; //clk_in is the clk from external input
output [7:0]out;
wire [15:0]f_out; //f_out is the clock output from clock tree
wire rstb;//wire clk_inter;   // this is the fastest clock frequency merged with rstb
clk_tree t1(.rst_ext(rst_ext),.clk_ext(clk_ext),.f_out(f_out),.rstb(rstb));
gray_counter g1(rstb,f_out[9:2],f_out[7:0],out);
endmodule

/*Working Perfect
//testbench
module tb_test_counter;
reg rst_ext,clk_ext;
wire[7:0]out;
test_counter ts1(rst_ext,clk_ext,out);
parameter FREQ=2560000;
real clk_pd=(1.0/(2*FREQ))*1e9;
initial begin
$dumpfile("test_counter.vcd");
$dumpvars(2,tb_test_counter);
end
//clock gen
initial begin
clk_ext=0;
forever
#(clk_pd)clk_ext=~clk_ext;
end
//signals
initial begin
rst_ext=0;
#256 rst_ext=1;
repeat(2) @(posedge clk_ext);
#256 rst_ext=0;
repeat(20) @(posedge clk_ext);
#300 $finish;
end
endmodule
*/

