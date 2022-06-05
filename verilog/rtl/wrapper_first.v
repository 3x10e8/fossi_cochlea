`default_nettype none
module wrapper_cell(
	`ifdef USE_POWER_PINS
	vccd1, vssd1, 
	`endif
	rstb,rstb_out,
	clk_master,clk_master_out,
	ud_en,ud_en_out, //ud_en is common for all the cores and unisons.

	div2out,

	gray_clk,
	no_ones_below_out,

	sin_out,cos_out,
	//sin_outb,cos_outb, //sin_outb will be same as sin_out as the inverter and buffer will be added near the mux switch.
	cclk,

	phi1b_dig,
	comp_high_I, comp_high_Q, 
	
	fb1_I,fb1_Q,
	//fb2_I,fb2_Q,
	
	read_out_I,read_out_Q, //fb1_I:fb_I+ve, fb2_I=fb_I-ve 	
);
	`ifdef USE_POWER_PINS
	inout vccd1, vssd1; 
	`endif
	input rstb,clk_master,ud_en; //ud_en is common for all the cores and unisons.
	output rstb_out,clk_master_out,ud_en_out;

	output div2out;

	output [10:1]gray_clk;
	output [2:0]no_ones_below_out;
	
	output sin_out,cos_out;
	//output sin_outb,cos_outb; //sin_outb will be same as sin_out as the inverter and buffer will be added near the mux switch.
	output cclk; // for threshold cap swapping

	input phi1b_dig;
	input comp_high_I,comp_high_Q;

	output fb1_I;
	output fb1_Q;
	//output fb2_I;
	//output fb2_Q;
	output [1:0]read_out_I,read_out_Q; //fb1_I:fb_I+ve, fb2_I=fb_I-ve 
endmodule
`default_nettype wire