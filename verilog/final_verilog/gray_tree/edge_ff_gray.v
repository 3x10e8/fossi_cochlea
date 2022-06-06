`timescale 1ns/1ps
// https://mpedram.com/Papers/det-ff.pdf

//`define RUN_DV
//`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/mux_2_1.v"

/*
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff_n.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/mux_2_1.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/buffer.v"
*/

//this module is different from the usual edge ff as it has buffers inserted on the mux selection line.
module edge_ff_gray(
input d,clk,
input rstb,
output wire out);
wire [1:0]q; //q[0] goes to 0th input port of mux
wire and_mux1,and_mux2;
wire mux1_fb, mux2_fb;
wire mux_out;

assign and_mux1=rstb&mux1_fb;
assign and_mux2=rstb&mux2_fb;
assign out=rstb&mux_out;

mux_2_1 mux1(
	.in_0(mux1_fb),
	.in_1(d),
	.sel(clk),
	.out(mux1_fb));
mux_2_1 mux2(
	.in_0(d),
	.in_1(mux2_fb),
	.sel(clk),
	.out(mux2_fb));

mux_2_1 mux3(
	.in_0(and_mux1),
	.in_1(and_mux2),
	.sel(clk),
	.out(mux_out));
/*
wire buff_out,buff_int;// buff_int is the intermediate output of 2 buffers.
mux_2_1 mux(.in_0(q[0]),.in_1(q[1]),.sel(clk),.out(out));

// buffer clk to mux
//buffer bf0(.in(clk),.out(buff_int)); // removed after hold violations from openlane (-4.21   slack (VIOLATED))
//buffer bf1(.in(buff_int),.out(buff_out));
//asyn_rstb_dff dff(.clk(buff_out),.d(d),.rstb(rstb),.q(q[1]));
//asyn_rstb_dff_n dff_n(.clk(buff_out),.d(d),.rstb(rstb),.q(q[0]));

// do not buffer clk to mux
//asyn_rstb_dff dff(.clk(clk),.d(d),.rstb(rstb),.q(q[1]));
//asyn_rstb_dff_n dff_n(.clk(clk),.d(d),.rstb(rstb),.q(q[0]));
*/

/*
wire buff_out_d,buff_int_d;// buff_int is the intermediate output of 2 buffers.
wire buff_out_clk,buff_int_clk;// buff_int is the intermediate output of 2 buffers.
//buffer mux clk
buffer bf0(.in(clk),.out(buff_int_clk)); // removed after hold violations from openlane (-4.21   slack (VIOLATED))
buffer bf1(.in(buff_int_clk),.out(buff_out_clk));
// buffer D input
buffer bf2(.in(d),.out(buff_int_d)); // removed after hold violations from openlane (-4.21   slack (VIOLATED))
buffer bf3(.in(buff_int_d),.out(buff_out_d));
asyn_rstb_dff dff(.clk(buff_out_clk),.d(buff_out_d),.rstb(rstb),.q(q[1]));
asyn_rstb_dff_n dff_n(.clk(buff_out_clk),.d(buff_out_d),.rstb(rstb),.q(q[0]));
*/
endmodule

/*
module edge_ff_gray_tb;
reg d, clk,rstb;
wire out;
reg out_init;

edge_ff_gray detff(
	.d(d),
	.clk(clk),
	.out(out)
);

initial begin 
	$dumpfile("edge_ff_gray.vcd");
	$dumpvars;
end

initial begin
	clk=0;
	forever 
		#(200) clk = ~clk; //ext_clk generation freq=2.56 MHz
end

initial begin 
	d=0;
	forever
		#(156) d = ~d;
end

initial out_init=0;
assign out<=out_init;

initial begin 
	rstb=0;
	#5 rstb=1;
	repeat(1000) @(posedge clk);
	$finish;
end
endmodule
*/