`timescale 1ns/1ps
/*
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_first_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_sine_cell.v"
*/
module peripheral_gray(
	input always1,rstb,clk_master, //always1 is to be connected to vdd
	output wire [10:0]gray_clk,
	output wire q_sine,
	output wire [2:0]no_ones_below_out);
	wire q_m1;
	wire [9:-1]no_ones_below;

	gray_first_cell first_gray(
		.always1(always1),
		.rstb(rstb),
		.clk_master(clk_master),
		.q_jm1(q_m1),
		.q_j(gray_clk[0]),
		.no_ones_below_jm1(no_ones_below[-1]));

	gray_cell cell2(
		.no_ones_below_jm2(no_ones_below[-1]),
		.q_jm2(q_m1),
		.q_jm1(gray_clk[0]),
		.clk_master(clk_master),
		.rstb(rstb),
		.q_j(gray_clk[1]),
		.no_ones_below_jm1(no_ones_below[0]));

	genvar i;
	generate for (i=1;i<=9;i=i+1)begin: gray_loop
	gray_cell gray(
		.no_ones_below_jm2(no_ones_below[i-1]),
		.q_jm2(gray_clk[i-1]),
		.q_jm1(gray_clk[i]),
		.clk_master(clk_master),
		.rstb(rstb),
		.q_j(gray_clk[i+1]),
		.no_ones_below_jm1(no_ones_below[i]));
	end
	endgenerate

	gray_sine_cell sine_cell(
		.no_ones_below_jm2(no_ones_below[6]),
		.q_jm2(gray_clk[6]),
		.q_jm1(gray_clk[7]),
		.clk_master(clk_master),
		.rstb(rstb),
		.q_j(q_sine));

	assign no_ones_below_out[0]=no_ones_below[7]; //no_ones_below[7] is used in sine generation of next block
	assign no_ones_below_out[1]=no_ones_below[8]; //no_ones_below[8] is used in sine generation of next to next block
	assign no_ones_below_out[2]=no_ones_below[9]; //no_ones_below[9] is used in sine generation of further next block and gray gen of next block.
endmodule
/*
//testbench
module tb_peripheral_gray;
	reg always1,rstb,clk_master;
	wire [10:0]gray_clk;
	wire q_sine;
	wire [2:0]no_ones_below_out;
	peripheral_gray gray_gen(
		.always1(always1),
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
		always1=1;
		#5 rstb=1;
		repeat(3400) @(posedge clk_master);
		#100;
		$finish; 
	end
endmodule
*/

















