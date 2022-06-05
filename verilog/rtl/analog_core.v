`default_nettype none

// Using VERILOG_FILES_BLACKBOX
// https://openlane-docs.readthedocs.io/en/rtd-develop/doc/chip_integration.html
// https://github.com/efabless/OpenLane/blob/master/designs/manual_macro_placement_test/src/design.v

// replicate and flip horizontally for I and Q
module analog_core (
	`ifdef USE_POWER_PINS
	vdda1, vdda2, vccd1, vssd1, 
	`endif
	inp, inm, 
	vpb, vnb, 
	thresh1, thresh2, 
	div2, cclk, 
	lo, 
	fb, 
	//fbm, 
	comp_high,
	phi1b_dig
	);

	`ifdef USE_POWER_PINS
	    inout vdda1; // 1.2V analog supply
	    inout vdda2; // tunable analog mux supply
	    inout vccd1; // comparator supply and to level shifters
	    inout vssd1; // all gnds shorted to vssd1
	`endif

	// interface to analog signals / power bus
	inout inp, inm; // (gpio_analog is inout) audio inputs
	inout vpb, vnb; // (gpio_analog is inout) to current starving inverters in phi clkgen
	inout thresh1, thresh2; // (gpio_analog is inout) thresholds for last cap

	// interface to digital core
	// to phi clk generation
	input div2, cclk; // to be level-shifted up from vccd1 to vdda1

	// to mux for LO
	input lo; // to be level-shifted up from vccd1 to vdda2, level-shifter generates complementary outputs

	// to filter feedback level-shifter-inverter (duplicates for placement)
	input fb; // to be complemented by level shifter
	//input fbm; // 2=-ve side, must take non-inverted output of level shifter

	// back to digital
	output comp_high; // comparator is already on vccd1 domain
	output phi1b_dig; // pol/event ff clock
endmodule

`default_nettype wire