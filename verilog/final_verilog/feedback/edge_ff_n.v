/*
`timescale 1ns/1ps
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rst_dff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rst_dff_n.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/mux_2_1.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/buffer.v"
*/
module edge_ff_n(
input d,rstb,clk,
output wire out);
wire [1:0]q;
wire buff_out;
//wire rstb_inv; //rstb_inv used after passing the reset signal(clk_ext) through an inverter.
//assign rstb_inv=~rstb;

// if keeping buffer:
buffer bf(.in(clk),.out(buff_out));
asyn_rst_dff dff(.clk(buff_out),.d(d),.rstb(rstb),.q(q[1]));
asyn_rst_dff_n dff_n(.clk(buff_out),.d(d),.rstb(rstb),.q(q[0]));

// if removing buffer:
//asyn_rst_dff dff(.clk(clk),.d(d),.rstb(rstb),.q(q[1]));
//asyn_rst_dff_n dff_n(.clk(clk),.d(d),.rstb(rstb),.q(q[0]));

mux_2_1 mux(.in_0(q[0]),.in_1(q[1]),.sel(clk),.out(out));
endmodule
/*
//testbench
module tb_edge_ff_n;
reg d,rstb,clk;
wire out;

edge_ff_n edge_1(
	.d(d),
	.rstb(rstb),
	.clk(clk),
	.out(out));

initial begin
		clk=0;
		forever
			#(1600)clk = ~clk; //ext_clk generation freq=2.56 MHz
end

initial begin
		rstb=0;
		forever
			#(800)rstb = ~rstb; //ext_clk generation freq=2.56 MHz
end
initial begin
	$dumpfile("edge_ff_n.vcd");
	$dumpvars;
end

initial begin
	d=1;
	repeat(200) @(posedge clk);
	#100;
	$finish;

end

endmodule
*/