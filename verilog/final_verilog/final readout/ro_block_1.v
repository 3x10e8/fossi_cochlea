`include "./../feedback/tbuf.v"
`include "./../feedback/gray_count.v"
`include "./../feedback/asyn_rstb_dff.v"
`include "./../feedback/asyn_rstb_dff_n.v"
`include "./../feedback/mux_2_1.v"
`include "./../feedback/buffer.v"
`timescale 1ns/1fs

module edge_ff(
input d,rstb,clk,
output wire out);
wire [1:0]q;
wire buff_out;
buffer bf(.in(clk),.out(buff_out));
asyn_rstb_dff dff(.clk(buff_out),.d(d),.rstb(rstb),.q(q[1]));
asyn_rstb_dff_n dff_n(.clk(buff_out),.d(d),.rstb(rstb),.q(q[0]));
mux_2_1 mux(.in_0(q[0]),.in_1(q[1]),.sel(clk),.out(out));
endmodule


//first_readout_block fastest data out
module ro_block_1(
	input pwr,gray,clk_ext,in, //pwr is the vdd input 
	output wire out_mux);	   //gray is the gray clk bits
	wire eff_out;			   // clk_ext is the single global external clock.

	edge_ff ef(
		.d(pwr),
		.rstb(clk_ext),
		.clk(gray),
		.out(eff_out));

	tbuf tribuf(
		.in(in),
		.ctrl(eff_out),
		.out(out_mux));

endmodule

/*
//Testbench
//gc: Gray Counter
//c: Counter
//clk_ext_global: master clock
module tb_ro_block_1;
	reg pwr,clk_ext_global,comp_out,en_global,gc_rstb,clk_ext; 
	wire [16:0]gc_clk;
	wire muxed_out;
	parameter FREQ=2560000;
	parameter n=1; // n is the index of readout
	real clk_half_pd_global=(1.0/(2*FREQ))*1e9;
	real clk_half_pd=(1.0/(2*FREQ))*(2**(n-1))*1e9; // timeperiod of ext_clk depends on index of readout block
	real comp_out_half_pd=(1.0/(2*FREQ))*1e9*(2**(n));
	//module instantiation	
	gray_count gc_clock(
		.clk(clk_ext_global), 
		.enable(en_global), 
		.reset(gc_rstb), 
		.gray_count(gc_clk[16:0]));
	ro_block_1 ro1(
		.pwr(pwr),
		.gray(gc_clk[n-1]), //parameterize the testbench for all the readouts
		.clk_ext(clk_ext),
		.in(comp_out),
		.out_mux(muxed_out));

	initial begin
	$dumpfile("ro_block_1.vcd");
	$dumpvars;
	end 	
//signal generation
	initial begin
		clk_ext_global=0;
		#1 clk_ext_global=1;
		forever
			#(clk_half_pd_global)clk_ext_global = ~clk_ext_global; //global ext_clk generation freq=2.56 MHz
	end

	initial begin
		clk_ext=0;
		#1 clk_ext=1;
		forever
			#(clk_half_pd)clk_ext = ~clk_ext; //  core ext_clk generation freq=1.28 MHz
	end

	initial begin 
		comp_out=0;
		#1 comp_out=1;
		#(clk_half_pd+1) comp_out=0;
		forever
		#(comp_out_half_pd)comp_out = ~comp_out;
	end

	initial begin
		pwr=1;
		en_global=1;
		gc_rstb=0;
		#1 gc_rstb=1;
		repeat(10) @(posedge clk_ext_global);
		repeat (340) @(posedge clk_ext_global);
      		#100;
		$finish; 
	end
	endmodule
*/

