`default_nettype none
`include "wavelet_core_first.v"
//`include "wavelet_core.v"

`define NUM_OCTAVES 8 
/*
number of notes in a unison:
A0 = A7
A6 = A7/2
A5 = A6/2
A4 = A5/2
A3 = A4/2
A2 = A5/2
A1 = A2/2
A0 = A1/2 
*/

module unison(
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
	output [1:0]read_out_I,read_out_Q //fb1_I:fb_I+ve, fb2_I=fb_I-ve 
);

	wavelet_core_first sa7( // highest octave
		`ifdef USE_POWER_PINS
		    .vdda1(vdda1), // 1.2V analog supply
		    .vdda2(vdda2), // tunable analog mux supply
		    .vccd1(vccd1), // comparator supply and to level shifters
		    .vssd1(vssd1), // all gnds shorted to vssd1
		`endif

		/*---------------------*/
		/* Analog core signals */
		/*---------------------*/
		// these signals are global inputs provided to all octaves in the unison
		.inp(inp), 
		.inm(inm), // (gpio_analog is inout) audio inputs
		.vpb(vpb), 
		.vnb(vnb), // (gpio_analog is inout) to current starving inverters in phi clkgen
		.thresh1(thresh1), 
		.thresh2(thresh2), // (gpio_analog is inout) thresholds for last cap

		/*----------------------*/
		/* Digital core signals */
		/*----------------------*/
		// these signals are shorted from core to core
		.rstb(rstb),
		.rstb_out(rstb_out),
		.clk_master(clk_master),
		.clk_master_out(clk_master_out),
		.ud_en(ud_en), //ud_en is common for all the cores and unisons.
		.ud_en_out(ud_en_out),

		// these signals are modified inside the core and then shunted
		.div2out(),

		//input [9:0]gray_clk_in,
		.gray_clk_out(),
		//input [2:0]no_ones_below_in,
		.no_ones_below_out(),

		// these are global outputs driven by each core
		.read_out_I(read_out_I),
		.read_out_Q(read_out_Q)
	);

endmodule

`default_nettype wire