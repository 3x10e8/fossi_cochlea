`default_nettype none

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

	// global inputs from RISC (must level shift vccd2->vccd1)
	input rstb, ud_en,//phi1b_dig[0] is corresponding to the first wrapper

	// unison specific inputs from RISC
	input clk_master,
	input clkdiv2_in,
	input [9:0]gray_clk_in,
	input [2:0]no_ones_below_in,
	// outputs to analog
	output wire [1:0] clkdiv2_I, clkdiv2_Q,
	output wire [1:0] cclk_I, cclk_Q,

	output wire [1:0] cos_out, sin_out,
	output wire [1:0] cos_outb, sin_outb, // must be inverted in analog

	// inputs from analog, one per I/Q wavelet core in unison
	input [1:0] comp_high_I, comp_high_Q,	
	input [1:0] phi1b_dig_I, phi1b_dig_Q, //more of these will be required for unison's testbench.	
	
	output wire [1:0] fb1_I, fb1_Q,
	output wire [1:0] fb2_I, fb2_Q, // feedback to -ve side must be inverted in analog
	
	//final outputs of digital core
	output wire div2out,
	output wire [10:1] gray_clk_out,
	output wire [2:0] no_ones_below_out,

	// unison outputs
	output wire [1:0] read_out_I, read_out_Q,	

	// make duplicate ports for manual stitching
	output wire rstb_out, ud_en_out, clk_master_out, 
	output wire [1:0] read_out_I_top, read_out_Q_top
);

	wire [1:0]sin,cos; //sinb,cosb; //sin_outb will be same as sin_out as the inverter and buffer will be added near the mux switch.
	wire [1:0]cclk; 
	wire [1:0]phi1b_dig;
	wire [1:0]comp_high_I,comp_high_Q;
	wire [1:0]fb_I,fb_Q;

	/*
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
		.clkdiv2(clkdiv2), 
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
		.clkdiv2(clkdiv2), 
		.cclk(cclk), 
		.phi1b_dig(phi1b_dig),
		// unshared signals betweem I and Q
		.lo(sin), 
		.fb(fb_Q), 
		//.fbm(fb2_Q), 
		.comp_high(comp_high_Q)
	);
	*/
	scalable_dual_core core2(
		`ifdef USE_POWER_PINS
			.vccd1(vccd1), 
			.vssd1(vssd1), 
		`endif
		.rstb(rstb),
		.ud_en(ud_en),
		.clk_master(clk_master),

		.sin_out(sin_out[1:0]),
		.cos_out(cos_out[1:0]),
		.sin_outb(sin_outb[1:0]),
		.cos_outb(cos_outb[1:0]),

		.clkdiv2_in(clkdiv2_in),
		.gray_clk_in(gray_clk_in),
		.no_ones_below_in(no_ones_below_in),

		.clkdiv2_I(clkdiv2_I[1:0]),
		.clkdiv2_Q(clkdiv2_Q[1:0]),
		.cclk_I(cclk_I[1:0]),
		.cclk_Q(cclk_Q[1:0]),

		.phi1b_dig_I(phi1b_dig_I[1:0]),
		.phi1b_dig_Q(phi1b_dig_Q[1:0]),
		.comp_high_I(comp_high_I[1:0]),
		.comp_high_Q(comp_high_Q[1:0]),

		.fb2_I(fb2_I[1:0]),
		.fb2_Q(fb2_Q[1:0]),
		.fb1_I(fb1_I[1:0]),
		.fb1_Q(fb1_Q[1:0]),

		.div2out(div2out),
		.gray_clk_out(gray_clk_out[10:1]),
		.no_ones_below_out(no_ones_below_out[2:0]),

		.read_out_I(read_out_I),
		.read_out_Q(read_out_Q),

		.rstb_out(rstb_out),
		.ud_en_out(ud_en_out),
		.clk_master_out(clk_master_out),
		.read_out_I_top(read_out_I_top),
		.read_out_Q_top(read_out_Q_top)
	);
endmodule
`default_nettype wire