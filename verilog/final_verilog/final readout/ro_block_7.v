/*
`include "./../feedback/tbuf.v"
`include "./../feedback/gray_count.v"
`include "./../feedback/asyn_rst_dff.v"
`include "./../feedback/asyn_rst_dff_n.v"
`include "./../feedback/mux_2_1.v"
`include "./../feedback/buffer.v"
*/
`timescale 1ns/1fs

/*
module edge_ff_n(
input d,rstb,clk,
output wire out);
wire [1:0]q;
wire buff_out;
//wire rstb_inv; //rstb_inv used after passing the reset signal(clk_ext) through an inverter.
//assign rstb_inv=~rstb;
buffer bf(.in(clk),.out(buff_out));
asyn_rst_dff dff(.clk(buff_out),.d(d),.rstb(rstb),.q(q[1]));
asyn_rst_dff_n dff_n(.clk(buff_out),.d(d),.rstb(rstb),.q(q[0]));
mux_2_1 mux(.in_0(q[0]),.in_1(q[1]),.sel(clk),.out(out));
endmodule
*/
//first_readout_block fastest data out
module ro_block_7x(
	input vpwr,
	input gray,clk_master,in, //pwr is the vdd input 
	output wire readout);	   //gray is the gray clk bits
	wire eff_out,eff_outb;
	assign eff_outb=~eff_out;			   

	edge_ff_n eff(
		.d(vpwr),		//readout is the output of the readout block.
		.rstb(clk_master), //clkdiv2 is the max frequency of the core.
		.clk(gray),
		.out(eff_out));

	tbuf tribuf(
		.in(in),
		.ctrlb(eff_outb),
		.out(readout));
endmodule

module ro_block_7(
	input vpwr,
	input gray,clk_master,
	input in_eve,in_pol_eve,
	output wire out_mux_eve,out_mux_pol_eve);
	
	ro_block_7x ro_pol(
		.vpwr(vpwr),
		.gray(gray),
		.clk_master(clk_master),
		.in(in_eve),
		.readout(out_mux_eve));

	ro_block_7x ro_pol_eve(
		.vpwr(vpwr),
		.gray(gray),
		.clk_master(clk_master),
		.in(in_pol_eve),
		.readout(out_mux_pol_eve));
endmodule





/*
//Testbench
//gc: Gray Counter
//c: Counter
//clk_ext_global: master clock
module tb_ro_block_7;						   //gc_clk is the gray counter clock
	reg vpwr,clk_master,clkdiv2,rstb,in_eve,in_pol_eve; //vpwr is the connection to d pin of eff
	wire [18:0]gc_clk;						   //clk_master is the global external clock 
	wire [1:0]read_out_iq;					   //clkdiv2 is the max core clock
	parameter PERIOD_MASTER=400;			   //read_out_iq[1]: out_mux_pol_eve
	real clk_master_half_pd=PERIOD_MASTER/2;   //read_out_iq[0]:out_mux_eve
	parameter n=7; // n is core's index.
	parameter PERIOD_CORE=400*(2**(n-1));
	real clk_core_half_pd=(PERIOD_CORE)/2;
	real comp_out_half_pd=PERIOD_CORE;//factor of 2 is multiplied here because the period of comput is double that of the core clock
	
	//module instantiation	
	gray_count gc_clock(
		.clk(clk_master), 
		.reset(rstb), 
		.gray_count(gc_clk[18:0]));

	ro_block_7 ro_block(
		.vpwr(vpwr),
		.gray(gc_clk[n-1]), //parameterize the testbench for all the readouts
		.clk_master(clk_master),
		.in_eve(in_eve),
		.in_pol_eve(in_pol_eve),
		.out_mux_eve(read_out_iq[0]),
		.out_mux_pol_eve(read_out_iq[1]));

	initial begin
	$dumpfile("ro_block_7.vcd");
	$dumpvars;
	end 

	//signal generation
	initial begin
		clk_master=0;
		forever
			#(clk_master_half_pd)clk_master = ~clk_master; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		clkdiv2=0;
		//#(clk_master_half_pd) clkdiv2=1;
		forever
			#(clk_core_half_pd)clkdiv2 = ~clkdiv2; //ext_clk generation freq=2.56 MHz
	end

	//modelling in_eve(or in_pol_eve) using comp_out as it follows the same edges for its data release. 	
	always @(posedge rstb or negedge rstb or negedge clkdiv2) begin
		//in_eve=0;
			if(rstb&~clkdiv2) begin
				#2 in_eve<=1;
				#(comp_out_half_pd) in_eve=~in_eve;
				end
			else in_eve<=in_eve;
	end 

	//modelling in_eve(or in_pol_eve) using comp_out as it follows the same edges for its data release. 	
	always @(posedge rstb or negedge rstb or negedge clkdiv2) begin
		//in_pol_eve=0;
			if(rstb&~clkdiv2) begin
				#2 in_pol_eve<=1;
				#(comp_out_half_pd) in_pol_eve=~in_pol_eve;
				end
			else in_pol_eve<=in_pol_eve;
	end 


	initial begin
		rstb=0;
		vpwr=1;
		#5 rstb=1;
		repeat(700) @(posedge clkdiv2);
     	#100;
		$finish; 
	end
	endmodule
*/

