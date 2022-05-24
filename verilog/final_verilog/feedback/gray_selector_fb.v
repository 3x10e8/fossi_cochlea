`timescale 1ns/1ps
`include "edge_ff.v"
`include "tbuf.v"
`include "u_d_bin_counter.v"
`include "gray_count.v"

module dlrtn(
	input d,
	input gate,
	input rstb,
	output reg q);
	always@(rstb,d,gate)begin
		if(!rstb) q<=0;
		else if(gate) q<=d;
	end
endmodule

module gray_selector_fb(
input d,clk_ext,rstb_ext, //d has to be connected to vdd in our case
input [9:0]in,clk, //ext gray clocks are to be connected to the clk
output wire out_muxed); //rstb pin of eff has to be ext clk signal
wire [9:0]eff_out; //ext_rst is the reset to the final latch.
wire out_muxed_raw;
genvar i;
generate for(i=0;i<=9;i=i+1) begin: fb_gray_selector_loop
edge_ff eff(.d(d),.rstb(clk_ext),.clk(clk[i]),.out(eff_out[i]));
tbuf t_buf(.in(in[i]),.ctrl(eff_out[i]),.out(out_muxed_raw));
dlrtn dl(.d(out_muxed_raw),.gate(clk_ext),.rstb(rstb_ext),.q(out_muxed));
end
endgenerate
endmodule

/*
//Testbench
//gc: Gray Counter
//gs: Gray Selector
//c: Counter
//clk_ext: external clock of the core
module tb_gray_selector_fb;
	reg c_ud,c_clk,en_global,en_counter,gs_d,clk_ext,rstb; //rstb is the global reset
	wire [15:0]c_count; //en_counter is specifically for the feedback binary counter independent of global enable signal. 
	wire [16:0]gc_clk;
	wire muxed_out;
	parameter FREQ=2560000;
	real clk_half_pd=(1.0/(2*FREQ))*1e9;
	//module instantiation	
	gray_count gc_clock(.clk(clk_ext), .enable(en_global), .reset(rstb), .gray_count(gc_clk[16:0]));
	u_d_bin_counter ud_count(.u_d(c_ud),.clk(c_clk),.rstb(rstb),.en(en_counter),.q(c_count[15:0]));
	gray_selector_fb gs_fb(.d(gs_d),.clk_ext(clk_ext),.rstb_ext(rstb),.in({c_count[6],c_count[7],c_count[8],c_count[9],c_count[10],c_count[11],c_count[12],c_count[13],c_count[14],c_count[15]}),.clk(gc_clk[10:1]),.out_muxed(muxed_out));

	initial begin
	$dumpfile("gray_selector_fb.vcd");
	$dumpvars;
	end 	
//signal generation
	initial begin
		clk_ext=1;
		forever
			#(clk_half_pd)clk_ext = ~clk_ext; //ext_clk generation freq=2.56 MHz
	end

	always begin //c_clk generation
		c_clk=1;
		#(clk_half_pd);
		c_clk=0;
		#(3*clk_half_pd);
	end

	initial begin
		gs_d=1;
		c_ud=1;
		en_global=0;
		en_counter=0;
		rstb=1;
		repeat(10) @(posedge clk_ext);
		#5 en_global=1;
		   en_counter=1;
		#5 rstb=0;
		repeat (10) @(posedge clk_ext);
		#5 rstb=1;
		repeat(34000) @(posedge clk_ext);
		#5 en_counter=0;
		repeat(10)@(posedge clk_ext);

		#5 c_ud=0;
		repeat(100) @(posedge clk_ext);
		rstb=0;
		repeat(5) @(posedge clk_ext);
		rstb=1;
        #100;
		$finish; 
	end
	endmodule
*/

	
