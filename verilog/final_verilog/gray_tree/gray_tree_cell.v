`timescale 1ns/1ps

//To be included with the testbench only
//`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/peripheral_gray.v"

//no_ones_below_in[0] goes for sine gen
//no_ones_below_in[1] goes through buffer for next block
//no_ones_below_in[2] goes for both gray generation and passes through buffer for next blocks

/*
`define RUN_DV // if running dv locally
`ifdef RUN_DV
	`include "../final_verilog_dv_includes.v"
`endif
*/

module gray_tree_cell(
	input [9:0]gray_clk_in, //dont forget to drop one output from previous block.
	input [2:0]no_ones_below_in,
	input rstb,clk_master,
	output wire [10:0]gray_clk_out,
	output wire [2:0]no_ones_below_out,
	output wire q_sine);
	wire [2:0]no_ones_below_buff;

	genvar i;
	for(i=0;i<=9;i=i+1) begin
		assign gray_clk_out[i] = gray_clk_in[i];
	end
	for(i=0;i<=2;i=i+1) begin
		assign no_ones_below_buff[i] = no_ones_below_in[i];
	end

	// Let openlane buffer as needed:
	/*
	//buffering of gray in signals
	genvar i;
	generate for(i=0;i<=9;i=i+1)begin: buffer_loop
	buffer_single bf2(
		.in(gray_clk_in[i]),
		.out(gray_clk_out[i]));
	end
	endgenerate

	//buffering of no_ones_below_in signals
	genvar j;
	generate for(j=0;j<=2;j=j+1)begin: buffer_loop2
	buffer_single bf1(
		.in(no_ones_below_in[j]),
		.out(no_ones_below_buff[j]));
	end
	endgenerate
	*/

	gray_cell gray(
		.no_ones_below_jm2(no_ones_below_buff[2]),
		.q_jm2(gray_clk_out[8]),
		.q_jm1(gray_clk_out[9]),
		.clk_master(clk_master),
		.rstb(rstb),
		.q_j(gray_clk_out[10]),
		.no_ones_below_jm1(no_ones_below_out[2]));
	
	gray_sine_cell sine_cell2(
		.no_ones_below_jm2(no_ones_below_buff[0]),
		.q_jm2(gray_clk_out[6]),
		.q_jm1(gray_clk_out[7]),
		.clk_master(clk_master),
		.rstb(rstb),
		.q_j(q_sine));

	assign no_ones_below_out[0]=no_ones_below_buff[1];
	assign no_ones_below_out[1]=no_ones_below_buff[2];
endmodule

/*
//testbench
module tb_gray_tree_cell;
	//reg always1; // removed from peripheral gray 
	reg rstb,clk_master;
	wire [2:0]no_ones_below_in,no_ones_below_out;
	wire [10:0]gray_clk_int,gray_clk_out; //gray_clk_int is the intermediate set of gray clocks between the junction of two blocks.
	wire [1:0]q_sine_out;
	
	peripheral_gray gray_gen(
		//.always1(always1),
		.rstb(rstb),
		.clk_master(clk_master),
		.gray_clk(gray_clk_int[10:0]),
		.q_sine(q_sine_out[0]),
		.no_ones_below_out(no_ones_below_in[2:0]));

	gray_tree_cell gray_tree(
		.gray_clk_in(gray_clk_int[10:1]),   //dropping the first bit off and passing the rest.
		.no_ones_below_in(no_ones_below_in[2:0]),
		.gray_clk_out(gray_clk_out[10:0]),
		.no_ones_below_out(no_ones_below_out),
		.q_sine(q_sine_out[1]),
		.rstb(rstb),
		.clk_master(clk_master));

	initial begin
		$dumpfile("gray_tree_cell.vcd");
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
		//always1=1;
		#5 rstb=1;
		repeat(3400) @(posedge clk_master);
		#100;
		$finish; 
	end
endmodule
*/







 
