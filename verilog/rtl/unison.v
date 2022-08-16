`default_nettype none

`define RUN_DV
`include "asyn_rst_dff_n.v"
`include "asyn_rst_dff.v"
`include "asyn_rstb_dff_n.v"
`include "asyn_rstb_dff.v"
`include "asyn_rstb_tff.v"
`include "buffer.v"
`include "dlrtn.v"
`include "edge_ff_n.v"
`include "edge_ff.v"
`include "fb.v"
`include "gray_selector_fb.v"
`include "inv_buffer.v"
`include "mux_2_1.v"
`include "tbuf.v"
`include "u_d_bin_counter.v"
`include "ro_block_1.v"
`include "ro_block_2.v"
`include "ro_block_3.v"
`include "ro_block_4.v"
`include "ro_block_5.v"
`include "ro_block_6.v"
`include "ro_block_7.v"
`include "ro_block_8.v"
`include "lo.v"
`include "cclk_gen.v"
`include "dig_div2.v"
`include "dig_evegen.v"
`include "edge_ff_gray.v"
`include "gray_cell.v"
`include "gray_first_cell.v"
`include "gray_sine_cell.v"
`include "gray_tree_cell.v"
`include "peripheral_gray.v"
`include "wrapper_first.v"
`include "wrapper_cell.v"
`include "first_dual_core.v"
`include "scalable_dual_core.v"
`include "wavelet_core_first.v"
`include "wavelet_core.v"

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
	wire [3:0] rstb_out, ud_en_out, clk_master_out;
	wire [3:0] read_out_I_top, read_out_Q_top;
	wire [3:0] div2out;
	wire [10:1] gray_clk_out[0:3]; //these will be common among all as they need to be shorted.
	wire [2:0] no_ones_below_out[0:3];
	wire [2:0] read_out_I_top[0:3];
	wire [2:0] read_out_Q_top[0:3];
	

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
		.rstb_out(rstb_out[0]),
		.clk_master(clk_master),
		.clk_master_out(clk_master_out[0]),
		.ud_en(ud_en), //ud_en is common for all the cores and unisons.
		.ud_en_out(ud_en_out[0]),

		// these signals are modified inside the core and then shunted
		.div2out(div2out[0]),

		//input [9:0]gray_clk_in,
		.gray_clk_out(gray_clk_out[0]),
		//input [2:0]no_ones_below_in,
		.no_ones_below_out(no_ones_below_out[0]),

		// these are global outputs driven by each core
		.read_out_I(read_out_I),
		.read_out_Q(read_out_Q),
		.read_out_I_top(read_out_I_top[0]),
		.read_out_Q_top(read_out_Q_top[0])
	);

	genvar i;
	generate 
		for (i=0; i<=2; i=i+1) begin
			wavelet_core core(
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
				.rstb(rstb_out[i]),
				.rstb_out(rstb_out[i+1]),
				.clk_master(clk_master_out[i]),
				.clk_master_out(clk_master_out[i+1]),
				.ud_en(ud_en_out[i]), //ud_en is common for all the cores and unisons.
				.ud_en_out(ud_en_out[i+1]),

				.clkdiv2_in(div2out[i]),

				// these signals are modified inside the core and then shunted
				.div2out(div2out[i+1]),

				.gray_clk_in(gray_clk_out[i]),
				.gray_clk_out(gray_clk_out[i+1]),
				.no_ones_below_in(no_ones_below_out[i]),
				.no_ones_below_out(no_ones_below_out[i+1]),

				// these are global outputs driven by each core
				.read_out_I(read_out_I_top[i]),
				.read_out_Q(read_out_Q_top[i]),
				.read_out_I_top(read_out_I_top[i+1]),
				.read_out_Q_top(read_out_Q_top[i+1])
			);
		end
	endgenerate

endmodule
`default_nettype wire