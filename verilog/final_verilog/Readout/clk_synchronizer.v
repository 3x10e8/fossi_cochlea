`timescale 1ns/1ps
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

/*
//testbench
module tb_clk_sync;
reg clk_ext,rst_ext;
wire clk,rstb;
clk_synchronizer syn1(.clk_ext(clk_ext),.rst_ext(rst_ext),.clk(clk),.rstb(rstb));
parameter FREQ=2560000;
real clk_hp=(1.0/(2*FREQ))*1e9;

initial 
begin
$dumpfile("clk_synchronizer.vcd");
$dumpvars(2,tb_clk_sync);
end
//clk_ext generation
initial begin
clk_ext=0;
forever
#(clk_hp)clk_ext=~clk_ext;
end
//signal generation
initial begin
rst_ext=0;
#256 rst_ext=1;
repeat(2) @(posedge clk_ext);
#230 rst_ext=0;
repeat(10) @(posedge clk_ext);
#127 $finish;
end
endmodule
*/






