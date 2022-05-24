`include "clk_synchronizer.v"
`include "div2_block.v"
`timescale 1ns/1ps
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


//Testbench
module tb_clk_tree;
reg rst_ext,clk_ext;
wire [15:0]f_out;
wire rstb;
parameter FREQ=2560000;
real clk_half_period= (1.0/(2*FREQ))*1e9; //real stores floating values
clk_tree inst1(.rst_ext(rst_ext),.clk_ext(clk_ext),.f_out(f_out),.rstb(rstb)); 
//clk generation
initial 
begin
$dumpfile("clk_tree.vcd");
$dumpvars(2,tb_clk_tree);
end
initial begin
clk_ext=0;
forever
#(clk_half_period) clk_ext=~clk_ext;
end
//Testing and gtkwave variable dumping
initial begin
rst_ext=0;
@(posedge clk_ext)
#300 rst_ext<=1;
repeat(2) @(posedge clk_ext);
#250 rst_ext=0;
repeat(200) @(posedge clk_ext);
$finish;
end
endmodule

//Testbench Analysis:
//Delay gets added during div/2 clock generation at every subsequent clk generation
// resetting of all div/2 clocks occur simultaneously