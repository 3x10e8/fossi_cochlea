`timescale 1ns/1ps

//asynchronous neg reset dff definition with positive edge clk trigger
/*
module asyn_rstb_dff_n(
input clk,d,rstb,
output reg q);
always@(negedge clk or negedge rstb)begin
if(!rstb) q<=0;
else q<=d;
end
endmodule
*/

module dig_div2(
	input clkdiv2,rstb,
	output wire div2out,cclk);
	wire flop_d;
	assign flop_d=~div2out;

	asyn_rstb_dff_n dff(
		.clk(clkdiv2),
		.d(flop_d),
		.rstb(rstb),
		.q(div2out));
	
	assign cclk=div2out&clkdiv2;
endmodule

/*
//testbench
module tb_dig_div2;
	reg clkdiv2,rstb;
	reg clk_master;
	wire div2out,cclk;

	dig_div2 div2(
		.clkdiv2(clkdiv2),
		.rstb(rstb),
		.div2out(div2out),
		.cclk(cclk));

	parameter PERIOD_MASTER=400;			   //read_out_iq[1]: out_mux_pol_eve
	real clk_master_half_pd=PERIOD_MASTER/2;   //read_out_iq[0]:out_mux_eve
	parameter n=2; // n is core's index.
	parameter PERIOD_CORE=400*(2**(n-1)); //it represents the max clock of the core
	real clk_core_half_pd=(PERIOD_CORE)/2; 

	initial begin
	$dumpfile("dig_div2.vcd");
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

	initial begin
		rstb=0;
		#5 rstb=1;
		repeat(700) @(posedge clkdiv2);
     	#100;
		$finish; 
	end
	endmodule
	*/