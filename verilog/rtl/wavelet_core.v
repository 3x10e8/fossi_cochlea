`default_nettype none
`include "analog_core.v"
`include "wrapper_cell.v"

module wavelet_core(
	`ifdef USE_POWER_PINS
	    inout vdda1, // 1.2V analog supply
	    inout vdda2, // tunable analog mux supply
	    inout vccd1, // comparator supply and to level shifters
	    inout vssd1, // all gnds shorted to vssd1
	`endif

	/*---------------------*/
	/* Analog core signals */
	/*---------------------*/

	inout inp, inm, // (gpio_analog is inout) audio inputs
	inout vpb, vnb, // (gpio_analog is inout) to current starving inverters in phi clkgen
	inout thresh1, thresh2, // (gpio_analog is inout) thresholds for last cap

	/*----------------------*/
	/* Digital core signals */
	/*----------------------*/

	input rstb,clk_master,ud_en, //ud_en is common for all the cores and unisons.
	output rstb_out,clk_master_out,ud_en_out,

	input clkdiv2,
	output div2out,

	input [9:0]gray_clk_in,
	output [10:1]gray_clk_out,
	input [2:0]no_ones_below_in,
	output [2:0]no_ones_below_out,

	output [1:0]read_out_I,read_out_Q //fb1_I:fb_I+ve, fb2_I=fb_I-ve 
);

	wire sin,cos; //sinb,cosb; //sin_outb will be same as sin_out as the inverter and buffer will be added near the mux switch.
	wire cclk; 
	wire phi1b_dig;
	wire comp_high_I,comp_high_Q;
	wire fb_I,fb_Q;

analog_core I(
	`ifdef USE_POWER_PINS
		.vdda1(vdda1), 
		.vdda2(vdda2), 
		.vccd1(vccd1), 
		.vssd1(vssd1), 
	`endif
	.inp(inp), 
	.inm(inm), 
	.vpb(vpb), 
	.vnb(vnb), 
	.thresh1(thresh1), 
	.thresh2(thresh2), 
	.div2(clkdiv2), 
	.cclk(cclk), 
	.phi1b_dig(phi1b_dig),
	// unshared signals betweem I and Q
	.lo(cos), 
	.fb(fb_I), 
	//.fbm(fb2_I), 
	.comp_high(comp_high_I)
);

analog_core Q(
	`ifdef USE_POWER_PINS
		.vdda1(vdda1), 
		.vdda2(vdda2), 
		.vccd1(vccd1), 
		.vssd1(vssd1), 
	`endif
	.inp(inp), 
	.inm(inm), 
	.vpb(vpb), 
	.vnb(vnb), 
	.thresh1(thresh1), 
	.thresh2(thresh2), 
	.div2(clkdiv2), 
	.cclk(cclk), 
	.phi1b_dig(phi1b_dig),
	// unshared signals betweem I and Q
	.lo(cos), 
	.fb(fb_Q), 
	//.fbm(fb2_Q), 
	.comp_high(comp_high_I)
);

wrapper_cell dig(
	`ifdef USE_POWER_PINS
		.vccd1(vccd1), 
		.vssd1(vssd1), 
	`endif
	.rstb(rstb),
	.rstb_out(rstb_out),
	.clk_master(clk_master),
	.clk_master_out(clk_master_out),
	.ud_en(ud_en),
	.ud_en_out(ud_en_out), //ud_en is common for all the cores and unisons.

	.clkdiv2(clkdiv2),
	.div2out(div2out),

	.gray_clk_in(gray_clk_in),
	.gray_clk_out(gray_clk_out),
	.no_ones_below_in(no_ones_below_in),
	.no_ones_below_out(no_ones_below_out),

	.sin_out(sin),
	.cos_out(cos),
	//.sin_outb(sinb),
	//.cos_outb(cosb), //sin_outb will be same as sin_out as the inverter and buffer will be added near the mux switch.
	.cclk(cclk),

	.phi1b_dig(phi1b_dig),
	.comp_high_I(comp_high_I), 
	.comp_high_Q(comp_high_Q), 

	.fb1_I(fb_I),
	.fb1_Q(fb_Q),
	//.fb2_I(),
	//.fb2_Q(),

	.read_out_I(read_out_I),
	.read_out_Q(read_out_Q) //fb1_I:fb_I+ve(), fb2_I=fb_I-ve 	
);
endmodule

`default_nettype wire