`include "ro_block_1.v"
`timescale 1ns/1fs

//first_readout_block fastest data out
module ro_integrated(
	input pwr,
	input [7:0]gray,clk_ext,in_pol,in_pol_eve, //pwr is the vdd input 
	output wire out_mux_pol,out_mux_pol_eve);	   //gray is the gray clk bits
								   // clk_ext is the single global external clock.
	genvar i;
	generate for(i=0; i<=7; i=i+1) begin: ro_loop
		ro_block_1 rox1(
			.pwr(pwr),
			.gray(gray[i]), //parameterize the testbench for all the readouts
			.clk_ext(clk_ext[i]),
			.in_pol(in_pol[i]),
			.in_pol_eve(in_pol_eve[i]),
			.out_mux_pol(out_mux_pol),
			.out_mux_pol_eve(out_mux_pol_eve));
		end
	endgenerate
endmodule


//Testbench
//gc: Gray Counter
//c: Counter
//clk_ext_global: master clock for gray counter clk
module tb_ro_integrated;
	reg pwr,clk_ext_global, en_global,gc_rstb;
	reg [7:0]comp_out,clk_ext; //comp_out is the connected to 'in' ports
	wire [16:0]gc_clk;
	wire out_mux_pol, out_mux_pol_eve;
	parameter FREQ=2560000;
	//parameter n=1; // n is the index of readout
	real clk_half_pd_global=(1.0/(2*FREQ))*1e9; 
	
	//
	real clk_half_pd_0=(1.0/(2*FREQ))*(2**(0))*1e9;
	real comp_out_half_pd_0=(1.0/(2*FREQ))*1e9*(2**(1));
	//
	real clk_half_pd_1=(1.0/(2*FREQ))*(2**(1))*1e9;
	real comp_out_half_pd_1=(1.0/(2*FREQ))*1e9*(2**(2));
	//
   	real clk_half_pd_2=(1.0/(2*FREQ))*(2**(2))*1e9;
	real comp_out_half_pd_2=(1.0/(2*FREQ))*1e9*(2**(3));
	//
	real clk_half_pd_3=(1.0/(2*FREQ))*(2**(3))*1e9;
	real comp_out_half_pd_3=(1.0/(2*FREQ))*1e9*(2**(4));
	//
	real clk_half_pd_4=(1.0/(2*FREQ))*(2**(4))*1e9;
	real comp_out_half_pd_4=(1.0/(2*FREQ))*1e9*(2**(5));
	//
	real clk_half_pd_5=(1.0/(2*FREQ))*(2**(5))*1e9;
	real comp_out_half_pd_5=(1.0/(2*FREQ))*1e9*(2**(6));
	//
	real clk_half_pd_6=(1.0/(2*FREQ))*(2**(6))*1e9;
	real comp_out_half_pd_6=(1.0/(2*FREQ))*1e9*(2**(7));
	//
	real clk_half_pd_7=(1.0/(2*FREQ))*(2**(7))*1e9;
	real comp_out_half_pd_7=(1.0/(2*FREQ))*1e9*(2**(8));
	//
	initial begin
	$dumpfile("ro_in.vcd");
	$dumpvars;
	end 	
	//real clk_half_pd=(1.0/(2*FREQ))*(2**(n-1))*1e9; // timeperiod of ext_clk depends on index of readout block
	//real comp_out_half_pd=(1.0/(2*FREQ))*1e9*(2**(n));
	//module instantiation	
	gray_count gc_clock(
		.clk(clk_ext_global), 
		.enable(en_global), 
		.reset(gc_rstb), 
		.gray_count(gc_clk[16:0]));
	ro_integrated ro_x(
		.pwr(pwr),
		.gray(gc_clk[7:0]), //parameterize the testbench for all the readouts
		.clk_ext(clk_ext[7:0]),
		.in_pol(comp_out[7:0]),
		.in_pol_eve(comp_out[7:0]),
		.out_mux_pol(out_mux_pol),
		.out_mux_pol_eve(out_mux_pol_eve));

//signal generation
	initial begin
	clk_ext_global=0;
	#1 clk_ext_global=1;
	forever
		#(clk_half_pd_global)clk_ext_global = ~clk_ext_global; //global ext_clk generation freq=2.56 MHz
	end
	//////
	initial begin
		clk_ext[0]=0;
		#1 clk_ext[0]=1;
		forever
			#(clk_half_pd_0)clk_ext[0] = ~clk_ext[0]; //  core ext_clk generation freq=1.28 MHz
	end

	initial begin 
		comp_out[0]=0;
		#1 comp_out[0]=1;
		#(clk_half_pd_0+1) comp_out[0]=0;
		forever
		#(comp_out_half_pd_0)comp_out[0] = ~comp_out[0];
	end	
	/////	

	//////
	initial begin
		clk_ext[1]=0;
		#1 clk_ext[1]=1;
		forever
			#(clk_half_pd_1)clk_ext[1] = ~clk_ext[1]; //  core ext_clk generation freq=1.28 MHz
	end

	initial begin 
		comp_out[1]=0;
		#1 comp_out[1]=1;
		#(clk_half_pd_1+1) comp_out[1]=0;
		forever
		#(comp_out_half_pd_1)comp_out[1] = ~comp_out[1];
	end	
	/////
	//////
	initial begin
		clk_ext[2]=0;
		#1 clk_ext[2]=1;
		forever
			#(clk_half_pd_2)clk_ext[2] = ~clk_ext[2]; //  core ext_clk generation freq=1.28 MHz
	end

	initial begin 
		comp_out[2]=0;
		#1 comp_out[2]=1;
		#(clk_half_pd_2+1) comp_out[2]=0;
		forever
		#(comp_out_half_pd_2)comp_out[2] = ~comp_out[2];
	end	
	/////		
	//////
	initial begin
		clk_ext[3]=0;
		#1 clk_ext[3]=1;
		forever
			#(clk_half_pd_3)clk_ext[3] = ~clk_ext[3]; //  core ext_clk generation freq=1.28 MHz
	end

	initial begin 
		comp_out[3]=0;
		#1 comp_out[3]=1;
		#(clk_half_pd_3+1) comp_out[3]=0;
		forever
		#(comp_out_half_pd_3)comp_out[3] = ~comp_out[3];
	end	
	/////
	
	//////
	initial begin
		clk_ext[4]=0;
		#1 clk_ext[4]=1;
		forever
			#(clk_half_pd_4)clk_ext[4] = ~clk_ext[4]; //  core ext_clk generation freq=1.28 MHz
	end

	initial begin 
		comp_out[4]=0;
		#1 comp_out[4]=1;
		#(clk_half_pd_4+1) comp_out[4]=0;
		forever
		#(comp_out_half_pd_4)comp_out[4] = ~comp_out[4];
	end	
	/////	
	//////
	initial begin
		clk_ext[5]=0;
		#1 clk_ext[5]=1;
		forever
			#(clk_half_pd_5)clk_ext[5] = ~clk_ext[5]; //  core ext_clk generation freq=1.28 MHz
	end

	initial begin 
		comp_out[5]=0;
		#1 comp_out[5]=1;
		#(clk_half_pd_5+1) comp_out[5]=0;
		forever
		#(comp_out_half_pd_5)comp_out[5] = ~comp_out[5];
	end	
	/////	
	//////
	initial begin
		clk_ext[6]=0;
		#1 clk_ext[6]=1;
		forever
			#(clk_half_pd_6)clk_ext[6] = ~clk_ext[6]; //  core ext_clk generation freq=1.28 MHz
	end

	initial begin 
		comp_out[6]=0;
		#1 comp_out[6]=1;
		#(clk_half_pd_6+1) comp_out[6]=0;
		forever
		#(comp_out_half_pd_6)comp_out[6] = ~comp_out[6];
	end	
	/////	
	//////
	initial begin
		clk_ext[7]=0;
		#1 clk_ext[7]=1;
		forever
			#(clk_half_pd_7)clk_ext[7] = ~clk_ext[7]; //  core ext_clk generation freq=1.28 MHz
	end

	initial begin 
		comp_out[7]=0;
		#1 comp_out[7]=1;
		#(clk_half_pd_7+1) comp_out[7]=0;
		forever
		#(comp_out_half_pd_7)comp_out[7] = ~comp_out[7];
	end	
	/////	
		








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


