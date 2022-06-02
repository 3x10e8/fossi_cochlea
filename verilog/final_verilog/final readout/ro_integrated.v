/*
`include "ro_block_1.v"
`include "ro_block_2.v"
*/
`timescale 1ns/1ps

//first_readout_block fastest data out
module ro_integrated(
	input vpwr,clk_master,
	input [7:0]gray,in_eve,in_pol_eve, //pwr is the vdd input 
	output wire out_mux_eve,out_mux_pol_eve);	   //gray is the gray clk bits
								   // clk_ext is the single global external clock.

	ro_block_1 rox1(							// ro_block_1 is separately modelled as its architecture is separate from other ro blocks.
			.vpwr(vpwr),
			.gray(gray[0]), //parameterize the testbench for all the readouts
			.clk_master(clk_master),
			.in_eve(in_eve[0]),
			.in_pol_eve(in_pol_eve[0]),
			.out_mux_eve(out_mux_eve),
			.out_mux_pol_eve(out_mux_pol_eve));
								   
								   
	genvar i;
	generate for(i=1; i<=7; i=i+1) begin: ro_loop //ro_block_2 is repeatedly modelled for the following ro blocks. 
		ro_block_2 rox2(
			.vpwr(vpwr),
			.gray(gray[i]), //parameterize the testbench for all the readouts
			.clk_master(clk_master),
			.in_eve(in_eve[i]),
			.in_pol_eve(in_pol_eve[i]),
			.out_mux_eve(out_mux_eve),
			.out_mux_pol_eve(out_mux_pol_eve));
		end
	endgenerate
endmodule

/*
//Testbench
//gc: Gray Counter
//c: Counter
//clk_ext_global: master clock for gray counter clk
module tb_ro_integrated;
	reg vpwr,clk_master,rstb;
	reg [7:0]in_eve,clkdiv2; //comp_out is the connected to 'in' ports
	wire [18:0]gc_clk;
	wire [1:0]read_out_iq;

	parameter PERIOD_MASTER=400;			   //read_out_iq[1]: out_mux_pol_eve
	real clk_master_half_pd=PERIOD_MASTER/2;   //read_out_iq[0]:out_mux_eve
	//parameter n=2; // n is core's index.

	real PITCH_FACTOR=PERIOD_PITCH/PERIOD_MASTER;
	parameter PERIOD_PITCH=800;
	
	parameter PERIOD_CORE_0=PERIOD_PITCH;
	real clk_core_half_pd_0=(PERIOD_CORE_0)/2;
	real comp_out_half_pd_0=PERIOD_CORE_0;//factor of 2 is multiplied here because the period of comput is double that of the core clock

	parameter PERIOD_CORE_1=PERIOD_PITCH*2;
	real clk_core_half_pd_1=(PERIOD_CORE_1)/2;
	real comp_out_half_pd_1=PERIOD_CORE_1;//factor of 2 is multiplied here because the period of comput is double that of the core clock

	parameter PERIOD_CORE_2=PERIOD_PITCH*4;
	real clk_core_half_pd_2=(PERIOD_CORE_2)/2;
	real comp_out_half_pd_2=PERIOD_CORE_2;//factor of 2 is multiplied here because the period of comput is double that of the core clock
	
	parameter PERIOD_CORE_3=PERIOD_PITCH*8;
	real clk_core_half_pd_3=(PERIOD_CORE_3)/2;
	real comp_out_half_pd_3=PERIOD_CORE_3;//factor of 2 is multiplied here because the period of comput is double that of the core clock

	parameter PERIOD_CORE_4=PERIOD_PITCH*16;
	real clk_core_half_pd_4=(PERIOD_CORE_4)/2;
	real comp_out_half_pd_4=PERIOD_CORE_4;//factor of 2 is multiplied here because the period of comput is double that of the core clock

	parameter PERIOD_CORE_5=PERIOD_PITCH*32;
	real clk_core_half_pd_5=(PERIOD_CORE_5)/2;
	real comp_out_half_pd_5=PERIOD_CORE_5;//factor of 2 is multiplied here because the period of comput is double that of the core clock


	parameter PERIOD_CORE_6=PERIOD_PITCH*64;
	real clk_core_half_pd_6=(PERIOD_CORE_6)/2;
	real comp_out_half_pd_6=PERIOD_CORE_6;//factor of 2 is multiplied here because the period of comput is double that of the core clock

	parameter PERIOD_CORE_7=PERIOD_PITCH*128;
	real clk_core_half_pd_7=(PERIOD_CORE_7)/2;
	real comp_out_half_pd_7=PERIOD_CORE_7;//factor of 2 is multiplied here because the period of comput is double that of the core clock


	initial begin
	$dumpfile("ro_integrated.vcd");
	$dumpvars;
	end 	

	gray_count gc_clock(
		.clk(clk_master), 
		.reset(rstb), 
		.gray_count(gc_clk[18:0]));
	ro_integrated ro_x(
		.vpwr(vpwr),
		.gray(gc_clk[7:0]), //parameterize the testbench for all the readouts
		.clk_master(clk_master),
		.in_eve(in_eve[7:0]),
		.in_pol_eve(in_eve[7:0]), //modelling in_pol_eve by in_eve signals
		.out_mux_eve(read_out_iq[0]),
		.out_mux_pol_eve(read_out_iq[1]));

//signal generation
	//master clock
	initial begin
		clk_master=0;
		forever
			#(clk_master_half_pd)clk_master = ~clk_master; //ext_clk generation freq=2.56 MHz
	end

//div2 clocks
	initial begin
		clkdiv2[0]=0;
		forever
			#(clk_core_half_pd_0)clkdiv2[0] = ~clkdiv2[0]; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		clkdiv2[1]=0;
		forever
			#(clk_core_half_pd_1)clkdiv2[1] = ~clkdiv2[1]; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		clkdiv2[2]=0;
		forever
			#(clk_core_half_pd_2)clkdiv2[2] = ~clkdiv2[2]; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		clkdiv2[3]=0;
		forever
			#(clk_core_half_pd_3)clkdiv2[3] = ~clkdiv2[3]; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		clkdiv2[4]=0;
		forever
			#(clk_core_half_pd_4)clkdiv2[4] = ~clkdiv2[4]; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		clkdiv2[5]=0;
		forever
			#(clk_core_half_pd_5)clkdiv2[5] = ~clkdiv2[5]; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		clkdiv2[6]=0;
		forever
			#(clk_core_half_pd_6)clkdiv2[6] = ~clkdiv2[6]; //ext_clk generation freq=2.56 MHz
	end

	initial begin
		clkdiv2[7]=0;
		forever
			#(clk_core_half_pd_7)clkdiv2[7] = ~clkdiv2[7]; //ext_clk generation freq=2.56 MHz
	end

	//in_eve signals

	always @(posedge rstb or negedge rstb or negedge clkdiv2[0]) begin
			if(rstb&~clkdiv2[0]) begin
				#2 in_eve[0]<=1;
				#(comp_out_half_pd_0) in_eve[0]=~in_eve[0];
				end
			else in_eve[0]<=in_eve[0];
	end 

	always @(posedge rstb or negedge rstb or negedge clkdiv2[1]) begin
			if(rstb&~clkdiv2[1]) begin
				#2 in_eve[1]<=1;
				#(comp_out_half_pd_1) in_eve[1]=~in_eve[1];
				end
			else in_eve[1]<=in_eve[1];
	end 

	always @(posedge rstb or negedge rstb or negedge clkdiv2[2]) begin
			if(rstb&~clkdiv2[2]) begin
				#2 in_eve[2]<=1;
				#(comp_out_half_pd_2) in_eve[2]=~in_eve[2];
				end
			else in_eve[2]<=in_eve[2];
	end

	always @(posedge rstb or negedge rstb or negedge clkdiv2[3]) begin
			if(rstb&~clkdiv2[3]) begin
				#2 in_eve[3]<=1;
				#(comp_out_half_pd_3) in_eve[3]=~in_eve[3];
				end
			else in_eve[3]<=in_eve[3];
	end 

	always @(posedge rstb or negedge rstb or negedge clkdiv2[4]) begin
			if(rstb&~clkdiv2[4]) begin
				#2 in_eve[4]<=1;
				#(comp_out_half_pd_4) in_eve[4]=~in_eve[4];
				end
			else in_eve[4]<=in_eve[4];
	end 

	always @(posedge rstb or negedge rstb or negedge clkdiv2[5]) begin
			if(rstb&~clkdiv2[5]) begin
				#2 in_eve[5]<=1;
				#(comp_out_half_pd_5) in_eve[5]=~in_eve[5];
				end
			else in_eve[5]<=in_eve[5];
	end

	always @(posedge rstb or negedge rstb or negedge clkdiv2[6]) begin
			if(rstb&~clkdiv2[6]) begin
				#2 in_eve[6]<=1;
				#(comp_out_half_pd_6) in_eve[6]=~in_eve[6];
				end
			else in_eve[6]<=in_eve[6];
	end 

	always @(posedge rstb or negedge rstb or negedge clkdiv2[7]) begin
			if(rstb&~clkdiv2[7]) begin
				#2 in_eve[7]<=1;
				#(comp_out_half_pd_7) in_eve[7]=~in_eve[7];
				end
			else in_eve[7]<=in_eve[7];
	end

//final rstb,vpwr signal generation
	initial begin
		$display("PITCH FACTOR:%f",PITCH_FACTOR);
		rstb=0;
		vpwr=1;
		#5 rstb=1;
		repeat(4000) @(posedge clk_master);
      	#100;
		$finish; 
	end
endmodule
*/
