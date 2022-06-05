`default_nettype none

module unison(
	// Digital Inputs
    input vpwr,rstb,clk_master,phi1b_dig,ud_en, //ud_en is common for all the cores and unisons.
    input comp_high_I,comp_high_Q, 
    output wire div2out,
    
    // For analog mux
    output wire sin_out,cos_out,sin_outb,cos_outb, //sin_outb will be same as sin_out as the inverter and buffer will be added near the mux switch.
    
    // Next gray tree
    output wire [2:0]no_ones_below_out,
    output wire [10:1]gray_clk,

    // To feedback filter +ve
    output wire fb1_I,fb1_Q
    // To feedback filter -ve
    output wire fb2_I,fb2_Q

    // Readout out bus for both eve and polxeve
    output wire [1:0]read_out_I,read_out_Q, //fb1_I:fb_I+ve, fb2_I=fb_I-ve 

    
    output wire rstb_out,clk_master_out,ud_en_out,vpwr_out);

	wrapper_first u0(
		// Digital inputs from top
	    .vpwr(),
	    .rstb(),
	    .clk_master(),
	    .phi1b_dig(),
	    .ud_en(), //ud_en is common for all the cores and unisons.
	    
	    // inputs from u0_analog
	    .comp_high_I(),
	    .comp_high_Q(),

	    // outputs to next 
	    .div2out(),
	    
	    // For analog mux
	    .sin_out(),
	    .cos_out(),
	    .sin_outb(),
	    .cos_outb(), //sin_outb will be same as sin_out as the inverter and buffer will be added near the mux switch.
	    
	    // Next gray tree
	    .no_ones_below_out(), // [2:0]
	    .gray_clk, // [10:1]

	    // To feedback filter +ve
	    output wire fb1_I,fb1_Q
	    // To feedback filter -ve
	    output wire fb2_I,fb2_Q

	    // Readout out bus for both eve and polxeve
	    output wire [1:0]read_out_I,read_out_Q, //fb1_I:fb_I+ve, fb2_I=fb_I-ve 

	    
	    output wire rstb_out,clk_master_out,ud_en_out,vpwr_out);

endmodule

`default_nettype wire