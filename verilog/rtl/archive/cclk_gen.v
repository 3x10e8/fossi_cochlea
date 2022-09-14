`timescale 1ns/1ps
//`include "./../feedback/asyn_rstb_dff.v"
//asynchronous neg reset dff definition with positive edge clk trigger


module cclk_gen(
	input clk,rstb,
	output wire cclk);
	wire q,d;
	assign d=~q;
	asyn_rstb_dff dff(
		.clk(clk),
		.d(d),
		.rstb(rstb),
		.q(q));
	assign #1 cclk=clk&q; //required to prevent timing violations in the ud-binary counter. tool will add buffers to compensate that

endmodule

/*
//testbench
module tb_cclk;
	reg clk,rstb;
	wire cclk;

	cclk_gen cc(
		.clk(clk),
		.rstb(rstb),
		.cclk(cclk));

	parameter FREQ=2560000;
	real clk_half_pd=(1.0/(2*FREQ))*1e9;
	initial begin
	$dumpfile("cclk_gen.vcd");
	$dumpvars;
	end

	initial begin
		clk=0;
		forever
			#(clk_half_pd) clk=~clk;
	end

	initial begin				
	rstb=0;
	#5 rstb=1;
	repeat(300) @(posedge clk);
	$finish;
	end
endmodule
*/