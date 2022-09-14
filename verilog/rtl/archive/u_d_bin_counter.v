`timescale 1ns/1ps
/*
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rst_dff_n.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rst_dff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff_n.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_tff.v"
*/
//`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_tff.v"
//--------------------------------------------------------------------
//asynchronous neg set dff definition
module asyn_stb_dff(
input clk,d,stb,
output reg q);
always@(posedge clk or negedge stb)begin
if(!stb) q<=1;
else q<=d;
end
endmodule
//----------------------------------------------------------------------
//counter end cell (16th bit) for setting the value to 10000..00 on reset.
//End T Flip Flop definition
module asyn_stb_tff_end(
input t,clk,stb,
output wire q);
wire d;
asyn_stb_dff dfstp_1(.clk(clk), .d(d), .stb(stb), .q(q));
assign d=q^t;
endmodule
//-------------------------------------------------------------------
//up_down binary  first counter cell module
module counter_cell_start(
input a,t,rstb,clk,b,
output wire q,a_o,b_o,t_o);
wire q_b;

asyn_rstb_tff tff1(.t(t), .clk(clk), .rstb(rstb), .q(q), .q_b(q_b));
assign a_o=a&q;
assign b_o=q_b&b;
assign t_o=a_o|b_o;
endmodule
//-------------------------------------------------------------------
//up_down binary counter cell module
module counter_cell(
input a,t,rstb,clk,b,en, //t is the input of and gate with en as other input
output wire q,a_o,b_o,t_o);
wire q_b, and_t; //temp is the output of the or gate
assign and_t=t&&en;
asyn_rstb_tff tff1(.t(and_t), .clk(clk), .rstb(rstb), .q(q), .q_b(q_b));
assign a_o=a&q;
assign b_o=q_b&b;
assign t_o=a_o|b_o;
endmodule
//------------------------------------------------------------------------
//up_down bin counter top module
module u_d_bin_counter(
input u_d,clk,rstb,en,
output wire [15:0]q);
wire [14:0] a_o,t_o,b_o;
wire b_in,q_b14,and1,and2,t_o14,and_t;
assign b_in=~u_d;
counter_cell_start cc1(.a(u_d),.t(en),.rstb(rstb),.clk(clk),.b(b_in),.q(q[0]),.a_o(a_o[0]),.b_o(b_o[0]),.t_o(t_o[0]));
genvar i;
generate for(i=0;i<=13;i=i+1) begin:bin_counter
counter_cell cc(.a(a_o[i]),.t(t_o[i]),.rstb(rstb),.clk(clk),.b(b_o[i]),.en(en),.q(q[i+1]),.a_o(a_o[i+1]),.b_o(b_o[i+1]),.t_o(t_o[i+1]));
end
endgenerate
assign and_t=t_o[14]&en;
asyn_stb_tff_end tff_end(.t(and_t),.clk(clk),.stb(rstb),.q(q[15]));
endmodule

//----------------------------------------------------------------------------

/*
//Testbench
module tb_bin_counter;
reg u_d,clk,rstb,en;
wire [15:0]q;
parameter FREQ=2560000;
real clk_half_pd=(1.0/(2*FREQ))*1e9;
u_d_bin_counter bincount(.u_d(u_d),.clk(clk),.rstb(rstb),.en(en),.q(q[15:0]));

initial begin
	$dumpfile("u_d_bin_counter.vcd");
	$dumpvars;
end

initial begin
clk=0;
forever
#(clk_half_pd)clk =~clk;
end

initial begin
$monitor("clk=%b | en=%b | rstb=%b | u_d=%b | q=%b",clk,en,rstb,u_d,q);
en=0;
rstb=1;
u_d=0;

en=1;
rstb=0;
#5 rstb=1;
repeat(50) @(posedge clk); //testing with up up counting
#2 u_d=1;
repeat(50) @(posedge clk);//testing with down counting
#2 rstb=0;
#3 rstb=1;
repeat(50) @(posedge clk);//testing with down counting after resetting
#2 en=0;
repeat (5) @(posedge clk);
#2 u_d=0;
repeat (10) @(posedge clk);
#2 en=1;
u_d=1;
repeat (20) @(posedge clk);
$finish;
end
endmodule

*/

 

