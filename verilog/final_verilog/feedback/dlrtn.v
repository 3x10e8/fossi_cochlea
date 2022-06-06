`timescale 1ns/1ps
module dlrtn(
	input d,
	input gate,
	input rstb,
	output reg q);

	`ifdef RUN_DV
		always@(rstb,d,gate)begin
			if(!rstb) q<=0;
			else if(!gate) q<=d;
		end
	`else
		sky130_fd_sc_hd__dlrtn_1 dlrtn(
			.Q(q),
			.RESET_B(rstb),
			.D(d),
			.GATE_N(gate));
	`endif
endmodule
/*
module tb_dlrtn;
reg d,clk,rstb;
wire q;

dlrtn dl(
	.d(d),
	.gate(clk),
	.rstb(rstb),
	.q(q));
parameter freq=256000;
real clk_half_pd=(1.0/(2*freq))*1e9;

initial begin
	clk=0;
	forever
		#(clk_half_pd) clk=~clk;
end

initial begin
	$dumpfile("dlrtn.vcd");
	$dumpvars;
end

initial begin
	rstb=0;
	d=1;
	repeat(5) @(posedge clk);
	#100 rstb=1;
	#600 rstb=0;
	$finish;
end
endmodule
*/