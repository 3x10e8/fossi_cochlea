/*
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_first_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_sine_cell.v"
*/
//testbench
`default_nettype none
`timescale 1ns/1ps

`include "uprj_netlists.v"
`include "caravel_netlists.v"
`include "spiflash.v"
//`include "../../final_verilog/final_verilog_includes.v"

module peripheral_gray_tb;
	reg rstb,clk_master;
	wire [10:0]gray_clk;
	wire q_sine;
	wire [2:0]no_ones_below_out;
	peripheral_gray gray_gen(
		
		.rstb(rstb),
		.clk_master(clk_master),
		.gray_clk(gray_clk[10:0]),
		.q_sine(q_sine),
		.no_ones_below_out(no_ones_below_out[2:0]));

	initial begin
		$dumpfile("peripheral_gray.vcd");
		$dumpvars;
	end

	//signal generation
	parameter PERIOD_MASTER=400; //to model gray cell for different pitches, change the value of master period.			 
	real clk_master_half_pd=PERIOD_MASTER/2; 

	initial begin
		clk_master=0;
		forever
			#(clk_master_half_pd)clk_master = ~clk_master; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		rstb=0;
		#5 rstb=1;
		repeat(3400) @(posedge clk_master);
		#100;
		$finish; 
	end
endmodule

`default_nettype wire















