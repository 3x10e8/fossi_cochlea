`timescale 1ns/1ps
//d flip flop with positive clock edge and no reset port
module dfxtp( 
	input d,clk,
	output reg q);
	
	always @(posedge clk) begin
		q<=d;
	end
endmodule


module dig_evegen(
	input comp_high,phi1b_dig,
	output wire eve, polxevent,comp_out);
	wire [2:0]d; //d[2] is the output of the last flop.
	
	dfxtp dff0(
			.d(comp_high),
			.clk(phi1b_dig),
			.q(comp_out));
		
	dfxtp dff1(
			.d(comp_out),
			.clk(phi1b_dig),
			.q(d[0]));
		
	dfxtp dff2(
			.d(d[0]),
			.clk(phi1b_dig),
			.q(d[1]));
		
	dfxtp dff3(
			.d(d[1]),
			.clk(phi1b_dig),
			.q(d[2]));
	assign eve=d[0]^d[2];
	assign polxevent=eve&d[0];
endmodule

/*
//testbench
module and_gate(
	input in1,
	input in2,
	output wire out);
	assign #1 out=in1&in2;
endmodule

module tb_dig_evegen;
	reg phi1b_dig;
	wire eve,polxevent,comp_out,comp_high;
	reg clkdiv2,clkdiv4,input_signal,ref;
	and_gate ag(
		.in1(input_signal),
		.in2(ref),
		.out(comp_high));

	dig_evegen gen(
		.comp_high(comp_high),
		.phi1b_dig(phi1b_dig),
		.eve(eve),
		.polxevent(polxevent),
		.comp_out(comp_out));

	
	
	parameter PERIOD_INPUT_SIGNAL=40000;			   
	real clk_input_half_pd=PERIOD_INPUT_SIGNAL/2;
	parameter n=1; //n is the index of core 
	parameter PERIOD_CORE=400*(2**(n-1));
	real clk_core_half_pd=(PERIOD_CORE)/2;
	real clk_comp_high_half_pd=(PERIOD_CORE);

	initial begin
	$dumpfile("dig_evegen.vcd");
	$dumpvars;
	end 


	initial begin
		clkdiv2=1;
		#1 clkdiv2=0;
		//#(clk_master_half_pd) clkdiv2=1;
		forever
			#(clk_core_half_pd)clkdiv2 = ~clkdiv2; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		clkdiv4=1;
		#1 clkdiv4=0;
		#(clk_core_half_pd-1)clkdiv4=1;
		//#(clk_master_half_pd) clkdiv2=1;
		forever
			#(clk_comp_high_half_pd)clkdiv4 = ~clkdiv4; //ext_clk generation freq=2.56 MHz
	end

	always @(posedge clkdiv2 or negedge clkdiv2) begin
		#2;
		if(clkdiv2) begin
			phi1b_dig<=0;
			#(clk_core_half_pd-2) phi1b_dig<=1;
		end
		else begin
			phi1b_dig<=phi1b_dig;
		end
	end

	always @(posedge clkdiv4 or negedge clkdiv4) begin
		#3;
		if(clkdiv4) begin
			ref<=1;
			#(clk_core_half_pd-1) ref<=0;//+1 added because clock takes 1n for transition from 1-0 at start
		end
		else begin
			ref<=ref;
		end
	end

	initial begin
		input_signal=0;
		#(clk_core_half_pd+1) input_signal=1; //+1 added because clock takes 1n for transition from 1-0 at start
		forever
			#(clk_input_half_pd) input_signal=~input_signal;
	end

	

	initial begin
		repeat(700) @(posedge phi1b_dig);
		#100;
		$finish;
	end
endmodule 
*/











