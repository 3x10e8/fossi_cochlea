`timescale 1ns/1ps
module input_gen(input enable,output reg signal);
parameter FREQ=2560000;
parameter PHASE=0;
parameter input_pd=1.0/(FREQ)*1e9;
real input_delay=input_pd*PHASE/360;

//initialize variable to zero
initial begin
signal<=0;
end

always@(posedge enable or negedge enable) begin
if(enable) begin //make enable equal to the respective clock frequency and this will give phase shifted input signal
#(input_delay)signal=1;
end else begin
signal=0;
end
end
endmodule
/*
//testbench for checking input signal generator
module tb_input_gen;
reg rstb;
reg clk_in;//external input clk
wire [14:0]f_clk; //clk out from clk tree
wire signal;
parameter FREQ_IN=2560000;
real clk_in_hp=(1.0/(2*FREQ_IN))*1e9;
clk_tree ct(.rstb(rstb),.fclk(clk_in),.f_out(f_clk));
input_gen #(.FREQ(FREQ_IN/2),.PHASE(18)) inp(.enable(f_clk[0]),.signal(signal));

initial begin
$dumpfile("input_gen.vcd");
$dumpvars(2,tb_input_gen);
end
//clk generation
initial begin
clk_in=0;
forever
#(clk_in_hp)clk_in=~clk_in;
end
//signal generation
initial begin
rstb=0;
#276 rstb=1;
repeat(20)@(posedge clk_in);
#200 rstb=0;
repeat(20)@(posedge clk_in);
#200 rstb=1;
repeat(20)@(posedge clk_in);
$finish;
end
endmodule
*/
