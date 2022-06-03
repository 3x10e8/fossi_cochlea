`timescale 1ns/1ps
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rst_dff_n.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rst_dff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff_n.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_dff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/asyn_rstb_tff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/buffer.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/dlrtn.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/edge_ff_n.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/edge_ff.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/fb.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/gray_selector_fb.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/inv_buffer.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/mux_2_1.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/tbuf.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/feedback/u_d_bin_counter.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_1.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_2.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_3.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_4.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_5.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_6.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_7.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/final readout/ro_block_8.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/LO/lo.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/cclk/cclk_gen.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/dig_div2/dig_div2.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/dig_evegen/dig_evegen.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/edge_ff_gray.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_first_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_sine_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/gray_tree_cell.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/gray_tree/peripheral_gray.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/wrapper_first/wrapper_first.v"
`include "/Volumes/export/isn/ishan/verilog/final_verilog/wrapper_cell/wrapper_cell.v"

module digital_unison(
	input vpwr,rstb,clk_master,ud_en,//phi1b_dig[0] is corresponding to the first wrapper
	input [7:0]phi1b_dig, //more of these will be required for unison's testbench.	
	input [7:0]comp_high_I,comp_high_Q,				
	output wire [7:0]sin_out,cos_out,sin_outb,cos_outb,fb2_I,fb2_Q,fb1_Q,fb1_I,
	output wire [1:0]read_out_I,read_out_Q,
	output wire div2out_7,
	output wire [2:0]no_ones_below_out_7,
	output wire [10:1]gray_clk_out_7,
	output wire rstb_out_7,ud_en_out_7,clk_master_out_7,vpwr_out_7);
	wire [6:0]div2out;
	wire [2:0]no_ones_below_out[0:6];
	wire [10:1]gray_clk_out[0:6]; //these will be common among all as they need to be shorted.
	wire [6:0]rstb_out,ud_en_out,clk_master_out,vpwr_out;//[0] index corresponds to the output of first wrapper and [1] index to that of second wrapper.
	

wrapper_first w0(
	.vpwr(vpwr),
	.rstb(rstb),
	.clk_master(clk_master),
	.phi1b_dig(phi1b_dig[0]),
	.ud_en(ud_en),
	.comp_high_I(comp_high_I[0]),
	.comp_high_Q(comp_high_Q[0]),
	.div2out(div2out[0]),
	.sin_out(sin_out[0]),
	.cos_out(cos_out[0]),
	.sin_outb(sin_outb[0]),
	.cos_outb(cos_outb[0]),
	.fb2_I(fb2_I[0]),
	.fb2_Q(fb2_Q[0]),
	.fb1_I(fb1_I[0]),
	.fb1_Q(fb1_Q[0]),
	.no_ones_below_out(no_ones_below_out[0]),//
	.gray_clk(gray_clk_out[0]),
	.read_out_I(read_out_I[1:0]),
	.read_out_Q(read_out_Q[1:0]),
	.rstb_out(rstb_out[0]),
	.ud_en_out(ud_en_out[0]),
	.clk_master_out(clk_master_out[0]),
	.vpwr_out(vpwr_out[0]));

genvar j;
generate for(j=0;j<=5;j=j+1)begin:wrapper_cell_loop
wrapper_cell w1(
	.vpwr(vpwr_out[j]),
	.rstb(rstb_out[j]),
	.clk_master(clk_master_out[j]),
	.phi1b_dig(phi1b_dig[j+1]),
	.ud_en(ud_en_out[j]),
	.comp_high_I(comp_high_I[j+1]),
	.comp_high_Q(comp_high_Q[j+1]),
	.clkdiv2(div2out[j]),
	.gray_clk_in(gray_clk_out[j]), ////gray clk from wrapper_first
	.no_ones_below_in(no_ones_below_out[j]),//
	.div2out(div2out[j+1]),
	.sin_out(sin_out[j+1]),
	.cos_out(cos_out[j+1]),
	.sin_outb(sin_outb[j+1]),
	.cos_outb(cos_outb[j+1]),
	.fb2_I(fb2_I[j+1]),
	.fb2_Q(fb2_Q[j+1]),
	.fb1_I(fb1_I[j+1]),
	.fb1_Q(fb1_Q[j+1]),
	.no_ones_below_out(no_ones_below_out[j+1]),//
	.gray_clk_out(gray_clk_out[j+1]),//
	.read_out_I(read_out_I[1:0]),
	.read_out_Q(read_out_Q[1:0]),
	.rstb_out(rstb_out[j+1]),
	.ud_en_out(ud_en_out[j+1]),
	.clk_master_out(clk_master_out[j+1]),
	.vpwr_out(vpwr_out[j+1]));
end
endgenerate

wrapper_cell w_last(
	.vpwr(vpwr_out[6]),
	.rstb(rstb_out[6]),
	.clk_master(clk_master_out[6]),
	.phi1b_dig(phi1b_dig[7]),
	.ud_en(ud_en_out[6]),
	.comp_high_I(comp_high_I[7]),
	.comp_high_Q(comp_high_Q[7]),
	.clkdiv2(div2out[6]),
	.gray_clk_in(gray_clk_out[6]), ////gray clk from wrapper_first
	.no_ones_below_in(no_ones_below_out[6]),//
	.div2out(div2out_7),
	.sin_out(sin_out[7]),
	.cos_out(cos_out[7]),
	.sin_outb(sin_outb[7]),
	.cos_outb(cos_outb[7]),
	.fb2_I(fb2_I[7]),
	.fb2_Q(fb2_Q[7]),
	.fb1_I(fb1_I[7]),
	.fb1_Q(fb1_Q[7]),
	.no_ones_below_out(no_ones_below_out_7[2:0]),//
	.gray_clk_out(gray_clk_out_7[10:1]),//
	.read_out_I(read_out_I[1:0]),
	.read_out_Q(read_out_Q[1:0]),
	.rstb_out(rstb_out_7),
	.ud_en_out(ud_en_out_7),
	.clk_master_out(clk_master_out_7),
	.vpwr_out(vpwr_out_7));
endmodule