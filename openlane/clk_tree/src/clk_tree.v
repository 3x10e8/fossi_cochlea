`timescale 1ns/1ps
//final merged verilog file

//clk syn block
module dffn(d,q,clkn);
input clkn,d; //d: data;rstb:neg triggered asynchronous reset
output q; 
reg q; //assignment of always block is made reset
always@(negedge clkn)
begin
q<=#1 d;//adding delay: tc-q, good code style
end
endmodule

//clk synchronizer
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

//div2block for clock divider
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

//clk tree
module clk_tree(rst_ext,clk_ext,f_out,rstb); //clk_ext is the input clock
input rst_ext,clk_ext;				  //f_out[0] is the fclk and f_out[i]=fclk/2^(i)
output [16:0]f_out; //considering all clocks required
output rstb; //rstb generated from clock synchronizer 
wire [15:0]q;
assign q=f_out;
clk_synchronizer clk_syn(.clk_ext(clk_ext),.rst_ext(rst_ext),.clk(f_out[0]),.rstb(rstb));
div2_block inst1(  
.q(f_out[1]),
.clk(f_out[0]),
.rstb(rstb));
genvar i;
generate for(i=2; i<=16; i=i+1) begin: div_2loop
div2_block b1(.q(f_out[i]),.clk(q[i-1]),.rstb(rstb));
end
endgenerate
endmodule

/*
//Testbench
module tb_clk_tree;
reg rst_ext,clk_ext;
wire [16:0]f_out;
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
repeat(200000) @(posedge clk_ext);
$finish;
end
endmodule
*/
//Testbench Analysis:
//Delay gets added during div/2 clock generation at every subsequent clk generation
// resetting of all div/2 clocks occur simultaneously
