module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire \cclk_I_0[0] ;
 wire \cclk_I_0[1] ;
 wire \cclk_I_0[2] ;
 wire \cclk_I_0[3] ;
 wire \cclk_I_0[4] ;
 wire \cclk_I_0[5] ;
 wire \cclk_I_0[6] ;
 wire \cclk_I_0[7] ;
 wire \cclk_I_1[0] ;
 wire \cclk_I_1[1] ;
 wire \cclk_I_1[2] ;
 wire \cclk_I_1[3] ;
 wire \cclk_I_1[4] ;
 wire \cclk_I_1[5] ;
 wire \cclk_I_1[6] ;
 wire \cclk_I_1[7] ;
 wire \cclk_Q_0[0] ;
 wire \cclk_Q_0[1] ;
 wire \cclk_Q_0[2] ;
 wire \cclk_Q_0[3] ;
 wire \cclk_Q_0[4] ;
 wire \cclk_Q_0[5] ;
 wire \cclk_Q_0[6] ;
 wire \cclk_Q_0[7] ;
 wire \cclk_Q_1[0] ;
 wire \cclk_Q_1[1] ;
 wire \cclk_Q_1[2] ;
 wire \cclk_Q_1[3] ;
 wire \cclk_Q_1[4] ;
 wire \cclk_Q_1[5] ;
 wire \cclk_Q_1[6] ;
 wire \cclk_Q_1[7] ;
 wire \clkdiv2_I_0[0] ;
 wire \clkdiv2_I_0[1] ;
 wire \clkdiv2_I_0[2] ;
 wire \clkdiv2_I_0[3] ;
 wire \clkdiv2_I_0[4] ;
 wire \clkdiv2_I_0[5] ;
 wire \clkdiv2_I_0[6] ;
 wire \clkdiv2_I_0[7] ;
 wire \clkdiv2_I_1[0] ;
 wire \clkdiv2_I_1[1] ;
 wire \clkdiv2_I_1[2] ;
 wire \clkdiv2_I_1[3] ;
 wire \clkdiv2_I_1[4] ;
 wire \clkdiv2_I_1[5] ;
 wire \clkdiv2_I_1[6] ;
 wire \clkdiv2_I_1[7] ;
 wire \clkdiv2_Q_0[0] ;
 wire \clkdiv2_Q_0[1] ;
 wire \clkdiv2_Q_0[2] ;
 wire \clkdiv2_Q_0[3] ;
 wire \clkdiv2_Q_0[4] ;
 wire \clkdiv2_Q_0[5] ;
 wire \clkdiv2_Q_0[6] ;
 wire \clkdiv2_Q_0[7] ;
 wire \clkdiv2_Q_1[0] ;
 wire \clkdiv2_Q_1[1] ;
 wire \clkdiv2_Q_1[2] ;
 wire \clkdiv2_Q_1[3] ;
 wire \clkdiv2_Q_1[4] ;
 wire \clkdiv2_Q_1[5] ;
 wire \clkdiv2_Q_1[6] ;
 wire \clkdiv2_Q_1[7] ;
 wire \comp_high_I_0[0] ;
 wire \comp_high_I_0[1] ;
 wire \comp_high_I_0[2] ;
 wire \comp_high_I_0[3] ;
 wire \comp_high_I_0[4] ;
 wire \comp_high_I_0[5] ;
 wire \comp_high_I_0[6] ;
 wire \comp_high_I_0[7] ;
 wire \comp_high_I_1[0] ;
 wire \comp_high_I_1[1] ;
 wire \comp_high_I_1[2] ;
 wire \comp_high_I_1[3] ;
 wire \comp_high_I_1[4] ;
 wire \comp_high_I_1[5] ;
 wire \comp_high_I_1[6] ;
 wire \comp_high_I_1[7] ;
 wire \comp_high_Q_0[0] ;
 wire \comp_high_Q_0[1] ;
 wire \comp_high_Q_0[2] ;
 wire \comp_high_Q_0[3] ;
 wire \comp_high_Q_0[4] ;
 wire \comp_high_Q_0[5] ;
 wire \comp_high_Q_0[6] ;
 wire \comp_high_Q_0[7] ;
 wire \comp_high_Q_1[0] ;
 wire \comp_high_Q_1[1] ;
 wire \comp_high_Q_1[2] ;
 wire \comp_high_Q_1[3] ;
 wire \comp_high_Q_1[4] ;
 wire \comp_high_Q_1[5] ;
 wire \comp_high_Q_1[6] ;
 wire \comp_high_Q_1[7] ;
 wire \cos_out_0[0] ;
 wire \cos_out_0[1] ;
 wire \cos_out_0[2] ;
 wire \cos_out_0[3] ;
 wire \cos_out_0[4] ;
 wire \cos_out_0[5] ;
 wire \cos_out_0[6] ;
 wire \cos_out_0[7] ;
 wire \cos_out_1[0] ;
 wire \cos_out_1[1] ;
 wire \cos_out_1[2] ;
 wire \cos_out_1[3] ;
 wire \cos_out_1[4] ;
 wire \cos_out_1[5] ;
 wire \cos_out_1[6] ;
 wire \cos_out_1[7] ;
 wire \fb1_I_0[0] ;
 wire \fb1_I_0[1] ;
 wire \fb1_I_0[2] ;
 wire \fb1_I_0[3] ;
 wire \fb1_I_0[4] ;
 wire \fb1_I_0[5] ;
 wire \fb1_I_0[6] ;
 wire \fb1_I_0[7] ;
 wire \fb1_I_1[0] ;
 wire \fb1_I_1[1] ;
 wire \fb1_I_1[2] ;
 wire \fb1_I_1[3] ;
 wire \fb1_I_1[4] ;
 wire \fb1_I_1[5] ;
 wire \fb1_I_1[6] ;
 wire \fb1_I_1[7] ;
 wire \fb1_Q_0[0] ;
 wire \fb1_Q_0[1] ;
 wire \fb1_Q_0[2] ;
 wire \fb1_Q_0[3] ;
 wire \fb1_Q_0[4] ;
 wire \fb1_Q_0[5] ;
 wire \fb1_Q_0[6] ;
 wire \fb1_Q_0[7] ;
 wire \fb1_Q_1[0] ;
 wire \fb1_Q_1[1] ;
 wire \fb1_Q_1[2] ;
 wire \fb1_Q_1[3] ;
 wire \fb1_Q_1[4] ;
 wire \fb1_Q_1[5] ;
 wire \fb1_Q_1[6] ;
 wire \fb1_Q_1[7] ;
 wire \phi1b_dig_I_0[0] ;
 wire \phi1b_dig_I_0[1] ;
 wire \phi1b_dig_I_0[2] ;
 wire \phi1b_dig_I_0[3] ;
 wire \phi1b_dig_I_0[4] ;
 wire \phi1b_dig_I_0[5] ;
 wire \phi1b_dig_I_0[6] ;
 wire \phi1b_dig_I_0[7] ;
 wire \phi1b_dig_I_1[0] ;
 wire \phi1b_dig_I_1[1] ;
 wire \phi1b_dig_I_1[2] ;
 wire \phi1b_dig_I_1[3] ;
 wire \phi1b_dig_I_1[4] ;
 wire \phi1b_dig_I_1[5] ;
 wire \phi1b_dig_I_1[6] ;
 wire \phi1b_dig_I_1[7] ;
 wire \phi1b_dig_Q_0[0] ;
 wire \phi1b_dig_Q_0[1] ;
 wire \phi1b_dig_Q_0[2] ;
 wire \phi1b_dig_Q_0[3] ;
 wire \phi1b_dig_Q_0[4] ;
 wire \phi1b_dig_Q_0[5] ;
 wire \phi1b_dig_Q_0[6] ;
 wire \phi1b_dig_Q_0[7] ;
 wire \phi1b_dig_Q_1[0] ;
 wire \phi1b_dig_Q_1[1] ;
 wire \phi1b_dig_Q_1[2] ;
 wire \phi1b_dig_Q_1[3] ;
 wire \phi1b_dig_Q_1[4] ;
 wire \phi1b_dig_Q_1[5] ;
 wire \phi1b_dig_Q_1[6] ;
 wire \phi1b_dig_Q_1[7] ;
 wire \sin_out_0[0] ;
 wire \sin_out_0[1] ;
 wire \sin_out_0[2] ;
 wire \sin_out_0[3] ;
 wire \sin_out_0[4] ;
 wire \sin_out_0[5] ;
 wire \sin_out_0[6] ;
 wire \sin_out_0[7] ;
 wire \sin_out_1[0] ;
 wire \sin_out_1[1] ;
 wire \sin_out_1[2] ;
 wire \sin_out_1[3] ;
 wire \sin_out_1[4] ;
 wire \sin_out_1[5] ;
 wire \sin_out_1[6] ;
 wire \sin_out_1[7] ;

 analog_core_I analog_core_I_0 (.vnb(analog_io[3]),
    .vpb(analog_io[2]),
    .th1(analog_io[4]),
    .th2(analog_io[5]),
    .cclk({\cclk_I_0[7] ,
    \cclk_I_0[6] ,
    \cclk_I_0[5] ,
    \cclk_I_0[4] ,
    \cclk_I_0[3] ,
    \cclk_I_0[2] ,
    \cclk_I_0[1] ,
    \cclk_I_0[0] }),
    .div2({\clkdiv2_I_0[7] ,
    \clkdiv2_I_0[6] ,
    \clkdiv2_I_0[5] ,
    \clkdiv2_I_0[4] ,
    \clkdiv2_I_0[3] ,
    \clkdiv2_I_0[2] ,
    \clkdiv2_I_0[1] ,
    \clkdiv2_I_0[0] }),
    .fb1({\fb1_I_0[7] ,
    \fb1_I_0[6] ,
    \fb1_I_0[5] ,
    \fb1_I_0[4] ,
    \fb1_I_0[3] ,
    \fb1_I_0[2] ,
    \fb1_I_0[1] ,
    \fb1_I_0[0] }),
    .high_buf({\comp_high_I_0[7] ,
    \comp_high_I_0[6] ,
    \comp_high_I_0[5] ,
    \comp_high_I_0[4] ,
    \comp_high_I_0[3] ,
    \comp_high_I_0[2] ,
    \comp_high_I_0[1] ,
    \comp_high_I_0[0] }),
    .lo({\cos_out_0[7] ,
    \cos_out_0[6] ,
    \cos_out_0[5] ,
    \cos_out_0[4] ,
    \cos_out_0[3] ,
    \cos_out_0[2] ,
    \cos_out_0[1] ,
    \cos_out_0[0] }),
    .phi1b_dig({\phi1b_dig_I_0[7] ,
    \phi1b_dig_I_0[6] ,
    \phi1b_dig_I_0[5] ,
    \phi1b_dig_I_0[4] ,
    \phi1b_dig_I_0[3] ,
    \phi1b_dig_I_0[2] ,
    \phi1b_dig_I_0[1] ,
    \phi1b_dig_I_0[0] }));
 analog_core_I analog_core_I_1 (.vnb(analog_io[3]),
    .vpb(analog_io[2]),
    .th1(analog_io[4]),
    .th2(analog_io[5]),
    .cclk({\cclk_I_1[7] ,
    \cclk_I_1[6] ,
    \cclk_I_1[5] ,
    \cclk_I_1[4] ,
    \cclk_I_1[3] ,
    \cclk_I_1[2] ,
    \cclk_I_1[1] ,
    \cclk_I_1[0] }),
    .div2({\clkdiv2_I_1[7] ,
    \clkdiv2_I_1[6] ,
    \clkdiv2_I_1[5] ,
    \clkdiv2_I_1[4] ,
    \clkdiv2_I_1[3] ,
    \clkdiv2_I_1[2] ,
    \clkdiv2_I_1[1] ,
    \clkdiv2_I_1[0] }),
    .fb1({\fb1_I_1[7] ,
    \fb1_I_1[6] ,
    \fb1_I_1[5] ,
    \fb1_I_1[4] ,
    \fb1_I_1[3] ,
    \fb1_I_1[2] ,
    \fb1_I_1[1] ,
    \fb1_I_1[0] }),
    .high_buf({\comp_high_I_1[7] ,
    \comp_high_I_1[6] ,
    \comp_high_I_1[5] ,
    \comp_high_I_1[4] ,
    \comp_high_I_1[3] ,
    \comp_high_I_1[2] ,
    \comp_high_I_1[1] ,
    \comp_high_I_1[0] }),
    .lo({\cos_out_1[7] ,
    \cos_out_1[6] ,
    \cos_out_1[5] ,
    \cos_out_1[4] ,
    \cos_out_1[3] ,
    \cos_out_1[2] ,
    \cos_out_1[1] ,
    \cos_out_1[0] }),
    .phi1b_dig({\phi1b_dig_I_1[7] ,
    \phi1b_dig_I_1[6] ,
    \phi1b_dig_I_1[5] ,
    \phi1b_dig_I_1[4] ,
    \phi1b_dig_I_1[3] ,
    \phi1b_dig_I_1[2] ,
    \phi1b_dig_I_1[1] ,
    \phi1b_dig_I_1[0] }));
 analog_core_Q analog_core_Q_0 (.vnb(analog_io[3]),
    .vpb(analog_io[2]),
    .th1(analog_io[4]),
    .th2(analog_io[5]),
    .cclk({\cclk_Q_0[7] ,
    \cclk_Q_0[6] ,
    \cclk_Q_0[5] ,
    \cclk_Q_0[4] ,
    \cclk_Q_0[3] ,
    \cclk_Q_0[2] ,
    \cclk_Q_0[1] ,
    \cclk_Q_0[0] }),
    .div2({\clkdiv2_Q_0[7] ,
    \clkdiv2_Q_0[6] ,
    \clkdiv2_Q_0[5] ,
    \clkdiv2_Q_0[4] ,
    \clkdiv2_Q_0[3] ,
    \clkdiv2_Q_0[2] ,
    \clkdiv2_Q_0[1] ,
    \clkdiv2_Q_0[0] }),
    .fb1({\fb1_Q_0[7] ,
    \fb1_Q_0[6] ,
    \fb1_Q_0[5] ,
    \fb1_Q_0[4] ,
    \fb1_Q_0[3] ,
    \fb1_Q_0[2] ,
    \fb1_Q_0[1] ,
    \fb1_Q_0[0] }),
    .high_buf({\comp_high_Q_0[7] ,
    \comp_high_Q_0[6] ,
    \comp_high_Q_0[5] ,
    \comp_high_Q_0[4] ,
    \comp_high_Q_0[3] ,
    \comp_high_Q_0[2] ,
    \comp_high_Q_0[1] ,
    \comp_high_Q_0[0] }),
    .lo({\sin_out_0[7] ,
    \sin_out_0[6] ,
    \sin_out_0[5] ,
    \sin_out_0[4] ,
    \sin_out_0[3] ,
    \sin_out_0[2] ,
    \sin_out_0[1] ,
    \sin_out_0[0] }),
    .phi1b_dig({\phi1b_dig_Q_0[7] ,
    \phi1b_dig_Q_0[6] ,
    \phi1b_dig_Q_0[5] ,
    \phi1b_dig_Q_0[4] ,
    \phi1b_dig_Q_0[3] ,
    \phi1b_dig_Q_0[2] ,
    \phi1b_dig_Q_0[1] ,
    \phi1b_dig_Q_0[0] }));
 analog_core_Q analog_core_Q_1 (.vnb(analog_io[3]),
    .vpb(analog_io[2]),
    .th1(analog_io[4]),
    .th2(analog_io[5]),
    .cclk({\cclk_Q_1[7] ,
    \cclk_Q_1[6] ,
    \cclk_Q_1[5] ,
    \cclk_Q_1[4] ,
    \cclk_Q_1[3] ,
    \cclk_Q_1[2] ,
    \cclk_Q_1[1] ,
    \cclk_Q_1[0] }),
    .div2({\clkdiv2_Q_1[7] ,
    \clkdiv2_Q_1[6] ,
    \clkdiv2_Q_1[5] ,
    \clkdiv2_Q_1[4] ,
    \clkdiv2_Q_1[3] ,
    \clkdiv2_Q_1[2] ,
    \clkdiv2_Q_1[1] ,
    \clkdiv2_Q_1[0] }),
    .fb1({\fb1_Q_1[7] ,
    \fb1_Q_1[6] ,
    \fb1_Q_1[5] ,
    \fb1_Q_1[4] ,
    \fb1_Q_1[3] ,
    \fb1_Q_1[2] ,
    \fb1_Q_1[1] ,
    \fb1_Q_1[0] }),
    .high_buf({\comp_high_Q_1[7] ,
    \comp_high_Q_1[6] ,
    \comp_high_Q_1[5] ,
    \comp_high_Q_1[4] ,
    \comp_high_Q_1[3] ,
    \comp_high_Q_1[2] ,
    \comp_high_Q_1[1] ,
    \comp_high_Q_1[0] }),
    .lo({\sin_out_1[7] ,
    \sin_out_1[6] ,
    \sin_out_1[5] ,
    \sin_out_1[4] ,
    \sin_out_1[3] ,
    \sin_out_1[2] ,
    \sin_out_1[1] ,
    \sin_out_1[0] }),
    .phi1b_dig({\phi1b_dig_Q_1[7] ,
    \phi1b_dig_Q_1[6] ,
    \phi1b_dig_Q_1[5] ,
    \phi1b_dig_Q_1[4] ,
    \phi1b_dig_Q_1[3] ,
    \phi1b_dig_Q_1[2] ,
    \phi1b_dig_Q_1[1] ,
    \phi1b_dig_Q_1[0] }));
 digital_unison digital_unison_instance_0 (.clk_master(la_data_in[0]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .cclk_I({\cclk_I_0[7] ,
    \cclk_I_0[6] ,
    \cclk_I_0[5] ,
    \cclk_I_0[4] ,
    \cclk_I_0[3] ,
    \cclk_I_0[2] ,
    \cclk_I_0[1] ,
    \cclk_I_0[0] }),
    .cclk_Q({\cclk_Q_0[7] ,
    \cclk_Q_0[6] ,
    \cclk_Q_0[5] ,
    \cclk_Q_0[4] ,
    \cclk_Q_0[3] ,
    \cclk_Q_0[2] ,
    \cclk_Q_0[1] ,
    \cclk_Q_0[0] }),
    .clkdiv2_I({\clkdiv2_I_0[7] ,
    \clkdiv2_I_0[6] ,
    \clkdiv2_I_0[5] ,
    \clkdiv2_I_0[4] ,
    \clkdiv2_I_0[3] ,
    \clkdiv2_I_0[2] ,
    \clkdiv2_I_0[1] ,
    \clkdiv2_I_0[0] }),
    .clkdiv2_Q({\clkdiv2_Q_0[7] ,
    \clkdiv2_Q_0[6] ,
    \clkdiv2_Q_0[5] ,
    \clkdiv2_Q_0[4] ,
    \clkdiv2_Q_0[3] ,
    \clkdiv2_Q_0[2] ,
    \clkdiv2_Q_0[1] ,
    \clkdiv2_Q_0[0] }),
    .comp_high_I({\comp_high_I_0[7] ,
    \comp_high_I_0[6] ,
    \comp_high_I_0[5] ,
    \comp_high_I_0[4] ,
    \comp_high_I_0[3] ,
    \comp_high_I_0[2] ,
    \comp_high_I_0[1] ,
    \comp_high_I_0[0] }),
    .comp_high_Q({\comp_high_Q_0[7] ,
    \comp_high_Q_0[6] ,
    \comp_high_Q_0[5] ,
    \comp_high_Q_0[4] ,
    \comp_high_Q_0[3] ,
    \comp_high_Q_0[2] ,
    \comp_high_Q_0[1] ,
    \comp_high_Q_0[0] }),
    .cos_out({\cos_out_0[7] ,
    \cos_out_0[6] ,
    \cos_out_0[5] ,
    \cos_out_0[4] ,
    \cos_out_0[3] ,
    \cos_out_0[2] ,
    \cos_out_0[1] ,
    \cos_out_0[0] }),
    .fb1_I({\fb1_I_0[7] ,
    \fb1_I_0[6] ,
    \fb1_I_0[5] ,
    \fb1_I_0[4] ,
    \fb1_I_0[3] ,
    \fb1_I_0[2] ,
    \fb1_I_0[1] ,
    \fb1_I_0[0] }),
    .fb1_Q({\fb1_Q_0[7] ,
    \fb1_Q_0[6] ,
    \fb1_Q_0[5] ,
    \fb1_Q_0[4] ,
    \fb1_Q_0[3] ,
    \fb1_Q_0[2] ,
    \fb1_Q_0[1] ,
    \fb1_Q_0[0] }),
    .phi1b_dig_I({\phi1b_dig_I_0[7] ,
    \phi1b_dig_I_0[6] ,
    \phi1b_dig_I_0[5] ,
    \phi1b_dig_I_0[4] ,
    \phi1b_dig_I_0[3] ,
    \phi1b_dig_I_0[2] ,
    \phi1b_dig_I_0[1] ,
    \phi1b_dig_I_0[0] }),
    .phi1b_dig_Q({\phi1b_dig_Q_0[7] ,
    \phi1b_dig_Q_0[6] ,
    \phi1b_dig_Q_0[5] ,
    \phi1b_dig_Q_0[4] ,
    \phi1b_dig_Q_0[3] ,
    \phi1b_dig_Q_0[2] ,
    \phi1b_dig_Q_0[1] ,
    \phi1b_dig_Q_0[0] }),
    .read_out_I({la_data_out[11],
    la_data_out[10]}),
    .read_out_Q({la_data_out[9],
    la_data_out[8]}),
    .sin_out({\sin_out_0[7] ,
    \sin_out_0[6] ,
    \sin_out_0[5] ,
    \sin_out_0[4] ,
    \sin_out_0[3] ,
    \sin_out_0[2] ,
    \sin_out_0[1] ,
    \sin_out_0[0] }));
 digital_unison digital_unison_instance_1 (.clk_master(la_data_in[1]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .cclk_I({\cclk_I_1[7] ,
    \cclk_I_1[6] ,
    \cclk_I_1[5] ,
    \cclk_I_1[4] ,
    \cclk_I_1[3] ,
    \cclk_I_1[2] ,
    \cclk_I_1[1] ,
    \cclk_I_1[0] }),
    .cclk_Q({\cclk_Q_1[7] ,
    \cclk_Q_1[6] ,
    \cclk_Q_1[5] ,
    \cclk_Q_1[4] ,
    \cclk_Q_1[3] ,
    \cclk_Q_1[2] ,
    \cclk_Q_1[1] ,
    \cclk_Q_1[0] }),
    .clkdiv2_I({\clkdiv2_I_1[7] ,
    \clkdiv2_I_1[6] ,
    \clkdiv2_I_1[5] ,
    \clkdiv2_I_1[4] ,
    \clkdiv2_I_1[3] ,
    \clkdiv2_I_1[2] ,
    \clkdiv2_I_1[1] ,
    \clkdiv2_I_1[0] }),
    .clkdiv2_Q({\clkdiv2_Q_1[7] ,
    \clkdiv2_Q_1[6] ,
    \clkdiv2_Q_1[5] ,
    \clkdiv2_Q_1[4] ,
    \clkdiv2_Q_1[3] ,
    \clkdiv2_Q_1[2] ,
    \clkdiv2_Q_1[1] ,
    \clkdiv2_Q_1[0] }),
    .comp_high_I({\comp_high_I_1[7] ,
    \comp_high_I_1[6] ,
    \comp_high_I_1[5] ,
    \comp_high_I_1[4] ,
    \comp_high_I_1[3] ,
    \comp_high_I_1[2] ,
    \comp_high_I_1[1] ,
    \comp_high_I_1[0] }),
    .comp_high_Q({\comp_high_Q_1[7] ,
    \comp_high_Q_1[6] ,
    \comp_high_Q_1[5] ,
    \comp_high_Q_1[4] ,
    \comp_high_Q_1[3] ,
    \comp_high_Q_1[2] ,
    \comp_high_Q_1[1] ,
    \comp_high_Q_1[0] }),
    .cos_out({\cos_out_1[7] ,
    \cos_out_1[6] ,
    \cos_out_1[5] ,
    \cos_out_1[4] ,
    \cos_out_1[3] ,
    \cos_out_1[2] ,
    \cos_out_1[1] ,
    \cos_out_1[0] }),
    .fb1_I({\fb1_I_1[7] ,
    \fb1_I_1[6] ,
    \fb1_I_1[5] ,
    \fb1_I_1[4] ,
    \fb1_I_1[3] ,
    \fb1_I_1[2] ,
    \fb1_I_1[1] ,
    \fb1_I_1[0] }),
    .fb1_Q({\fb1_Q_1[7] ,
    \fb1_Q_1[6] ,
    \fb1_Q_1[5] ,
    \fb1_Q_1[4] ,
    \fb1_Q_1[3] ,
    \fb1_Q_1[2] ,
    \fb1_Q_1[1] ,
    \fb1_Q_1[0] }),
    .phi1b_dig_I({\phi1b_dig_I_1[7] ,
    \phi1b_dig_I_1[6] ,
    \phi1b_dig_I_1[5] ,
    \phi1b_dig_I_1[4] ,
    \phi1b_dig_I_1[3] ,
    \phi1b_dig_I_1[2] ,
    \phi1b_dig_I_1[1] ,
    \phi1b_dig_I_1[0] }),
    .phi1b_dig_Q({\phi1b_dig_Q_1[7] ,
    \phi1b_dig_Q_1[6] ,
    \phi1b_dig_Q_1[5] ,
    \phi1b_dig_Q_1[4] ,
    \phi1b_dig_Q_1[3] ,
    \phi1b_dig_Q_1[2] ,
    \phi1b_dig_Q_1[1] ,
    \phi1b_dig_Q_1[0] }),
    .read_out_I({la_data_out[15],
    la_data_out[14]}),
    .read_out_Q({la_data_out[13],
    la_data_out[12]}),
    .sin_out({\sin_out_1[7] ,
    \sin_out_1[6] ,
    \sin_out_1[5] ,
    \sin_out_1[4] ,
    \sin_out_1[3] ,
    \sin_out_1[2] ,
    \sin_out_1[1] ,
    \sin_out_1[0] }));
 digital_unison digital_unison_instance_2 (.clk_master(la_data_in[2]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .cclk_I({_NC1,
    _NC2,
    _NC3,
    _NC4,
    _NC5,
    _NC6,
    _NC7,
    _NC8}),
    .cclk_Q({_NC9,
    _NC10,
    _NC11,
    _NC12,
    _NC13,
    _NC14,
    _NC15,
    _NC16}),
    .clkdiv2_I({_NC17,
    _NC18,
    _NC19,
    _NC20,
    _NC21,
    _NC22,
    _NC23,
    _NC24}),
    .clkdiv2_Q({_NC25,
    _NC26,
    _NC27,
    _NC28,
    _NC29,
    _NC30,
    _NC31,
    _NC32}),
    .comp_high_I({_NC33,
    _NC34,
    _NC35,
    _NC36,
    _NC37,
    _NC38,
    _NC39,
    _NC40}),
    .comp_high_Q({_NC41,
    _NC42,
    _NC43,
    _NC44,
    _NC45,
    _NC46,
    _NC47,
    _NC48}),
    .cos_out({_NC49,
    _NC50,
    _NC51,
    _NC52,
    _NC53,
    _NC54,
    _NC55,
    _NC56}),
    .fb1_I({_NC57,
    _NC58,
    _NC59,
    _NC60,
    _NC61,
    _NC62,
    _NC63,
    _NC64}),
    .fb1_Q({_NC65,
    _NC66,
    _NC67,
    _NC68,
    _NC69,
    _NC70,
    _NC71,
    _NC72}),
    .phi1b_dig_I({_NC73,
    _NC74,
    _NC75,
    _NC76,
    _NC77,
    _NC78,
    _NC79,
    _NC80}),
    .phi1b_dig_Q({_NC81,
    _NC82,
    _NC83,
    _NC84,
    _NC85,
    _NC86,
    _NC87,
    _NC88}),
    .read_out_I({la_data_out[19],
    la_data_out[18]}),
    .read_out_Q({la_data_out[17],
    la_data_out[16]}),
    .sin_out({_NC89,
    _NC90,
    _NC91,
    _NC92,
    _NC93,
    _NC94,
    _NC95,
    _NC96}));
 digital_unison digital_unison_instance_3 (.clk_master(la_data_in[3]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .cclk_I({_NC97,
    _NC98,
    _NC99,
    _NC100,
    _NC101,
    _NC102,
    _NC103,
    _NC104}),
    .cclk_Q({_NC105,
    _NC106,
    _NC107,
    _NC108,
    _NC109,
    _NC110,
    _NC111,
    _NC112}),
    .clkdiv2_I({_NC113,
    _NC114,
    _NC115,
    _NC116,
    _NC117,
    _NC118,
    _NC119,
    _NC120}),
    .clkdiv2_Q({_NC121,
    _NC122,
    _NC123,
    _NC124,
    _NC125,
    _NC126,
    _NC127,
    _NC128}),
    .comp_high_I({_NC129,
    _NC130,
    _NC131,
    _NC132,
    _NC133,
    _NC134,
    _NC135,
    _NC136}),
    .comp_high_Q({_NC137,
    _NC138,
    _NC139,
    _NC140,
    _NC141,
    _NC142,
    _NC143,
    _NC144}),
    .cos_out({_NC145,
    _NC146,
    _NC147,
    _NC148,
    _NC149,
    _NC150,
    _NC151,
    _NC152}),
    .fb1_I({_NC153,
    _NC154,
    _NC155,
    _NC156,
    _NC157,
    _NC158,
    _NC159,
    _NC160}),
    .fb1_Q({_NC161,
    _NC162,
    _NC163,
    _NC164,
    _NC165,
    _NC166,
    _NC167,
    _NC168}),
    .phi1b_dig_I({_NC169,
    _NC170,
    _NC171,
    _NC172,
    _NC173,
    _NC174,
    _NC175,
    _NC176}),
    .phi1b_dig_Q({_NC177,
    _NC178,
    _NC179,
    _NC180,
    _NC181,
    _NC182,
    _NC183,
    _NC184}),
    .read_out_I({la_data_out[23],
    la_data_out[22]}),
    .read_out_Q({la_data_out[21],
    la_data_out[20]}),
    .sin_out({_NC185,
    _NC186,
    _NC187,
    _NC188,
    _NC189,
    _NC190,
    _NC191,
    _NC192}));
 digital_unison digital_unison_instance_4 (.clk_master(la_data_in[4]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .cclk_I({_NC193,
    _NC194,
    _NC195,
    _NC196,
    _NC197,
    _NC198,
    _NC199,
    _NC200}),
    .cclk_Q({_NC201,
    _NC202,
    _NC203,
    _NC204,
    _NC205,
    _NC206,
    _NC207,
    _NC208}),
    .clkdiv2_I({_NC209,
    _NC210,
    _NC211,
    _NC212,
    _NC213,
    _NC214,
    _NC215,
    _NC216}),
    .clkdiv2_Q({_NC217,
    _NC218,
    _NC219,
    _NC220,
    _NC221,
    _NC222,
    _NC223,
    _NC224}),
    .comp_high_I({_NC225,
    _NC226,
    _NC227,
    _NC228,
    _NC229,
    _NC230,
    _NC231,
    _NC232}),
    .comp_high_Q({_NC233,
    _NC234,
    _NC235,
    _NC236,
    _NC237,
    _NC238,
    _NC239,
    _NC240}),
    .cos_out({_NC241,
    _NC242,
    _NC243,
    _NC244,
    _NC245,
    _NC246,
    _NC247,
    _NC248}),
    .fb1_I({_NC249,
    _NC250,
    _NC251,
    _NC252,
    _NC253,
    _NC254,
    _NC255,
    _NC256}),
    .fb1_Q({_NC257,
    _NC258,
    _NC259,
    _NC260,
    _NC261,
    _NC262,
    _NC263,
    _NC264}),
    .phi1b_dig_I({_NC265,
    _NC266,
    _NC267,
    _NC268,
    _NC269,
    _NC270,
    _NC271,
    _NC272}),
    .phi1b_dig_Q({_NC273,
    _NC274,
    _NC275,
    _NC276,
    _NC277,
    _NC278,
    _NC279,
    _NC280}),
    .read_out_I({la_data_out[27],
    la_data_out[26]}),
    .read_out_Q({la_data_out[25],
    la_data_out[24]}),
    .sin_out({_NC281,
    _NC282,
    _NC283,
    _NC284,
    _NC285,
    _NC286,
    _NC287,
    _NC288}));
 digital_unison digital_unison_instance_5 (.clk_master(la_data_in[5]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .cclk_I({_NC289,
    _NC290,
    _NC291,
    _NC292,
    _NC293,
    _NC294,
    _NC295,
    _NC296}),
    .cclk_Q({_NC297,
    _NC298,
    _NC299,
    _NC300,
    _NC301,
    _NC302,
    _NC303,
    _NC304}),
    .clkdiv2_I({_NC305,
    _NC306,
    _NC307,
    _NC308,
    _NC309,
    _NC310,
    _NC311,
    _NC312}),
    .clkdiv2_Q({_NC313,
    _NC314,
    _NC315,
    _NC316,
    _NC317,
    _NC318,
    _NC319,
    _NC320}),
    .comp_high_I({_NC321,
    _NC322,
    _NC323,
    _NC324,
    _NC325,
    _NC326,
    _NC327,
    _NC328}),
    .comp_high_Q({_NC329,
    _NC330,
    _NC331,
    _NC332,
    _NC333,
    _NC334,
    _NC335,
    _NC336}),
    .cos_out({_NC337,
    _NC338,
    _NC339,
    _NC340,
    _NC341,
    _NC342,
    _NC343,
    _NC344}),
    .fb1_I({_NC345,
    _NC346,
    _NC347,
    _NC348,
    _NC349,
    _NC350,
    _NC351,
    _NC352}),
    .fb1_Q({_NC353,
    _NC354,
    _NC355,
    _NC356,
    _NC357,
    _NC358,
    _NC359,
    _NC360}),
    .phi1b_dig_I({_NC361,
    _NC362,
    _NC363,
    _NC364,
    _NC365,
    _NC366,
    _NC367,
    _NC368}),
    .phi1b_dig_Q({_NC369,
    _NC370,
    _NC371,
    _NC372,
    _NC373,
    _NC374,
    _NC375,
    _NC376}),
    .read_out_I({la_data_out[31],
    la_data_out[30]}),
    .read_out_Q({la_data_out[29],
    la_data_out[28]}),
    .sin_out({_NC377,
    _NC378,
    _NC379,
    _NC380,
    _NC381,
    _NC382,
    _NC383,
    _NC384}));
endmodule
