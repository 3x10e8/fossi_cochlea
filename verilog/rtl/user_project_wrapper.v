// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,    // User area 1 3.3V supply
    inout vdda2,    // User area 2 3.3V supply
    inout vssa1,    // User area 1 analog ground
    inout vssa2,    // User area 2 analog ground
    inout vccd1,    // User area 1 1.8V supply
    inout vccd2,    // User area 2 1.8v supply
    inout vssd1,    // User area 1 digital ground
    inout vssd2,    // User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/
wire comp_high_Q, phi1b_dig_Q, clkdiv2_Q, cclk_Q, fb1_Q, sin_out;

digital_unison #(
    .NUM_CORES(8)
) digital_unison_instance_0 (
    `ifdef USE_POWER_PINS
        .vccd1(vccd1),  // User area 1 1.8V power
        .vssd1(vssd1),  // User area 1 digital groun
    `endif
    .read_out_I(la_data_out[11:10]),
    .read_out_Q(la_data_out[9:8]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .clk_master(la_data_in[0]),
    
    //interface to analog core
    //.comp_high_I(comp_high_I),
    .comp_high_Q(comp_high_Q),
    //.phi1b_dig_I(phi1b_dig_I),
    .phi1b_dig_Q(phi1b_dig_Q),
    //.clkdiv2_I(clkdiv2_I),
    .clkdiv2_Q(clkdiv2_Q),
    //.cclk_I(cclk_I),
    .cclk_Q(cclk_Q),
    //.fb1_I(fb1_I),
    .fb1_Q(fb1_Q),
    //.cos_out(cos_out),
    .sin_out(sin_out)
);

filter_p_m analog_Q_0 (
    `ifdef USE_POWER_PINS
        .vdda1(vdda1),
        .vccd1(vccd1), // User area 1 1.8V power
        .vssd1(vssd1), // User area 1 digital groun
    `endif
    .inp(analog_io[0]),
    .inm(analog_io[1]),
    .vpb(analog_io[2]),
    .vnb(analog_io[3]),
    .th1(analog_io[4]),
    .th2(analog_io[5]),
    .div2(clkdiv2_Q),
    .cclk(cclk_Q),
    .lo(sin_out),
    .fb1(fb1_Q),
    .high_buf(comp_high_Q),
    .phi1b_dig(phi1b_dig_Q)
);

digital_unison #(
    .NUM_CORES(8)
) digital_unison_instance_1 (
    `ifdef USE_POWER_PINS
        .vccd1(vccd1),  // User area 1 1.8V power
        .vssd1(vssd1),  // User area 1 digital groun
    `endif
    .read_out_I(la_data_out[15:14]),
    .read_out_Q(la_data_out[13:12]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .clk_master(la_data_in[1])
    /*interface to analog core
    //.comp_high_I(comp_high_I),
    .comp_high_Q(comp_high_Q),
    //.phi1b_dig_I(phi1b_dig_I),
    .phi1b_dig_Q(phi1b_dig_Q),
    //.clkdiv2_I(clkdiv2_I),
    .clkdiv2_Q(clkdiv2_Q),
    //.cclk_I(cclk_I),
    .cclk_Q(cclk_Q),
    //.fb1_I(fb1_I),
    .fb1_Q(fb1_Q),
    //.cos_out(cos_out),
    .sin_out(sin_out)
    * */
);

digital_unison #(
    .NUM_CORES(6)
) digital_unison_instance_2 (
    `ifdef USE_POWER_PINS
        .vccd1(vccd1),  // User area 1 1.8V power
        .vssd1(vssd1),  // User area 1 digital groun
    `endif
    .read_out_I(la_data_out[19:18]),
    .read_out_Q(la_data_out[17:16]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .clk_master(la_data_in[2])
    /* interface to analog core
    .comp_high_I(comp_high_I),
    .comp_high_Q(comp_high_Q),
    .phi1b_dig_I(phi1b_dig_I),
    .phi1b_dig_Q(phi1b_dig_Q),
    .clkdiv2_I(clkdiv2_I),
    .clkdiv2_Q(clkdiv2_Q),
    .cclk_I(cclk_I),
    .cclk_Q(cclk_Q),
    .fb1_I(fb1_I),
    .fb1_Q(fb1_Q),
    .cos_out(cos_out),
    .sin_out(sin_out),
    */
);

digital_unison #(
    .NUM_CORES(8)
) digital_unison_instance_3 (
    `ifdef USE_POWER_PINS
        .vccd1(vccd1),  // User area 1 1.8V power
        .vssd1(vssd1),  // User area 1 digital groun
    `endif
    .read_out_I(la_data_out[23:22]),
    .read_out_Q(la_data_out[21:20]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .clk_master(la_data_in[3])
    /* interface to analog core
    .comp_high_I(comp_high_I),
    .comp_high_Q(comp_high_Q),
    .phi1b_dig_I(phi1b_dig_I),
    .phi1b_dig_Q(phi1b_dig_Q),
    .clkdiv2_I(clkdiv2_I),
    .clkdiv2_Q(clkdiv2_Q),
    .cclk_I(cclk_I),
    .cclk_Q(cclk_Q),
    .fb1_I(fb1_I),
    .fb1_Q(fb1_Q),
    .cos_out(cos_out),
    .sin_out(sin_out),
    */
);

digital_unison #(
    .NUM_CORES(8)
) digital_unison_instance_4 (
    `ifdef USE_POWER_PINS
        .vccd1(vccd1),  // User area 1 1.8V power
        .vssd1(vssd1),  // User area 1 digital groun
    `endif
    .read_out_I(la_data_out[27:26]),
    .read_out_Q(la_data_out[25:24]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .clk_master(la_data_in[4])
    /* interface to analog core
    .comp_high_I(comp_high_I),
    .comp_high_Q(comp_high_Q),
    .phi1b_dig_I(phi1b_dig_I),
    .phi1b_dig_Q(phi1b_dig_Q),
    .clkdiv2_I(clkdiv2_I),
    .clkdiv2_Q(clkdiv2_Q),
    .cclk_I(cclk_I),
    .cclk_Q(cclk_Q),
    .fb1_I(fb1_I),
    .fb1_Q(fb1_Q),
    .cos_out(cos_out),
    .sin_out(sin_out),
    */
);

digital_unison #(
    .NUM_CORES(8)
) digital_unison_instance_5 (
    `ifdef USE_POWER_PINS
        .vccd1(vccd1),  // User area 1 1.8V power
        .vssd1(vssd1),  // User area 1 digital groun
    `endif
    .read_out_I(la_data_out[31:30]),
    .read_out_Q(la_data_out[29:28]),
    .rstb(la_data_in[7]),
    .ud_en(la_data_in[6]),
    .clk_master(la_data_in[5])
    /* interface to analog core
    .comp_high_I(comp_high_I),
    .comp_high_Q(comp_high_Q),
    .phi1b_dig_I(phi1b_dig_I),
    .phi1b_dig_Q(phi1b_dig_Q),
    .clkdiv2_I(clkdiv2_I),
    .clkdiv2_Q(clkdiv2_Q),
    .cclk_I(cclk_I),
    .cclk_Q(cclk_Q),
    .fb1_I(fb1_I),
    .fb1_Q(fb1_Q),
    .cos_out(cos_out),
    .sin_out(sin_out),
    */
);
/*
genvar i;
generate
    for (i=0; i<=5; i=i+1) begin
        digital_unison #(
            .NUM_CORES(6)
        ) digital_unison_instance (
            `ifdef USE_POWER_PINS
                .vccd1(vccd1),  // User area 1 1.8V power
                .vssd1(vssd1),  // User area 1 digital ground
            `endif
            .read_out_I(la_data_out[4*i +3 +3 : 4*i +2 +3]),
            .read_out_Q(la_data_out[4*i +1 +3 : 4*i +0 +3]),
            .rstb(la_data_in[2]),
            .ud_en(la_data_in[1]),
            .clk_master(la_data_in[0])
            
            // interface to analog core
            .comp_high_I(comp_high_I),
            .comp_high_Q(comp_high_Q),
            .phi1b_dig_I(phi1b_dig_I),
            .phi1b_dig_Q(phi1b_dig_Q),
            .clkdiv2_I(clkdiv2_I),
            .clkdiv2_Q(clkdiv2_Q),
            .cclk_I(cclk_I),
            .cclk_Q(cclk_Q),
            .fb1_I(fb1_I),
            .fb1_Q(fb1_Q),
            .cos_out(cos_out),
            .sin_out(sin_out),

            // IO Pads
            .io_in (io_in),
            .io_out(io_out),
            .io_oeb(io_oeb),
                
            // IO Pads
            .inp(analog_io[0]),
            .inm(analog_io[1]),
            .phi1(analog_io[2]),
            .phi2(analog_io[3]),
            .phi1b(analog_io[4]),
            .phi2b(analog_io[5]),
            .vbotp(analog_io[6]),
            .vbotm(analog_io[7]),
            .compout(analog_io[8]),
            .pol(analog_io[9]),
            .polxevent(analog_io[10]),
            
        );
    end
endgenerate
*/
endmodule	// user_project_wrapper
    

