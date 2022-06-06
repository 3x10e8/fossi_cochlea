v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {can't use vssa itself, spice needs a gnd node (0) defined} -230 230 0 0 0.4 0.4 {}
N 80 100 100 100 {
lab=thresh1}
N 80 120 100 120 {
lab=thresh2}
N -60 -200 -60 -180 {
lab=vccd1}
N -60 180 -60 200 {
lab=GND}
N 80 -140 100 -140 {
lab=inp}
N 80 -120 100 -120 {
lab=inm}
N 60 180 60 200 {
lab=GND}
N 60 -200 60 -180 {
lab=vdda1}
N -100 -120 -80 -120 {
lab=clk_ext}
N -100 -140 -80 -140 {
lab=rstb}
N -100 -80 -80 -80 {
lab=cclk[1:0]}
N 80 60 100 60 {
lab=cclkb_ana[1:0]}
N 80 -40 100 -40 {
lab=phi1[1:0]}
N 80 -20 100 -20 {
lab=phi1b[1:0]}
N 80 0 100 0 {
lab=phi2[1:0]}
N 80 20 100 20 {
lab=phi2b[1:0]}
N -100 -100 -80 -100 {
lab=div2out[1:0]}
N -60 200 60 200 {
lab=GND}
N 80 40 100 40 {
lab=cclk_ana[1:0]}
N -0 180 0 200 {
lab=GND}
N -80 160 -80 200 {
lab=GND}
N -80 200 -60 200 {
lab=GND}
N 80 160 80 200 {
lab=GND}
N 60 200 80 200 {
lab=GND}
C {devices/netlist.sym} -360 -480 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.options abstol=1e-14 reltol=1e-4
.param fmax=\{256*10k\}
.param Tmin=\{1/fmax\}
.csparam tstep=\{1/fmax/20\}
.csparam tend=\{10*Tmin\}
.csparam n=0
.control
  tran $&tstep $&tend
  plot rstb/2 clk_ext/2 \\"div2out[$&n]\\"/2+1 \\"cclk[$&n]\\"/2+2 \\"phi1[$&n]\\"/2+3 \\"phi2[$&n]\\"/2+4 \\"cclk_ana[$&n]\\"/2+5 
.endc
"}
C {devices/lab_pin.sym} 60 -200 2 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 100 100 2 0 {name=l2 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 100 120 2 0 {name=l3 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} 100 -140 2 0 {name=l5 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 100 -120 2 0 {name=l6 sig_type=std_logic lab=inm}
C {devices/gnd.sym} 0 200 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -60 -200 0 0 {name=l10 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -100 -120 0 0 {name=l11 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -100 -140 0 0 {name=l12 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 100 -40 2 0 {name=l7 sig_type=std_logic lab=phi1[1:0]}
C {devices/lab_pin.sym} 100 -20 2 0 {name=l8 sig_type=std_logic lab=phi1b[1:0]}
C {devices/lab_pin.sym} 100 0 2 0 {name=l13 sig_type=std_logic lab=phi2[1:0]}
C {devices/lab_pin.sym} 100 20 2 0 {name=l14 sig_type=std_logic lab=phi2b[1:0]}
C {devices/lab_pin.sym} -100 -80 0 0 {name=l15 sig_type=std_logic lab=cclk[1:0]}
C {devices/lab_pin.sym} 100 60 2 0 {name=l16 sig_type=std_logic lab=cclkb_ana[1:0]}
C {devices/lab_pin.sym} -100 -100 0 0 {name=l17 sig_type=std_logic lab=div2out[1:0]}
C {devices/lab_pin.sym} 100 40 2 0 {name=l4 sig_type=std_logic lab=cclk_ana[1:0]}
C {test_bench/risc_signals.sym} 0 0 0 0 {name=x1
+ p_vdda1=1.2
+ p_vdda2=1.2
+ p_vccd1=0.8
+ p_vccd2=1.8
+ p_vccd_mgmt=1.8
+ p_fclk=\{256*10k\}
+ p_duty_cycle=0.5
+ p_rstb_delay=\{1.5/p_fclk\}
+ p_rstb_tr=5n
+ p_thresh1=0.7
+ p_thresh2=0.65
+ p_vpb=0
+ p_vnb=1.2
+ p_vcm=0.6
+ p_amp1=100m
+ p_f1=\{256*10k\}
+ p_amp2=0
+ p_f2=0
+ p_amp3=0
+ p_f3=0}
C {devices/lab_pin.sym} 80 -160 2 0 {name=l18 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -80 -160 0 0 {name=l19 sig_type=std_logic lab=vccd2}
C {devices/netlist_not_shown.sym} 410 -110 0 0 {name=s1 only_toplevel=false value="
* SPICE3 file created from wrapper_cell.ext - technology: sky130A

.subckt wrapper_cell cclk clk_master clk_master_out clkdiv2 comp_high_I comp_high_Q
+ cos_out cos_outb div2out fb1_I fb1_Q fb2_I fb2_Q gray_clk_in[0] gray_clk_in[1] gray_clk_in[2]
+ gray_clk_in[3] gray_clk_in[4] gray_clk_in[5] gray_clk_in[6] gray_clk_in[7] gray_clk_in[8]
+ gray_clk_in[9] gray_clk_out[10] gray_clk_out[1] gray_clk_out[2] gray_clk_out[3]
+ gray_clk_out[4] gray_clk_out[5] gray_clk_out[6] gray_clk_out[7] gray_clk_out[8]
+ gray_clk_out[9] no_ones_below_in[0] no_ones_below_in[1] no_ones_below_in[2] no_ones_below_out[0]
+ no_ones_below_out[1] no_ones_below_out[2] phi1b_dig read_out_I[0] read_out_I[1]
+ read_out_Q[0] read_out_Q[1] rstb rstb_out sin_out sin_outb ud_en ud_en_out vccd1
+ vssd1
C0 _508_/Q _557_/A 4.83fF
C1 vccd1 _503_/D 2.17fF
C2 _481_/D _470_/Q 2.56fF
C3 vccd1 _440_/Y 2.70fF
C4 _452_/Q _483_/Q 2.12fF
C5 _240_/X _335_/Y 3.54fF
C6 _394_/B clkbuf_0__084_/X 2.37fF
C7 _546_/X vccd1 10.52fF
C8 _311_/Y _303_/D 6.33fF
C9 _217_/Y _475_/Q 2.82fF
C10 _536_/A vccd1 15.37fF
C11 _512_/Q _505_/Q 2.29fF
C12 vccd1 _396_/A 7.94fF
C13 _479_/Q _397_/A 2.28fF
C14 vccd1 _510_/Q 3.04fF
C15 vccd1 _470_/D 2.73fF
C16 _501_/Q _252_/A 2.50fF
C17 _493_/D _557_/A 3.42fF
C18 clkbuf_0_gray_tree.sine_cell2.eff_gray.d/X _249_/B 4.73fF
C19 _383_/C _485_/Q 2.12fF
C20 _378_/Y _380_/B 2.38fF
C21 _283_/Y _454_/Q 3.15fF
C22 _441_/Y _252_/A 2.60fF
C23 _398_/A _543_/A 4.23fF
C24 _324_/B _323_/X 3.14fF
C25 _303_/B _488_/Q 2.38fF
C26 vccd1 _252_/A 12.57fF
C27 _243_/D _239_/B 2.69fF
C28 _324_/B vccd1 11.51fF
C29 _488_/Q _504_/D 3.52fF
C30 _359_/C _406_/B 2.20fF
C31 _501_/D _303_/D 2.36fF
C32 _240_/X _481_/Q 3.51fF
C33 _501_/Q _463_/Q 8.26fF
C34 _321_/A _436_/Y 2.50fF
C35 _495_/D _323_/X 2.47fF
C36 _502_/Q _503_/Q 2.06fF
C37 _226_/C _407_/Y 2.85fF
C38 _495_/D vccd1 5.74fF
C39 _303_/C _472_/Q 2.60fF
C40 _453_/Q _350_/A 7.25fF
C41 vccd1 clkbuf_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out/X 6.20fF
C42 vccd1 _442_/A 4.23fF
C43 vccd1 _365_/B 8.64fF
C44 _360_/A _371_/B 3.29fF
C45 _557_/A _286_/Y 2.59fF
C46 _303_/A _511_/Q 2.65fF
C47 _320_/A vccd1 7.51fF
C48 _311_/Y _540_/A 3.39fF
C49 _366_/B _376_/B 5.42fF
C50 _498_/Q _498_/D 3.42fF
C51 _460_/D _489_/Q 3.33fF
C52 _360_/Y vccd1 2.94fF
C53 _485_/D clkbuf_0__084_/X 2.18fF
C54 vccd1 _350_/A 25.75fF
C55 vccd1 _508_/Q 22.46fF
C56 _370_/A _303_/A 3.09fF
C57 vccd1 _369_/B 2.05fF
C58 _370_/A _436_/Y 2.79fF
C59 _478_/D vccd1 3.60fF
C60 _394_/B fb_block_Q.gs_f.fb_gray_selector_loop\\[2\\].t_buf.t_buf/a_116_47# 2.44fF
C61 _412_/B vccd1 3.46fF
C62 _398_/A _370_/X 2.10fF
C63 _321_/A vccd1 7.50fF
C64 _559_/X vccd1 3.41fF
C65 vccd1 _421_/A 3.16fF
C66 _548_/A _380_/B 7.54fF
C67 _384_/X _543_/A 2.20fF
C68 _335_/Y _387_/B 3.77fF
C69 _541_/A _505_/Q 2.26fF
C70 _511_/Q vccd1 8.68fF
C71 _461_/Q vccd1 2.58fF
C72 _311_/Y input17/X 2.11fF
C73 _556_/A _545_/A 3.02fF
C74 _502_/Q _227_/D 2.63fF
C75 _503_/Q _489_/Q 4.60fF
C76 _240_/X _360_/C 3.54fF
C77 _238_/D _350_/A 2.58fF
C78 vccd1 _383_/Y 3.72fF
C79 _370_/A vccd1 14.75fF
C80 _398_/B _392_/A 4.50fF
C81 _541_/A _507_/Q 3.02fF
C82 _248_/C _466_/D 2.03fF
C83 _453_/Q _557_/A 2.13fF
C84 _248_/C vccd1 17.91fF
C85 _249_/Y _397_/A 4.76fF
C86 _272_/A _240_/X 2.61fF
C87 _501_/Q _557_/A 2.77fF
C88 _292_/B vccd1 2.80fF
C89 _384_/X _547_/A 4.71fF
C90 _328_/Y _383_/C 4.55fF
C91 vccd1 _540_/X 5.69fF
C92 _370_/C _484_/Q 2.40fF
C93 _433_/Y _498_/Q 3.70fF
C94 vccd1 _286_/Y 4.61fF
C95 _323_/X _557_/A 3.98fF
C96 _488_/D _546_/A 3.28fF
C97 vccd1 _557_/A 145.80fF
C98 _423_/B _546_/A 8.34fF
C99 _359_/C _389_/A 3.60fF
C100 _557_/A _457_/Q 3.64fF
C101 _370_/A _238_/D 2.48fF
C102 vccd1 _505_/D 2.85fF
C103 _248_/X _370_/C 4.06fF
C104 _490_/Q _324_/B 2.78fF
C105 _384_/X _239_/B 3.25fF
C106 _375_/B _376_/B 2.55fF
C107 vccd1 _393_/B 5.58fF
C108 vccd1 _475_/D 2.27fF
C109 _500_/Q _505_/Q 2.11fF
C110 _214_/Y _304_/Y 2.40fF
C111 _303_/A vccd1 20.21fF
C112 _500_/Q _486_/D 2.57fF
C113 _297_/X vccd1 5.44fF
C114 vccd1 _436_/Y 4.43fF
C115 _546_/X _544_/A 2.67fF
C116 _303_/D _206_/X 2.04fF
C117 _276_/Y _398_/D 2.72fF
C118 vccd1 _506_/Q 3.64fF
C119 _479_/Q _505_/Q 2.48fF
C120 _215_/A _242_/B 5.27fF
C121 _483_/D _303_/D 2.71fF
C122 _553_/A _303_/B 2.34fF
C123 _383_/C _489_/Q 3.22fF
C124 _511_/Q _504_/Q 3.74fF
C125 vccd1 _453_/Q 22.47fF
C126 _501_/Q vccd1 14.27fF
C127 vccd1 clkbuf_0_net47/X 4.75fF
C128 _366_/B _488_/Q 6.74fF
C129 _279_/S vccd1 8.08fF
C130 _316_/A _507_/Q 4.60fF
C131 vccd1 _441_/Y 2.21fF
C132 _502_/D _489_/Q 2.17fF
C133 vccd1 _323_/X 13.74fF
C134 _303_/A _238_/D 2.76fF
C135 _463_/D _509_/D 3.10fF
C136 _482_/Q _350_/A 2.48fF
C137 _548_/A _311_/Y 2.56fF
C138 _502_/D _491_/Q 4.15fF
C139 _383_/A _467_/Q 4.06fF
C140 vccd1 _457_/Q 6.15fF
C141 _558_/X _550_/X 2.23fF
C142 _291_/A vccd1 4.02fF
C143 _502_/Q _384_/X 2.29fF
C144 vccd1 fb_block_Q.gs_f.fb_gray_selector_loop\\[3\\].t_buf.t_buf/a_407_309# 2.24fF
C145 _536_/A clk_master 4.54fF
C146 _282_/Y vccd1 6.58fF
C147 _303_/D _505_/Q 2.57fF
C148 _311_/Y _296_/Y 2.08fF
C149 _264_/Y _509_/Q 2.67fF
C150 _298_/Y vccd1 8.70fF
C151 vccd1 _548_/X 3.85fF
C152 _481_/Q _284_/X 2.02fF
C153 _453_/Q _238_/D 2.54fF
C154 _227_/D _503_/Q 2.01fF
C155 vccd1 _544_/X 5.25fF
C156 _504_/Q _557_/A 3.35fF
C157 _449_/Q _512_/D 2.57fF
C158 _383_/C _487_/Q 3.52fF
C159 vccd1 _245_/B 11.35fF
C160 vccd1 _482_/D 4.10fF
C161 _479_/Q _509_/Q 2.57fF
C162 _243_/D _483_/Q 2.01fF
C163 _382_/C _493_/Q 2.97fF
C164 _482_/D _457_/Q 2.03fF
C165 _479_/Q _283_/Y 2.81fF
C166 vccd1 _238_/D 12.77fF
C167 _398_/D _398_/A 2.87fF
C168 _311_/Y _493_/Q 2.18fF
C169 clkbuf_0_gray_tree.sine_cell2.eff_gray.d/X vccd1 11.85fF
C170 _490_/Q _557_/A 5.35fF
C171 _383_/C _503_/Q 3.80fF
C172 _364_/B _417_/B 3.71fF
C173 _449_/D _452_/Q 2.39fF
C174 _215_/A _547_/A 2.96fF
C175 _540_/A _302_/Y 2.86fF
C176 vccd1 phi1b_dig 3.20fF
C177 vccd1 _406_/B 4.10fF
C178 _283_/Y _370_/C 2.13fF
C179 _504_/Q _477_/Q 3.32fF
C180 _283_/Y _303_/D 2.69fF
C181 _386_/B _489_/Q 4.17fF
C182 _292_/B _258_/X 4.30fF
C183 _364_/B _256_/B 2.63fF
C184 _551_/A vccd1 21.34fF
C185 _248_/C _544_/A 2.69fF
C186 _432_/Y _370_/A 3.51fF
C187 _443_/Y _295_/X 2.26fF
C188 _353_/Y _239_/B 2.14fF
C189 _311_/Y _249_/B 2.12fF
C190 _291_/A _551_/A 2.04fF
C191 _311_/Y _494_/Q 3.08fF
C192 _500_/Q _383_/A 5.24fF
C193 vccd1 _549_/A 2.68fF
C194 fb_block_Q.gs_f.fb_gray_selector_loop\\[5\\].t_buf.t_buf/a_407_309# vccd1 2.15fF
C195 _226_/C _508_/Q 3.45fF
C196 clkbuf_0_gray_tree.gray.eff_gray.d/X vccd1 6.38fF
C197 _545_/A _470_/Q 2.09fF
C198 _423_/X _559_/A 8.96fF
C199 _382_/C _503_/D 6.93fF
C200 _303_/C _507_/Q 2.10fF
C201 vccd1 _504_/Q 17.18fF
C202 _544_/A _557_/A 3.86fF
C203 _307_/B vccd1 2.01fF
C204 vccd1 _498_/D 3.39fF
C205 _383_/A _479_/Q 5.96fF
C206 _282_/Y _504_/Q 2.15fF
C207 _480_/D _305_/Y 2.59fF
C208 _227_/D _458_/D 2.70fF
C209 vccd1 _425_/B 3.08fF
C210 _453_/Q _482_/Q 2.44fF
C211 _498_/Q _371_/X 5.04fF
C212 _490_/Q vccd1 29.87fF
C213 _540_/A _509_/Q 3.19fF
C214 _268_/Y _438_/Y 2.36fF
C215 vccd1 _427__3/A 14.08fF
C216 _467_/Q _489_/Q 2.09fF
C217 _248_/C _226_/C 2.63fF
C218 _360_/A _375_/A 4.61fF
C219 _384_/X _503_/Q 3.98fF
C220 vccd1 _482_/Q 7.68fF
C221 _413_/C vccd1 18.56fF
C222 _323_/X _473_/D 2.02fF
C223 _492_/D _483_/Q 4.16fF
C224 _324_/B fb_block_I.gs_f.fb_gray_selector_loop\\[5\\].t_buf.t_buf/a_116_47# 2.15fF
C225 _386_/B _503_/Q 4.24fF
C226 _486_/Q _557_/A 2.55fF
C227 _360_/A _487_/Q 3.97fF
C228 _491_/Q _541_/A 2.97fF
C229 vccd1 _492_/Q 6.99fF
C230 _482_/D _427__3/A 2.67fF
C231 _248_/C _556_/A 2.07fF
C232 _469_/D _482_/Q 2.37fF
C233 _383_/C _355_/B 5.15fF
C234 _311_/Y _495_/D 3.14fF
C235 _500_/Q _502_/Q 3.67fF
C236 _505_/D _486_/Q 6.00fF
C237 _433_/Y vccd1 3.52fF
C238 vccd1 _457_/D 14.04fF
C239 input17/X _283_/Y 3.33fF
C240 _485_/Q _303_/C 2.55fF
C241 _278_/Y vccd1 3.65fF
C242 vccd1 _389_/A 9.01fF
C243 vccd1 _544_/A 24.06fF
C244 _486_/Q _475_/D 3.24fF
C245 _238_/D _482_/Q 2.08fF
C246 _378_/Y _507_/Q 2.16fF
C247 _394_/B fb_block_Q.gs_f.fb_gray_selector_loop\\[3\\].t_buf.t_buf/a_116_47# 2.10fF
C248 vccd1 _381_/B 5.43fF
C249 _214_/Y vccd1 3.35fF
C250 _243_/D _384_/X 3.04fF
C251 _311_/Y _350_/A 2.37fF
C252 _311_/Y _508_/Q 3.33fF
C253 _274_/Y _370_/C 2.62fF
C254 _303_/A _486_/Q 2.07fF
C255 vccd1 _496_/Q 3.93fF
C256 _423_/X _507_/Q 3.16fF
C257 _542_/A _252_/A 2.14fF
C258 vccd1 _380_/B 2.69fF
C259 _303_/A _462_/Q 2.12fF
C260 _219_/Y _479_/Q 3.96fF
C261 _498_/Q _484_/Q 3.16fF
C262 _489_/D _471_/D 3.02fF
C263 vccd1 _402_/B 5.10fF
C264 _360_/Y _362_/B 5.26fF
C265 _499_/Q _506_/Q 2.82fF
C266 _384_/A _303_/D 3.88fF
C267 _404_/A _295_/X 2.25fF
C268 _383_/A _540_/A 2.31fF
C269 vccd1 _261_/A 3.16fF
C270 _467_/Q _503_/Q 2.30fF
C271 _366_/B _403_/X 4.11fF
C272 vccd1 _311_/A 4.39fF
C273 _507_/Q _472_/D 2.80fF
C274 vccd1 clk_master 24.08fF
C275 _502_/Q _303_/D 2.02fF
C276 _557_/A _437_/Y 2.53fF
C277 _548_/A _505_/Q 2.84fF
C278 _237_/B _320_/B 2.15fF
C279 vccd1 _486_/Q 9.58fF
C280 vccd1 fb_block_Q.gs_f.fb_gray_selector_loop\\[1\\].t_buf.t_buf/a_407_309# 2.22fF
C281 _555_/X vccd1 3.75fF
C282 _350_/A _397_/A 2.41fF
C283 vccd1 _226_/C 7.41fF
C284 vccd1 _499_/Q 3.62fF
C285 clkbuf_0_net47/a_110_47# clkbuf_0_net47/X 3.41fF
C286 _403_/X _360_/C 3.00fF
C287 _283_/Y _545_/A 2.78fF
C288 _487_/Q _488_/Q 3.95fF
C289 _236_/B _238_/D 3.63fF
C290 _383_/A input17/X 3.42fF
C291 _554_/A vccd1 3.72fF
C292 _364_/B _421_/B 2.45fF
C293 vccd1 clkbuf_0_net47/a_110_47# 2.48fF
C294 _311_/Y _557_/A 13.75fF
C295 _557_/A _257_/S 2.97fF
C296 _475_/D _437_/Y 2.19fF
C297 vccd1 _556_/A 6.36fF
C298 _398_/A _384_/X 2.42fF
C299 _370_/A _487_/D 9.48fF
C300 _487_/Q _546_/A 2.41fF
C301 _274_/A vccd1 2.68fF
C302 _419_/B _506_/D 3.77fF
C303 _452_/Q _295_/X 2.86fF
C304 _500_/Q _487_/Q 2.12fF
C305 _394_/B _494_/Q 3.58fF
C306 _493_/Q _505_/Q 2.31fF
C307 _370_/A _397_/A 3.04fF
C308 _394_/B _497_/D 2.85fF
C309 _353_/Y _503_/Q 2.07fF
C310 _311_/Y _393_/B 2.26fF
C311 vccd1 _456_/Q 5.64fF
C312 vccd1 _496_/D 2.17fF
C313 _311_/Y _303_/A 3.05fF
C314 _423_/B _249_/B 6.33fF
C315 _503_/Q _546_/A 2.49fF
C316 _548_/A _475_/Q 2.20fF
C317 _324_/B _261_/Y 2.50fF
C318 _301_/X vccd1 3.08fF
C319 _445_/D _286_/Y 2.86fF
C320 _557_/A _397_/A 2.60fF
C321 _462_/D vccd1 2.04fF
C322 vccd1 _437_/Y 3.90fF
C323 vccd1 _318_/A 2.03fF
C324 _237_/B _378_/Y 3.89fF
C325 vccd1 _480_/Q 8.62fF
C326 _501_/Q _311_/Y 3.57fF
C327 _321_/A _504_/D 2.40fF
C328 _508_/Q _484_/Q 2.86fF
C329 vccd1 _472_/Q 3.61fF
C330 _382_/C vccd1 11.61fF
C331 vccd1 _212_/Y 7.04fF
C332 _375_/A _303_/D 2.21fF
C333 vccd1 _268_/Y 12.13fF
C334 _498_/Q _481_/Q 3.04fF
C335 _487_/D _436_/Y 8.13fF
C336 vccd1 _447_/D 8.85fF
C337 _487_/Q _370_/C 5.99fF
C338 _511_/Q _504_/D 3.94fF
C339 _509_/Q _493_/Q 3.15fF
C340 _394_/B _324_/B 3.02fF
C341 _487_/Q _303_/D 2.06fF
C342 _311_/Y vccd1 94.40fF
C343 vccd1 _257_/S 6.55fF
C344 _431_/Y vccd1 2.17fF
C345 _507_/Q _494_/Q 2.50fF
C346 _303_/A _542_/A 2.06fF
C347 vccd1 clkbuf_0_gray_tree.gray.eff_gray.d/a_110_47# 2.63fF
C348 _396_/A _447_/CLK 2.40fF
C349 _362_/B vccd1 2.59fF
C350 vccd1 clkbuf_0_clk_master/X 6.50fF
C351 _227_/D _421_/B 3.39fF
C352 _501_/D vccd1 3.90fF
C353 _311_/Y _238_/D 3.66fF
C354 _270_/Y vccd1 10.21fF
C355 _479_/Q _510_/D 3.25fF
C356 vccd1 _397_/A 16.77fF
C357 _240_/X _477_/D 2.99fF
C358 vccd1 _542_/A 27.96fF
C359 vccd1 _371_/X 7.00fF
C360 _445_/D vccd1 3.91fF
C361 _498_/Q _404_/A 2.43fF
C362 _500_/Q _509_/D 2.81fF
C363 _355_/B _353_/Y 2.71fF
C364 _320_/B _375_/A 2.07fF
C365 _394_/B _511_/Q 2.39fF
C366 _398_/B _321_/A 6.08fF
C367 vccd1 clkbuf_0__086_/X 5.41fF
C368 _398_/A _353_/Y 3.09fF
C369 _252_/A _242_/B 2.31fF
C370 _384_/X _541_/A 2.09fF
C371 _359_/C _485_/Q 2.21fF
C372 _383_/C _316_/A 3.87fF
C373 _394_/B fb_block_Q.gs_f.fb_gray_selector_loop\\[1\\].t_buf.t_buf/a_116_47# 3.20fF
C374 _303_/B _506_/Q 2.95fF
C375 vccd1 _311_/a_27_297# 2.93fF
C376 _497_/D _497_/Q 4.71fF
C377 _240_/X _387_/B 4.61fF
C378 _448_/D vccd1 3.41fF
C379 _303_/A _428_/A 2.04fF
C380 _394_/B _557_/A 4.41fF
C381 _481_/Q _350_/A 3.22fF
C382 _366_/B _324_/B 2.89fF
C383 _481_/Q _508_/Q 2.89fF
C384 _550_/A vccd1 9.56fF
C385 _449_/D _240_/X 2.20fF
C386 _490_/Q _382_/C 2.46fF
C387 clkbuf_0_gray_tree.gray.eff_gray.d/X clkbuf_0_gray_tree.gray.eff_gray.d/a_110_47# 3.57fF
C388 _303_/B vccd1 16.39fF
C389 _546_/A _417_/B 2.04fF
C390 _383_/C _370_/C 4.29fF
C391 _383_/A _359_/C 6.84fF
C392 _453_/Q _470_/Q 3.42fF
C393 _370_/A _505_/Q 2.02fF
C394 _428_/A _453_/Q 2.02fF
C395 _311_/Y _490_/Q 2.44fF
C396 _490_/Q _257_/S 2.19fF
C397 vccd1 _484_/Q 20.51fF
C398 _370_/A _371_/B 2.04fF
C399 _248_/C _505_/Q 3.77fF
C400 _347_/B _370_/A 2.40fF
C401 _453_/Q _246_/B 4.52fF
C402 _324_/B _360_/C 2.71fF
C403 vccd1 _470_/Q 6.97fF
C404 _508_/Q _509_/Q 5.67fF
C405 _541_/A _467_/Q 2.87fF
C406 vccd1 _471_/D 3.07fF
C407 _428_/A vccd1 18.20fF
C408 _311_/Y _482_/Q 2.27fF
C409 _370_/A _507_/Q 3.10fF
C410 _394_/B _297_/X 4.38fF
C411 _324_/B _497_/Q 2.25fF
C412 _558_/X vccd1 2.18fF
C413 vccd1 _261_/Y 11.83fF
C414 _209_/A _384_/A 4.64fF
C415 _443_/A _557_/A 2.91fF
C416 _248_/C _507_/Q 2.44fF
C417 vccd1 _559_/A 7.73fF
C418 _419_/B _540_/A 3.94fF
C419 _324_/B fb_block_I.gs_f.fb_gray_selector_loop\\[5\\].t_buf.t_buf/a_407_309# 2.49fF
C420 vccd1 _246_/B 5.64fF
C421 _445_/Q _493_/Q 3.18fF
C422 _423_/B _393_/B 3.28fF
C423 vccd1 _248_/X 5.80fF
C424 _382_/C _389_/A 3.95fF
C425 _382_/C _544_/A 2.22fF
C426 _240_/X _305_/Y 9.28fF
C427 _505_/D _389_/B 2.17fF
C428 _302_/Y _393_/B 5.31fF
C429 vccd1 _543_/X 3.94fF
C430 vccd1 _551_/X 5.90fF
C431 _490_/Q _542_/A 2.29fF
C432 _415_/B vccd1 2.21fF
C433 vccd1 _206_/X 2.74fF
C434 _428_/A _238_/D 9.68fF
C435 _394_/B vccd1 17.80fF
C436 _264_/A _493_/Q 2.26fF
C437 _311_/Y _214_/Y 2.25fF
C438 _370_/A _366_/B 2.60fF
C439 _303_/A _505_/Q 2.48fF
C440 _341_/X _303_/D 2.20fF
C441 vccd1 _443_/Y 3.09fF
C442 _435_/A vccd1 8.10fF
C443 _258_/A _446_/D 2.11fF
C444 _252_/A _239_/B 2.72fF
C445 _544_/X _543_/X 4.76fF
C446 _364_/B _296_/Y 7.16fF
C447 _398_/B vccd1 4.98fF
C448 _360_/A _305_/Y 2.28fF
C449 _488_/D vccd1 3.03fF
C450 vccd1 _450_/Q 4.82fF
C451 vccd1 _555_/A 14.89fF
C452 vccd1 _423_/B 5.85fF
C453 _303_/A _242_/B 4.48fF
C454 _428_/A _406_/B 2.94fF
C455 _500_/Q _471_/Q 3.62fF
C456 vccd1 _335_/Y 5.44fF
C457 _366_/B _557_/A 2.32fF
C458 vccd1 _545_/X 3.74fF
C459 _548_/A _487_/Q 7.23fF
C460 _323_/X _302_/Y 2.65fF
C461 _501_/Q _486_/D 2.15fF
C462 vccd1 _302_/Y 7.98fF
C463 _481_/Q _506_/Q 2.00fF
C464 _252_/B _383_/C 2.08fF
C465 vccd1 _505_/Q 38.66fF
C466 clkbuf_0__039_/a_110_47# clkbuf_0__039_/X 3.52fF
C467 vccd1 _443_/A 13.88fF
C468 vccd1 _389_/B 11.83fF
C469 _453_/Q _481_/Q 4.72fF
C470 vccd1 _447_/CLK 11.01fF
C471 vccd1 _371_/B 5.57fF
C472 _404_/A _557_/A 2.63fF
C473 _486_/D vccd1 2.75fF
C474 _485_/Q _557_/A 4.38fF
C475 vccd1 _541_/X 6.92fF
C476 vccd1 _507_/Q 25.37fF
C477 _311_/Y _554_/A 2.78fF
C478 vccd1 _242_/B 2.11fF
C479 _460_/D _493_/Q 3.29fF
C480 _459_/D _488_/Q 2.23fF
C481 vccd1 _481_/Q 16.28fF
C482 _245_/B _505_/Q 3.04fF
C483 _485_/D vccd1 3.12fF
C484 clkbuf_0_gray_tree.sine_cell2.eff_gray.d/X _423_/B 2.18fF
C485 vccd1 _266_/Y 5.72fF
C486 _453_/Q _509_/Q 2.00fF
C487 _360_/C _393_/B 2.65fF
C488 _490_/Q _428_/A 4.04fF
C489 _500_/Q _488_/Q 2.79fF
C490 _461_/Q _439_/Y 2.07fF
C491 vccd1 _509_/Q 23.55fF
C492 _366_/B _323_/X 2.24fF
C493 _311_/Y _456_/Q 2.40fF
C494 vccd1 _283_/Y 19.24fF
C495 _428_/A _482_/Q 2.48fF
C496 _383_/C _545_/A 2.65fF
C497 _278_/Y _303_/B 2.69fF
C498 _366_/B vccd1 9.64fF
C499 _460_/D _249_/B 3.01fF
C500 _452_/Q _557_/A 3.46fF
C501 vccd1 _475_/Q 10.03fF
C502 _492_/Q _471_/D 2.15fF
C503 _502_/Q _350_/A 2.47fF
C504 _548_/A _227_/D 3.02fF
C505 _398_/B _504_/Q 2.55fF
C506 _453_/Q _360_/C 2.87fF
C507 _557_/A _239_/B 6.68fF
C508 vccd1 _543_/A 18.29fF
C509 _504_/Q _423_/B 2.50fF
C510 _394_/B _490_/Q 4.52fF
C511 _504_/Q _335_/Y 2.47fF
C512 vccd1 fb_block_Q.gs_f.fb_gray_selector_loop\\[0\\].t_buf.t_buf/a_407_309# 2.17fF
C513 _511_/D _232_/B 3.15fF
C514 vccd1 _404_/A 6.11fF
C515 _384_/A _383_/Y 2.51fF
C516 _404_/A _457_/Q 4.21fF
C517 vccd1 _360_/C 12.04fF
C518 vccd1 _485_/Q 21.02fF
C519 vccd1 clkbuf_0_clk_master/a_110_47# 2.79fF
C520 _540_/A _506_/D 2.10fF
C521 vccd1 _286_/A2 4.05fF
C522 _484_/Q _380_/B 2.08fF
C523 _303_/A _383_/A 3.36fF
C524 vccd1 _497_/Q 6.47fF
C525 clkbuf_0_gray_tree.sine_cell2.eff_gray.d/X _509_/Q 4.54fF
C526 vccd1 _508_/D 5.58fF
C527 _272_/A vccd1 2.48fF
C528 _548_/A _383_/C 2.51fF
C529 _488_/Q _303_/D 2.95fF
C530 vccd1 fb_block_I.gs_f.fb_gray_selector_loop\\[5\\].t_buf.t_buf/a_407_309# 2.18fF
C531 _463_/Q _489_/Q 2.13fF
C532 vccd1 _547_/A 19.71fF
C533 _384_/A _557_/A 4.00fF
C534 _540_/A _541_/A 2.87fF
C535 _238_/D _404_/A 2.12fF
C536 vccd1 _370_/X 11.02fF
C537 _503_/Q _503_/D 7.96fF
C538 vccd1 _310_/B 3.52fF
C539 _446_/D vccd1 3.96fF
C540 vccd1 _490_/D 8.51fF
C541 _469_/Q vccd1 3.03fF
C542 _502_/Q _557_/A 4.70fF
C543 input17/X _506_/D 2.55fF
C544 _320_/B _541_/A 2.31fF
C545 _382_/C _542_/A 2.88fF
C546 _383_/A vccd1 18.86fF
C547 _469_/Q _457_/Q 3.18fF
C548 _303_/A _274_/Y 3.32fF
C549 _398_/C vccd1 2.12fF
C550 _237_/B vccd1 3.34fF
C551 _442_/Y _544_/A 3.69fF
C552 clkbuf_0__039_/X _286_/Y 2.45fF
C553 vccd1 _452_/Q 4.17fF
C554 _413_/C _389_/B 5.77fF
C555 _480_/D vccd1 4.95fF
C556 _270_/Y _257_/S 2.04fF
C557 vccd1 _239_/B 18.03fF
C558 _479_/Q _370_/C 2.29fF
C559 _227_/D _249_/B 3.33fF
C560 _311_/Y _371_/X 2.85fF
C561 _303_/X _557_/A 2.79fF
C562 _296_/Y _434_/A 2.08fF
C563 vccd1 _458_/Q 2.92fF
C564 _320_/A _487_/Q 2.76fF
C565 _483_/Q _396_/A 3.51fF
C566 _375_/B vccd1 7.81fF
C567 _360_/A _378_/Y 2.07fF
C568 _511_/Q _463_/D 2.00fF
C569 vccd1 _439_/Y 2.57fF
C570 _539_/A _550_/X 2.01fF
C571 _557_/X vccd1 3.37fF
C572 _375_/B _298_/Y 2.91fF
C573 vccd1 _274_/Y 5.93fF
C574 clkbuf_0_gray_tree.sine_cell2.eff_gray.d/X _446_/D 3.14fF
C575 _301_/X _303_/B 4.07fF
C576 _557_/A _489_/Q 2.06fF
C577 _243_/D _552_/A 2.37fF
C578 vccd1 _384_/A 30.31fF
C579 _491_/Q _557_/A 5.83fF
C580 vccd1 input18/a_109_47# 2.64fF
C581 _249_/Y _546_/A 6.16fF
C582 _328_/Y vccd1 3.61fF
C583 _557_/A _474_/D 2.30fF
C584 _432_/Y _507_/Q 2.84fF
C585 _486_/Q _423_/B 2.26fF
C586 _488_/D _499_/Q 3.26fF
C587 _540_/A _305_/Y 4.89fF
C588 _501_/Q _219_/Y 3.54fF
C589 _502_/Q vccd1 16.04fF
C590 vccd1 _445_/Q 2.72fF
C591 vccd1 _547_/X 2.10fF
C592 _500_/D _303_/D 3.00fF
C593 vccd1 clkbuf_0__039_/X 11.40fF
C594 _219_/Y vccd1 2.10fF
C595 _303_/X vccd1 4.98fF
C596 _278_/Y _366_/B 2.15fF
C597 _303_/A _465_/D 4.33fF
C598 _297_/X _474_/D 2.33fF
C599 _268_/Y _261_/Y 3.06fF
C600 vccd1 _264_/A 3.11fF
C601 _467_/D vccd1 5.08fF
C602 _453_/Q _489_/Q 2.63fF
C603 _270_/Y _448_/D 3.35fF
C604 vccd1 _404_/Y 2.55fF
C605 _218_/Y vccd1 2.76fF
C606 _359_/X _506_/D 2.24fF
C607 _498_/Q _384_/X 2.26fF
C608 clkbuf_0__084_/a_110_47# clkbuf_0__084_/X 3.52fF
C609 vccd1 _473_/Q 5.86fF
C610 vccd1 _489_/Q 10.33fF
C611 _503_/Q _557_/A 3.96fF
C612 _504_/D _397_/A 2.55fF
C613 _537_/A vccd1 8.04fF
C614 _491_/Q vccd1 20.55fF
C615 _384_/X _249_/B 2.64fF
C616 _394_/B _268_/Y 2.01fF
C617 _465_/D vccd1 2.68fF
C618 _511_/Q _227_/D 5.02fF
C619 _490_/Q _458_/Q 2.24fF
C620 _413_/C _383_/A 2.16fF
C621 _364_/B vccd1 3.26fF
C622 _557_/A _483_/Q 5.54fF
C623 _499_/Q _509_/Q 3.31fF
C624 _463_/D vccd1 2.66fF
C625 _504_/Q _384_/A 2.59fF
C626 _502_/D _463_/Q 2.13fF
C627 vccd1 _310_/A 2.53fF
C628 _279_/S _398_/D 2.31fF
C629 _370_/X _389_/A 8.76fF
C630 _375_/A vccd1 8.38fF
C631 _320_/A _398_/A 4.94fF
C632 _311_/Y _450_/Q 2.38fF
C633 _398_/D vccd1 3.50fF
C634 _460_/D vccd1 6.36fF
C635 _413_/C _375_/B 7.85fF
C636 _423_/X _316_/A 4.01fF
C637 _315_/B _507_/Q 2.28fF
C638 _386_/B _503_/D 3.39fF
C639 _360_/A _359_/C 3.57fF
C640 vccd1 _487_/Q 19.84fF
C641 _540_/A _303_/C 4.58fF
C642 clkbuf_0_gray_tree.sine_cell2.eff_gray.d/X _491_/Q 5.10fF
C643 _232_/B _428_/A 3.19fF
C644 _548_/A _392_/A 2.09fF
C645 _501_/Q _503_/Q 2.03fF
C646 _311_/Y _505_/Q 5.63fF
C647 _383_/A _496_/Q 2.59fF
C648 _498_/Q _471_/Q 3.60fF
C649 _491_/Q _406_/B 2.03fF
C650 _370_/A _217_/Y 5.75fF
C651 _324_/B fb_block_I.gs_f.fb_gray_selector_loop\\[2\\].t_buf.t_buf/a_116_47# 2.82fF
C652 vccd1 _503_/Q 18.29fF
C653 _463_/Q _492_/D 2.67fF
C654 _227_/D _475_/D 2.06fF
C655 vccd1 _409_/B 6.38fF
C656 vccd1 _491_/D 4.82fF
C657 _383_/C _557_/A 3.37fF
C658 _384_/X _365_/B 5.62fF
C659 _500_/Q _359_/X 3.09fF
C660 vccd1 _479_/D 3.60fF
C661 _320_/A _384_/X 6.88fF
C662 _413_/Y vccd1 3.14fF
C663 vccd1 fb_block_Q.gs_f.fb_gray_selector_loop\\[4\\].t_buf.t_buf/a_407_309# 2.13fF
C664 vccd1 _483_/Q 11.95fF
C665 _283_/Y _480_/Q 2.82fF
C666 _499_/Q _490_/D 3.97fF
C667 _320_/A _240_/X 2.38fF
C668 vccd1 _310_/Y 10.38fF
C669 _382_/C _509_/Q 3.88fF
C670 _392_/A _493_/Q 4.66fF
C671 _466_/Q _436_/Y 2.45fF
C672 _397_/A _505_/Q 2.24fF
C673 _419_/B _477_/Q 7.09fF
C674 _419_/B _506_/Q 7.43fF
C675 _480_/D _499_/Q 2.68fF
C676 _398_/A _557_/A 3.18fF
C677 _311_/Y _509_/Q 5.62fF
C678 _311_/Y _283_/Y 2.12fF
C679 _276_/Y vccd1 5.34fF
C680 _243_/D vccd1 14.93fF
C681 _482_/D _483_/Q 2.69fF
C682 _481_/D _470_/D 2.51fF
C683 _500_/Q _493_/Q 2.17fF
C684 _490_/Q _489_/Q 2.51fF
C685 _553_/X vccd1 6.45fF
C686 _227_/D vccd1 12.12fF
C687 _542_/A _507_/Q 3.41fF
C688 _276_/Y _282_/Y 2.66fF
C689 vccd1 _510_/D 3.91fF
C690 _485_/Q _472_/Q 2.98fF
C691 _430_/Y vccd1 3.34fF
C692 _419_/B vccd1 10.74fF
C693 input17/X _453_/D 2.95fF
C694 _323_/A _383_/Y 6.82fF
C695 vccd1 _466_/Q 7.41fF
C696 _392_/A _494_/Q 3.86fF
C697 _398_/B _303_/B 3.08fF
C698 _479_/Q _493_/Q 3.14fF
C699 _462_/Q _274_/Y 2.00fF
C700 _308_/Y vccd1 2.80fF
C701 _419_/B _298_/Y 3.91fF
C702 _249_/B _546_/A 2.98fF
C703 _500_/Q _359_/C 2.82fF
C704 vccd1 _476_/D 2.58fF
C705 vccd1 _509_/D 6.48fF
C706 _311_/Y _508_/D 2.73fF
C707 _509_/Q _397_/A 2.67fF
C708 _383_/C vccd1 13.08fF
C709 _498_/Q _305_/Y 2.99fF
C710 _502_/Q _486_/Q 2.50fF
C711 fb_block_I.gs_f.fb_gray_selector_loop\\[1\\].t_buf.t_buf/a_407_309# vccd1 2.16fF
C712 _274_/A _274_/Y 2.97fF
C713 _256_/B _557_/A 2.06fF
C714 _445_/D _283_/Y 2.21fF
C715 _303_/B _505_/Q 3.05fF
C716 vccd1 _458_/D 2.39fF
C717 _217_/Y vccd1 2.06fF
C718 _502_/D vccd1 2.63fF
C719 vccd1 _350_/Y 2.63fF
C720 vccd1 _355_/B 2.11fF
C721 clkbuf_0_clk_master/X clkbuf_0_clk_master/a_110_47# 3.65fF
C722 _398_/A vccd1 19.15fF
C723 input17/X _545_/A 2.81fF
C724 _311_/Y _469_/Q 4.19fF
C725 _311_/Y _383_/A 2.16fF
C726 _324_/B _488_/Q 4.07fF
C727 _215_/A _470_/D 2.00fF
C728 _383_/C _238_/D 2.13fF
C729 vccd1 _454_/Q 3.73fF
C730 vccd1 _434_/A 7.28fF
C731 vccd1 _313_/A 4.24fF
C732 _311_/Y _239_/B 3.39fF
C733 _394_/B _398_/B 4.53fF
C734 _498_/Q _303_/D 2.08fF
C735 _427__3/A _491_/D 3.85fF
C736 _215_/A _252_/A 2.31fF
C737 _461_/D vccd1 2.01fF
C738 _544_/A _487_/Q 2.97fF
C739 _359_/C _373_/B 2.00fF
C740 _415_/B _302_/Y 3.64fF
C741 _227_/D _504_/Q 3.61fF
C742 _370_/A _541_/A 3.31fF
C743 _465_/D _486_/Q 3.03fF
C744 _443_/Y _302_/Y 2.45fF
C745 _376_/B vccd1 2.23fF
C746 _394_/B _505_/Q 2.58fF
C747 _238_/D _434_/A 2.69fF
C748 _276_/A vccd1 3.17fF
C749 _479_/Q _252_/A 2.47fF
C750 _511_/D _465_/D 3.12fF
C751 _323_/A vccd1 2.25fF
C752 vccd1 _512_/Q 2.59fF
C753 _321_/A _488_/Q 2.65fF
C754 _256_/B vccd1 7.70fF
C755 _443_/Y _443_/A 3.90fF
C756 _463_/D _486_/Q 3.16fF
C757 vccd1 _384_/X 23.10fF
C758 _500_/Q _463_/Q 3.39fF
C759 _321_/A _392_/A 10.20fF
C760 _311_/Y _384_/A 2.71fF
C761 _544_/A _503_/Q 2.54fF
C762 _240_/X vccd1 18.62fF
C763 vccd1 clkbuf_0_gray_tree.sine_cell2.eff_gray.d/a_110_47# 2.75fF
C764 _484_/D vccd1 2.08fF
C765 _386_/B vccd1 7.44fF
C766 _511_/Q _488_/Q 2.10fF
C767 _311_/Y _502_/Q 2.53fF
C768 _272_/Y vccd1 15.58fF
C769 _500_/Q _321_/A 2.71fF
C770 _248_/X _283_/Y 2.51fF
C771 _511_/Q _546_/A 3.17fF
C772 _485_/D _398_/B 2.37fF
C773 vccd1 clkbuf_0__084_/X 6.79fF
C774 _511_/Q _215_/A 2.21fF
C775 vccd1 _418_/B 2.98fF
C776 _360_/A vccd1 19.62fF
C777 _303_/C _494_/Q 2.69fF
C778 _543_/A _248_/X 2.31fF
C779 _394_/B _509_/Q 2.53fF
C780 clkbuf_0_gray_tree.sine_cell2.eff_gray.d/X clkbuf_0_gray_tree.sine_cell2.eff_gray.d/a_110_47# 3.66fF
C781 _488_/Q _557_/A 2.37fF
C782 _360_/C _246_/B 3.36fF
C783 _507_/Q _505_/Q 2.65fF
C784 _481_/D _453_/Q 3.16fF
C785 vccd1 _477_/D 4.48fF
C786 _511_/Q _479_/Q 2.44fF
C787 _441_/Y no_ones_below_in[2] 3.02fF
C788 _548_/A _545_/A 3.16fF
C789 vccd1 _506_/D 6.37fF
C790 _382_/C _489_/Q 6.66fF
C791 _428_/Y _257_/S 3.04fF
C792 vccd1 no_ones_below_in[2] 2.10fF
C793 vccd1 _471_/Q 9.69fF
C794 _282_/A _507_/Q 3.04fF
C795 _501_/Q _357_/B 4.19fF
C796 vccd1 _467_/Q 3.40fF
C797 _298_/Y _477_/D 2.80fF
C798 _557_/A _546_/A 4.72fF
C799 vccd1 fb_block_I.gs_f.fb_gray_selector_loop\\[3\\].t_buf.t_buf/a_407_309# 2.14fF
C800 _407_/Y _493_/Q 2.73fF
C801 _481_/D vccd1 2.36fF
C802 _215_/A _557_/A 3.95fF
C803 _554_/X vccd1 5.58fF
C804 vccd1 _541_/A 18.15fF
C805 _324_/B _387_/X 2.92fF
C806 vccd1 clkbuf_0__086_/a_110_47# 2.78fF
C807 _413_/C _398_/A 2.04fF
C808 vccd1 _357_/B 2.41fF
C809 _543_/A _555_/A 7.07fF
C810 vccd1 _352_/B 2.11fF
C811 _384_/X _549_/A 2.79fF
C812 _383_/C _544_/A 3.69fF
C813 _394_/B _497_/Q 2.20fF
C814 _511_/Q _370_/C 2.19fF
C815 _392_/A _436_/Y 2.36fF
C816 _344_/B vccd1 2.75fF
C817 vccd1 _266_/A 3.14fF
C818 vccd1 _387_/B 3.34fF
C819 _479_/Q _557_/A 3.13fF
C820 _360_/C _450_/Q 3.16fF
C821 _382_/C _487_/Q 2.33fF
C822 vccd1 _401_/B 4.35fF
C823 _370_/A _370_/C 3.47fF
C824 _556_/X vccd1 5.25fF
C825 _481_/Q _283_/Y 3.55fF
C826 _311_/Y _460_/D 2.33fF
C827 _398_/A _544_/A 2.22fF
C828 _449_/D vccd1 9.54fF
C829 _396_/A _295_/X 5.75fF
C830 _421_/B _475_/D 10.40fF
C831 _399_/B vccd1 2.33fF
C832 _539_/A vccd1 10.67fF
C833 _542_/A _489_/Q 3.26fF
C834 _323_/X _488_/Q 2.56fF
C835 _485_/Q _505_/Q 2.52fF
C836 _544_/A _434_/A 2.09fF
C837 vccd1 _488_/Q 14.81fF
C838 _459_/D vccd1 6.69fF
C839 vccd1 _392_/A 11.42fF
C840 vccd1 _353_/Y 7.39fF
C841 _303_/A _479_/Q 3.67fF
C842 _382_/C _503_/Q 9.55fF
C843 _500_/Q _501_/Q 2.86fF
C844 _303_/D _557_/A 2.26fF
C845 _459_/Q _557_/A 2.29fF
C846 _383_/A _398_/B 6.21fF
C847 _494_/D _494_/Q 3.48fF
C848 vccd1 _546_/A 38.57fF
C849 _311_/Y _503_/Q 3.26fF
C850 vccd1 _215_/A 16.94fF
C851 _366_/B _283_/Y 3.09fF
C852 _504_/Q _477_/D 2.83fF
C853 _500_/Q vccd1 28.45fF
C854 _237_/B _335_/Y 3.03fF
C855 vccd1 _264_/Y 4.94fF
C856 _551_/A _541_/A 3.56fF
C857 _443_/A _310_/B 2.11fF
C858 _394_/B _274_/Y 2.35fF
C859 _547_/A _242_/B 3.65fF
C860 vccd1 _421_/B 3.55fF
C861 vccd1 _305_/Y 19.51fF
C862 _303_/B _428_/Y 3.07fF
C863 _303_/A _370_/C 4.78fF
C864 vccd1 _316_/A 5.02fF
C865 vccd1 _542_/X 5.36fF
C866 _479_/Q vccd1 18.07fF
C867 _303_/A _303_/D 6.47fF
C868 _227_/D _437_/Y 5.87fF
C869 _360_/C _509_/Q 2.11fF
C870 _239_/B _505_/Q 2.75fF
C871 _485_/Q _283_/Y 2.04fF
C872 _366_/B _360_/C 7.11fF
C873 _557_/A _387_/X 4.63fF
C874 _485_/D _383_/A 6.03fF
C875 _540_/A _557_/A 3.12fF
C876 vccd1 _284_/X 5.45fF
C877 _513_/Q vccd1 2.27fF
C878 _303_/C _557_/A 2.50fF
C879 _461_/D _499_/Q 3.10fF
C880 _274_/Y _505_/Q 2.94fF
C881 _490_/Q _357_/B 2.66fF
C882 fb_block_I.gs_f.fb_gray_selector_loop\\[4\\].t_buf.t_buf/a_407_309# vccd1 2.13fF
C883 vccd1 _370_/C 19.45fF
C884 _360_/A _389_/A 3.16fF
C885 vccd1 _303_/D 19.95fF
C886 vccd1 _459_/Q 3.22fF
C887 _480_/Q _509_/D 3.84fF
C888 vccd1 _373_/B 6.09fF
C889 vccd1 _549_/X 7.55fF
C890 vccd1 _280__7/Y 2.42fF
C891 vccd1 fb_block_I.gs_f.fb_gray_selector_loop\\[0\\].t_buf.t_buf/a_407_309# 2.13fF
C892 _242_/B _439_/Y 2.38fF
C893 _303_/C _393_/B 2.23fF
C894 input17/X _557_/A 4.76fF
C895 _541_/A _492_/Q 2.71fF
C896 _386_/B _486_/Q 3.92fF
C897 _546_/A _549_/A 2.76fF
C898 _500_/D vccd1 2.84fF
C899 _502_/Q _505_/Q 5.14fF
C900 _449_/D _490_/Q 2.62fF
C901 _557_/A _295_/X 2.46fF
C902 _504_/Q _546_/A 3.04fF
C903 _297_/X _434_/Y 2.01fF
C904 _238_/D _303_/D 2.84fF
C905 _394_/B _491_/Q 2.10fF
C906 _382_/C _434_/A 2.55fF
C907 vccd1 _387_/X 2.04fF
C908 _504_/Q _421_/B 6.32fF
C909 _311_/Y _398_/A 2.74fF
C910 _398_/B _489_/Q 7.17fF
C911 _303_/B _409_/B 3.93fF
C912 vccd1 _540_/A 27.61fF
C913 vccd1 _538_/A 9.17fF
C914 _323_/X _303_/C 2.72fF
C915 _233_/B vccd1 2.27fF
C916 _311_/Y _454_/Q 3.99fF
C917 _311_/Y _434_/A 2.84fF
C918 vccd1 _303_/C 18.20fF
C919 _492_/Q _488_/Q 2.27fF
C920 vccd1 _249_/Y 10.03fF
C921 _217_/Y _487_/D 2.27fF
C922 _283_/Y _384_/A 2.01fF
C923 _490_/Q _264_/Y 2.31fF
C924 vccd1 _550_/X 12.21fF
C925 _320_/B vccd1 7.23fF
C926 _272_/A _239_/B 6.67fF
C927 _553_/A vccd1 3.29fF
C928 _359_/X _360_/Y 2.83fF
C929 _453_/Q input17/X 3.06fF
C930 clkbuf_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out/a_110_47# clkbuf_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out/X 3.56fF
C931 _264_/A _507_/Q 2.89fF
C932 _502_/Q _509_/Q 2.30fF
C933 _491_/Q _505_/Q 2.21fF
C934 _494_/D _557_/A 2.09fF
C935 _557_/A _545_/A 2.52fF
C936 _502_/D _542_/A 2.62fF
C937 clkbuf_0_gray_tree.gray.eff_gray.d/X _459_/Q 3.98fF
C938 vccd1 input17/X 30.41fF
C939 _311_/Y _492_/D 2.14fF
C940 _398_/A _397_/A 3.88fF
C941 _209_/A _495_/D 2.23fF
C942 _511_/Q _296_/Y 2.55fF
C943 _252_/B vccd1 5.48fF
C944 _382_/C _386_/B 5.27fF
C945 _311_/Y _512_/Q 3.91fF
C946 vccd1 _295_/X 3.57fF
C947 _419_/B _550_/A 3.44fF
C948 _311_/Y _384_/X 4.28fF
C949 _479_/Q _492_/Q 2.22fF
C950 _508_/Q _493_/Q 2.66fF
C951 _227_/D _484_/Q 4.00fF
C952 _311_/Y _240_/X 3.74fF
C953 vccd1 _453_/D 10.93fF
C954 _284_/S vccd1 3.07fF
C955 vccd1 fb_block_I.gs_f.fb_gray_selector_loop\\[2\\].t_buf.t_buf/a_407_309# 2.13fF
C956 _214_/Y _215_/A 2.39fF
C957 _469_/D _252_/B 2.23fF
C958 _321_/A _493_/Q 2.29fF
C959 _360_/A _318_/A 2.29fF
C960 _375_/A _371_/B 3.02fF
C961 _320_/A _498_/Q 2.05fF
C962 _239_/X vccd1 2.16fF
C963 _415_/B _413_/Y 3.54fF
C964 _258_/A _249_/B 3.56fF
C965 vccd1 _403_/X 4.61fF
C966 _481_/Q _310_/A 2.85fF
C967 _320_/A _249_/B 2.50fF
C968 _362_/B _240_/X 3.37fF
C969 vccd1 _407_/Y 3.95fF
C970 _283_/Y _489_/Q 2.38fF
C971 _378_/Y vccd1 2.86fF
C972 _383_/C _484_/Q 2.06fF
C973 _552_/X vccd1 2.13fF
C974 _449_/Q vccd1 13.06fF
C975 _272_/A _264_/A 2.16fF
C976 _323_/X _545_/A 5.48fF
C977 vccd1 _545_/A 25.71fF
C978 _494_/D vccd1 3.62fF
C979 _389_/A _370_/C 2.55fF
C980 _444__4/Y _493_/Q 2.08fF
C981 _511_/Q _249_/B 4.90fF
C982 _303_/B _434_/A 2.22fF
C983 _511_/Q _494_/Q 2.04fF
C984 _557_/A _493_/Q 4.07fF
C985 vccd1 _472_/D 2.29fF
C986 _488_/D _227_/D 4.43fF
C987 _419_/B _435_/A 2.04fF
C988 _556_/A _546_/A 4.59fF
C989 _499_/Q _305_/Y 6.63fF
C990 _438_/Y _442_/A 2.78fF
C991 _373_/B _496_/Q 2.82fF
C992 vccd1 _285_/Y 3.99fF
C993 _398_/D _543_/A 2.05fF
C994 _320_/A _252_/A 2.27fF
C995 _248_/C _494_/Q 3.41fF
C996 _448_/Q _270_/Y 2.43fF
C997 _238_/D _545_/A 2.03fF
C998 _359_/X _501_/Q 4.86fF
C999 _498_/Q _557_/A 2.34fF
C1000 vccd1 _474_/Q 2.80fF
C1001 _548_/A vccd1 24.10fF
C1002 _359_/C _557_/A 3.67fF
C1003 _415_/B _502_/D 3.01fF
C1004 _491_/Q _446_/D 3.86fF
C1005 _493_/Q _436_/Y 2.58fF
C1006 _502_/Q _384_/A 2.05fF
C1007 _383_/A _489_/Q 8.52fF
C1008 _557_/A _494_/Q 2.73fF
C1009 _359_/X vccd1 4.75fF
C1010 vccd1 _296_/Y 9.92fF
C1011 _486_/Q _303_/D 2.33fF
C1012 fb_block_Q.gs_f.fb_gray_selector_loop\\[2\\].t_buf.t_buf/a_407_309# vccd1 2.17fF
C1013 _449_/D _311_/Y 2.01fF
C1014 vccd1 _315_/A 2.44fF
C1015 _384_/X _484_/Q 3.54fF
C1016 _457_/D _550_/X 2.34fF
C1017 clkbuf_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out/a_110_47# vccd1 2.75fF
C1018 vccd1 _279_/X 2.16fF
C1019 _510_/D _242_/B 2.44fF
C1020 _360_/Y _350_/A 3.34fF
C1021 vccd1 clkbuf_0__084_/a_110_47# 2.65fF
C1022 _494_/Q _393_/B 3.24fF
C1023 _421_/B _437_/Y 5.67fF
C1024 _240_/X _471_/D 3.80fF
C1025 vccd1 _493_/Q 33.76fF
C1026 _557_/A _396_/A 3.13fF
C1027 _435_/A _313_/A 2.23fF
C1028 clkbuf_0__086_/a_110_47# clkbuf_0__086_/X 3.39fF
C1029 _248_/C _324_/B 2.47fF
C1030 _292_/B _324_/B 3.52fF
C1031 _311_/Y _215_/A 2.57fF
C1032 _500_/Q _311_/Y 3.75fF
C1033 _209_/A vccd1 11.76fF
C1034 _489_/D vccd1 2.13fF
C1035 _398_/A _505_/Q 3.45fF
C1036 _276_/Y _543_/A 2.12fF
C1037 vccd1 _498_/Q 20.77fF
C1038 vccd1 _220_/Y 5.80fF
C1039 _311_/Y _479_/Q 2.03fF
C1040 _498_/Q _457_/Q 2.13fF
C1041 input17/X _380_/B 2.06fF
C1042 _359_/C vccd1 12.84fF
C1043 _370_/A _350_/A 2.39fF
C1044 _370_/A _508_/Q 3.15fF
C1045 _308_/Y _366_/B 2.49fF
C1046 vccd1 _249_/B 12.50fF
C1047 _462_/D _370_/C 3.23fF
C1048 _486_/Q _434_/Y 3.57fF
C1049 vccd1 _494_/Q 13.03fF
C1050 _248_/C _508_/Q 3.39fF
C1051 _497_/D vccd1 5.81fF
C1052 _546_/A _397_/A 2.13fF
C1053 _542_/A _546_/A 6.79fF
C1054 _272_/A _243_/D 3.04fF
C1055 _503_/Q _239_/B 2.72fF
C1056 vccd1 clkbuf_0__039_/a_110_47# 2.72fF
C1057 _329_/X _266_/A 2.55fF
C1058 _500_/Q _397_/A 2.04fF
C1059 _243_/D _547_/A 3.25fF
C1060 _303_/A _252_/A 4.43fF
XFILLER_54_247 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xfb_block_Q.gs_f.fb_gray_selector_loop\\[8\\].t_buf.t_buf _504_/Q _278_/Y vssd1 vccd1
+ _394_/B sky130_fd_sc_hd__ebufn_4
XFILLER_62_280 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_52_29 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_52_18 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__506__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_22_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_22_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_77_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_501_ _311_/Y _501_/D _557_/A vssd1 vccd1 _501_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_60_239 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_60_217 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_45_269 vssd1 vccd1 sky130_fd_sc_hd__decap_8
X_432_ _434_/A vssd1 vccd1 _432_/Y sky130_fd_sc_hd__inv_2
XFILLER_13_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_26_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_363_ _370_/C _366_/B vssd1 vccd1 _364_/B sky130_fd_sc_hd__or2b_1
X_294_ _544_/A vssd1 vccd1 _303_/D sky130_fd_sc_hd__inv_2
XFILLER_9_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__275__S _547_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_63_28 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_27_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__214__A _215_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_12_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_77_169 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_77_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__499__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_415_ _502_/Q _415_/B vssd1 vccd1 _502_/D sky130_fd_sc_hd__xnor2_1
X_346_ _350_/A _453_/Q vssd1 vccd1 _347_/B sky130_fd_sc_hd__xnor2_1
XANTENNA__506__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_41_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_277_ _475_/Q _476_/Q _548_/A vssd1 vccd1 _278_/A sky130_fd_sc_hd__mux2_1
XFILLER_52_6 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_68_169 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_68_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_91_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_99_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_244 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_74_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_90_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__209__A _209_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_15_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_23_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_209 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_99_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_2_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_2_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_183 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_73_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_73_150 vssd1 vccd1 sky130_fd_sc_hd__decap_8
X_519__55 vssd1 vssd1 vccd1 vccd1 _474_/D _519__55/LO sky130_fd_sc_hd__conb_1
XFILLER_64_60 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__235__A3 _238_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_0_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_0_79 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_329_ _479_/Q _493_/Q _494_/Q vssd1 vccd1 _329_/X sky130_fd_sc_hd__or3_1
XFILLER_88_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_50_3 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_96_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_96_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_64_161 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_12_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_60_29 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_60_18 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_20_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_20_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_85_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_70_120 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_18_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_18_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_70_153 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_34_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_507 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_93_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_78_286 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_78_253 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__402__A _498_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_529 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_518 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_98_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_61_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_161 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_39_19 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_84_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_71_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_52_175 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_20_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__222__A _559_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_43_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA_input18_A rstb vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_61_94 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_3_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_304 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_315 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_326 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_337 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_348 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_66_267 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_66_201 vssd1 vccd1 sky130_fd_sc_hd__decap_8
Xclkbuf_1_0_0_gray_tree.sine_cell2.eff_gray.d clkbuf_0_gray_tree.sine_cell2.eff_gray.d/X
+ vssd1 vccd1 _445_/D sky130_fd_sc_hd__clkbuf_2
XFILLER_13_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_19_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_26_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_359 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__307__A _546_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_34_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_57_245 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_82_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__217__A _428_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_40_156 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_40_112 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xoutput20 _311_/Y vssd1 vccd1 cclk sky130_fd_sc_hd__buf_2
Xoutput31 _541_/X vssd1 vccd1 gray_clk_out[2] sky130_fd_sc_hd__buf_2
Xoutput42 _553_/X vssd1 vccd1 read_out_I[0] sky130_fd_sc_hd__buf_2
XFILLER_48_267 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_170 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_71_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_192 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_181 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_100_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_98_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_39_201 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_54_259 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_62_292 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_22_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_77_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_690 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_500_ _311_/Y _500_/D _557_/A vssd1 vccd1 _500_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_45_215 vssd1 vccd1 sky130_fd_sc_hd__decap_8
X_362_ _485_/Q _362_/B vssd1 vccd1 _485_/D sky130_fd_sc_hd__xnor2_1
XFILLER_53_270 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_431_ _434_/A vssd1 vccd1 _431_/Y sky130_fd_sc_hd__inv_2
XFILLER_9_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_13_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_26_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_293_ _543_/A vssd1 vccd1 _303_/C sky130_fd_sc_hd__inv_2
XFILLER_42_85 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_42_74 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_42_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_9_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_3_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__320__A _320_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_50_240 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_27_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_281 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_262 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_12_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_77_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__458__CLK _305_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__230__A _503_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_85_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_414_ _227_/D _413_/Y _384_/X vssd1 vccd1 _415_/B sky130_fd_sc_hd__o21ai_1
X_345_ _398_/A vssd1 vccd1 _375_/A sky130_fd_sc_hd__clkbuf_1
X_276_ _276_/A vssd1 vccd1 _276_/Y sky130_fd_sc_hd__inv_2
XFILLER_53_84 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_41_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_68_159 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_68_148 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_68_126 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_17_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_212 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_201 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_99_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_99_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_59_115 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_58_18 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_101_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_74_118 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_90_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_82_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_23_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_99_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_48_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_2_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_2_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_259_ _449_/Q vssd1 vccd1 _449_/D sky130_fd_sc_hd__clkinv_2
X_328_ _350_/A _493_/Q _494_/Q vssd1 vccd1 _328_/Y sky130_fd_sc_hd__nand3_1
XFILLER_14_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_96_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_15 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_20_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_20_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_18_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_50_41 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_7_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_519 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_508 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_78_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__483__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__301__B1 _303_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_52_187 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_96_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_20_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_75_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_45_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_28_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_61_62 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__413__A _500_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_3_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_305 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_316 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_327 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_338 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_349 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_81_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_66_279 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_66_213 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_34_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_66_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_57_268 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__491__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_15_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_40_168 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xoutput32 _542_/X vssd1 vccd1 gray_clk_out[3] sky130_fd_sc_hd__buf_2
XANTENNA__233__A _397_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
Xoutput43 _554_/X vssd1 vccd1 read_out_I[1] sky130_fd_sc_hd__buf_2
XFILLER_0_253 vssd1 vccd1 sky130_fd_sc_hd__decap_3
Xoutput21 _536_/X vssd1 vccd1 clk_master_out sky130_fd_sc_hd__clkbuf_1
XFILLER_63_238 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_246 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_16_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_193 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_182 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_171 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_160 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_72_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_71_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_16_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_39_213 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_39_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_89_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_691 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_680 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_45_227 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_292_ _292_/A _292_/B vssd1 vccd1 _292_/Y sky130_fd_sc_hd__xnor2_2
X_430_ _434_/A vssd1 vccd1 _430_/Y sky130_fd_sc_hd__inv_2
X_361_ _359_/X _360_/Y _240_/X vssd1 vccd1 _362_/B sky130_fd_sc_hd__o21ai_1
XFILLER_42_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_13_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_67_83 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_3_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_559_ _559_/A vssd1 vccd1 _559_/X sky130_fd_sc_hd__clkbuf_1
XFILLER_27_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_19 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_50_274 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_88_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_77_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__230__B _504_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_85_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_413_ _500_/Q _501_/Q _413_/C vssd1 vccd1 _413_/Y sky130_fd_sc_hd__nor3_1
XFILLER_37_53 vssd1 vccd1 sky130_fd_sc_hd__decap_3
X_344_ _480_/Q _344_/B vssd1 vccd1 _480_/D sky130_fd_sc_hd__xnor2_1
X_275_ _473_/Q _474_/Q _547_/A vssd1 vccd1 _276_/A sky130_fd_sc_hd__mux2_1
XFILLER_53_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_53_41 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_76_160 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_68_105 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_17_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__331__A _486_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_82_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_3_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_65_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_63 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_2_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_100_290 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_73_141 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_64_73 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_64_51 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_9_24 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_327_ _396_/A _350_/A vssd1 vccd1 _479_/D sky130_fd_sc_hd__xor2_1
Xfb_block_I.gs_f.fb_gray_selector_loop\\[7\\].t_buf.t_buf _488_/Q _276_/Y vssd1 vccd1
+ _324_/B sky130_fd_sc_hd__ebufn_4
X_258_ _258_/A vssd1 vccd1 _258_/X sky130_fd_sc_hd__buf_1
XFILLER_9_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_36_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_64_185 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_100_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__326__A _479_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_20_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_20_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_47_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_524__60 vssd1 vssd1 vccd1 vccd1 _471_/D _524__60/LO sky130_fd_sc_hd__conb_1
XFILLER_18_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_70_199 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_7_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_84 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XTAP_509 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__452__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA_output24_A _449_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_37_163 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_37_130 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_96_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_90_206 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_61_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_45_64 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_43_188 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_43_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__413__B _501_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__295__B1 _540_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_3_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_306 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_317 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_328 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_339 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_34_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_34_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_57_258 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_57_214 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_82_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_25_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_31_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
Xoutput33 _543_/X vssd1 vccd1 gray_clk_out[4] sky130_fd_sc_hd__buf_2
Xoutput44 _555_/X vssd1 vccd1 read_out_Q[0] sky130_fd_sc_hd__buf_2
Xoutput22 _537_/A vssd1 vccd1 cos_out sky130_fd_sc_hd__buf_2
XFILLER_0_287 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_0_276 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_0_221 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_63_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_63_206 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_16_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XPHY_194 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_183 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_172 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_161 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_150 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_71_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__509__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_16_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_92 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_97_81 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_54_217 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_39_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__334__A _370_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_670 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_89_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_692 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_681 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_45_239 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_291_ _291_/A _548_/A _551_/A vssd1 vccd1 _292_/B sky130_fd_sc_hd__and3_1
XANTENNA__239__A_N _507_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_360_ _360_/A _484_/Q _360_/C vssd1 vccd1 _360_/Y sky130_fd_sc_hd__nor3_1
XFILLER_53_283 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_42_65 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_13_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_13_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_67_95 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_67_62 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_3_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__419__A _503_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_558_ _558_/A vssd1 vccd1 _558_/X sky130_fd_sc_hd__buf_2
XANTENNA__481__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_66_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_489_ _311_/Y _489_/D _557_/A vssd1 vccd1 _489_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_8_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_86_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__329__A _479_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_27_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_50_286 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_50_231 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_10_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_35_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__230__C _505_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_412_ _501_/Q _412_/B vssd1 vccd1 _501_/D sky130_fd_sc_hd__xnor2_1
XFILLER_41_220 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_274_ _274_/A vssd1 vccd1 _274_/Y sky130_fd_sc_hd__inv_2
X_343_ _328_/Y _329_/X _392_/A vssd1 vccd1 _344_/B sky130_fd_sc_hd__a21o_1
XFILLER_78_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__421__B _421_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_76_172 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_17_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_220 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_101_225 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_74_109 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_59_139 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_82_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_183 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_90_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__225__C _498_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_48_42 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_0_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_0_49 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_64_85 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
X_326_ _479_/Q vssd1 vccd1 _350_/A sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_9_36 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_9_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
X_257_ _447_/Q _448_/Q _257_/S vssd1 vccd1 _258_/A sky130_fd_sc_hd__mux2_2
XFILLER_50_6 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_96_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_89_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_20_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_20_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_87_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_70_167 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_70_145 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_70_101 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_11_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_34_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__252__A _252_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_50_54 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_7_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_7_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_59_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_59_41 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA_fb_block_I.gs_f.fb_gray_selector_loop\\[7\\].t_buf.t_buf_A _488_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XFILLER_38_109 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_93_237 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_75_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_61_189 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_309_ _283_/Y _295_/X _302_/Y _308_/Y _305_/Y vssd1 vccd1 _310_/B sky130_fd_sc_hd__a32o_1
XANTENNA__492__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_69_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_37_142 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__337__A _479_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_52_112 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__509__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_90_218 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_43_156 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__413__C _413_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_6_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_66_226 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__295__A1 _303_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_307 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_318 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_329 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_96_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__286__A1 _283_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_65_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_262 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_15_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
Xoutput34 _544_/X vssd1 vccd1 gray_clk_out[5] sky130_fd_sc_hd__buf_2
Xoutput23 _537_/X vssd1 vccd1 cos_outb sky130_fd_sc_hd__buf_2
XANTENNA_ro_block_Q.ro_pol_eve.tribuf.t_buf_A _320_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
Xfb_block_Q.gs_f.fb_gray_selector_loop\\[5\\].t_buf.t_buf _507_/Q _272_/Y vssd1 vccd1
+ _394_/B sky130_fd_sc_hd__ebufn_8
Xoutput45 _556_/X vssd1 vccd1 read_out_Q[1] sky130_fd_sc_hd__buf_2
XFILLER_56_31 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_226 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_72_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_71_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA_input16_A no_ones_below_in[2] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_56_281 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_56_42 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_16_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XPHY_195 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_184 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_173 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_162 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_151 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_72_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_140 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_31_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__440__A _548_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_100_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_47_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_47_270 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_39_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_11_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_62_262 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_62_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_62_240 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__334__B _487_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_97_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_693 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_682 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_671 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_660 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_89_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_input8_A gray_clk_in[4] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__350__A _350_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__228__C _498_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_45_207 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_53_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_42_88 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_13_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_3_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_74 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_67_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_29_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__419__B _419_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_488_ _311_/Y _488_/D _557_/A vssd1 vccd1 _488_/Q sky130_fd_sc_hd__dfrtp_1
X_557_ _557_/A vssd1 vccd1 _557_/X sky130_fd_sc_hd__clkbuf_1
XFILLER_59_3 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_8_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__329__B _493_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_35_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__345__A _398_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_50_298 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_35_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_88_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_490 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__230__D _419_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__239__B _239_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_342_ _492_/Q _335_/Y _341_/X _384_/A vssd1 vccd1 _392_/A sky130_fd_sc_hd__o211ai_2
XFILLER_53_21 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_411_ _421_/A _411_/B vssd1 vccd1 _412_/B sky130_fd_sc_hd__nand2_1
XFILLER_26_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_273_ _471_/Q _472_/Q _546_/A vssd1 vccd1 _274_/A sky130_fd_sc_hd__mux2_1
XANTENNA__255__A _398_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_5_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_68_118 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_94_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_76_184 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__446__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_17_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__374__B_N _383_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_32_232 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_248 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_82_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_99_17 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_48_21 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_73_132 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_64_64 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_64_31 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_58_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_58_162 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_80_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_325_ _325_/A vssd1 vccd1 _460_/D sky130_fd_sc_hd__clkbuf_1
XFILLER_9_48 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_14_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_256_ _511_/Q _256_/B vssd1 vccd1 _511_/D sky130_fd_sc_hd__xor2_1
Xclkbuf_1_1_0_gray_tree.sine_cell2.eff_gray.d clkbuf_0_gray_tree.sine_cell2.eff_gray.d/X
+ vssd1 vccd1 _446_/D sky130_fd_sc_hd__clkbuf_2
XFILLER_49_140 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_100_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__494__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_87_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_70_179 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_88 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_7_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_11_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_93_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_257 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_93_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_515__51 vssd1 vssd1 vccd1 vccd1 _462_/D _515__51/LO sky130_fd_sc_hd__conb_1
X_308_ _543_/A _283_/Y _297_/X _303_/X vssd1 vccd1 _308_/Y sky130_fd_sc_hd__o31ai_1
X_239_ _507_/Q _239_/B vssd1 vccd1 _239_/X sky130_fd_sc_hd__and2b_1
XANTENNA__443__A _443_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_41_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_37_154 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_37_121 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_60_190 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__337__B _453_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_1_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__353__A _360_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_4_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_216 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_75_205 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_83_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_75_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_146 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_43_135 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_43_113 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_28_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_61 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_61_21 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_6_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_308 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_319 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_66_238 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__295__A2 _303_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_42_190 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_89_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__348__A _481_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_65_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_25_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_274 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_149 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_15_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xoutput35 _545_/X vssd1 vccd1 gray_clk_out[6] sky130_fd_sc_hd__buf_2
Xoutput46 _557_/X vssd1 vccd1 rstb_out sky130_fd_sc_hd__buf_2
Xoutput24 _449_/Q vssd1 vccd1 div2out sky130_fd_sc_hd__buf_2
XFILLER_31_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_152 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_72_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_141 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_130 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_56_87 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_31_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_31_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_196 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_185 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_174 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_163 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_72_97 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_47_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_39_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_62_274 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_290__5 _279_/S vssd1 vccd1 _477_/CLK sky130_fd_sc_hd__inv_2
XFILLER_89_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__350__B _453_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__334__C _488_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_7_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_694 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_683 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_672 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_661 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_89_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_650 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_53_263 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_13_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_13_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__541__A _541_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_3_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_44_230 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_29_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_556_ _556_/A vssd1 vccd1 _556_/X sky130_fd_sc_hd__clkbuf_1
X_487_ _311_/Y _487_/D _557_/A vssd1 vccd1 _487_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_8_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__329__C _494_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_12_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_491 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_480 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_37_45 vssd1 vccd1 sky130_fd_sc_hd__decap_8
X_410_ _407_/Y _226_/C _500_/Q vssd1 vccd1 _411_/B sky130_fd_sc_hd__mux2_1
X_272_ _272_/A vssd1 vccd1 _272_/Y sky130_fd_sc_hd__clkinv_2
X_341_ _489_/Q _490_/Q _491_/Q _382_/C _389_/A vssd1 vccd1 _341_/X sky130_fd_sc_hd__a41o_1
XANTENNA__255__B _398_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__536__A _536_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_5_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_78_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_141 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_91_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__486__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_71_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_539_ _539_/A vssd1 vccd1 _539_/X sky130_fd_sc_hd__clkbuf_1
XFILLER_32_244 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_32_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_fb_block_I.gs_f.fb_gray_selector_loop\\[2\\].t_buf.t_buf_A _493_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XFILLER_59_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_82_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_67_196 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_82_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_99_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_48_33 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_73_177 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_73_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_64_43 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_80_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_255_ _398_/A _398_/B _398_/C vssd1 vccd1 _256_/B sky130_fd_sc_hd__and3_1
X_324_ _557_/A _324_/B vssd1 vccd1 _325_/A sky130_fd_sc_hd__and2_1
XFILLER_14_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_9_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__304__A1 _543_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_70_114 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_70_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_12 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_11_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_10 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_3 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_93_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_307_ _546_/A _307_/B vssd1 vccd1 _537_/A sky130_fd_sc_hd__xnor2_2
X_530__66 vssd1 vssd1 vccd1 vccd1 _467_/D _530__66/LO sky130_fd_sc_hd__conb_1
X_238_ _506_/Q _507_/Q _505_/Q _238_/D vssd1 vccd1 _248_/C sky130_fd_sc_hd__and4_1
XFILLER_6_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_69_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_203 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_34_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__461__CLK _298_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__337__C _481_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_52_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_20_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_40 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_45_89 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_43_103 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_28_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_28_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_73 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__544__A _544_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_61_33 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__295__A3 _303_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_309 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_86_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_19_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA_output22_A _537_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__484__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_72_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_106 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_15_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_286 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xoutput25 _538_/A vssd1 vccd1 fb1_I sky130_fd_sc_hd__buf_2
Xoutput36 _546_/X vssd1 vccd1 gray_clk_out[7] sky130_fd_sc_hd__buf_2
Xoutput47 output47/A vssd1 vccd1 sin_out sky130_fd_sc_hd__clkbuf_1
XFILLER_0_213 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_31_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__539__A _539_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XPHY_175 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_164 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_153 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_72_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_142 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_131 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_120 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_197 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_186 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_98_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_97_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_207__1 _427__3/A vssd1 vccd1 _207__1/Y sky130_fd_sc_hd__inv_2
XPHY_0 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_62_286 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_290__6 _279_/S vssd1 vccd1 _292_/A sky130_fd_sc_hd__inv_2
XANTENNA__334__D _366_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_22_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__350__C _481_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_7_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_695 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_684 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_673 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_662 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_651 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_640 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__359__A _360_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_53_220 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_21_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_555_ _555_/A vssd1 vccd1 _555_/X sky130_fd_sc_hd__clkbuf_1
XFILLER_44_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_36_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_486_ _311_/Y _486_/D _557_/A vssd1 vccd1 _486_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_44_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_8_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_94_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_50_256 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_10_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_12_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_492 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_481 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_470 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_18_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_340_ _492_/Q vssd1 vccd1 _389_/A sky130_fd_sc_hd__inv_2
X_271_ _469_/Q _470_/Q _545_/A vssd1 vccd1 _272_/A sky130_fd_sc_hd__mux2_1
XFILLER_53_34 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_26_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_5_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_538_ _538_/A vssd1 vccd1 _538_/X sky130_fd_sc_hd__clkbuf_1
XFILLER_94_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_76_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_64_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__455__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_469_ _283_/Y _469_/D _214_/Y vssd1 vccd1 _469_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_32_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_99_289 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_99_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_4_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_67_175 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_67_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_67_120 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_67_131 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xfb_block_I.gs_f.fb_gray_selector_loop\\[4\\].t_buf.t_buf _491_/Q _270_/Y vssd1 vccd1
+ _324_/B sky130_fd_sc_hd__ebufn_8
XFILLER_82_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_23_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_100_261 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_48_45 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__547__A _547_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_73_189 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_64_77 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_14_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_80_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_323_ _323_/A vssd1 vccd1 _323_/X sky130_fd_sc_hd__clkbuf_2
X_254_ _508_/Q _509_/Q _248_/C _252_/A vssd1 vccd1 _398_/C sky130_fd_sc_hd__a31o_1
XFILLER_13_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_64_112 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_64_101 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_49_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__304__A2 _545_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_9_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_87_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_18_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_55_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_55_134 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_35 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_24 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_11_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_22 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__497__SET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__231__A1 _505_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_306_ _545_/A _295_/X _302_/Y _304_/Y _305_/Y vssd1 vccd1 _307_/B sky130_fd_sc_hd__a32o_1
X_237_ _507_/Q _237_/B vssd1 vccd1 _507_/D sky130_fd_sc_hd__xnor2_1
XFILLER_69_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_215 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_92_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_77_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_1_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_20_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_29_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_85 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_101_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_83_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_61_12 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_45_57 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_43_126 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_28_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_61_45 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_6_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_19_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_65_240 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__480__SET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_80_298 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_80_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_129 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_15_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__364__B _364_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_31_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xoutput37 _547_/X vssd1 vccd1 gray_clk_out[8] sky130_fd_sc_hd__buf_2
Xoutput48 _558_/X vssd1 vccd1 sin_outb sky130_fd_sc_hd__clkbuf_1
Xoutput26 _539_/A vssd1 vccd1 fb1_Q sky130_fd_sc_hd__buf_2
XFILLER_0_225 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_0_236 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_56_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_56_273 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_56_262 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_56_56 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_218 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_198 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_187 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_176 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_165 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XANTENNA__555__A _555_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XPHY_154 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_72_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XPHY_143 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_132 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_121 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_110 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_21_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__451__CLK input17/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_47_240 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_62_298 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_62_232 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_62_210 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_1 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_94_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_15_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_652 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_641 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_630 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA_fb_block_Q.gs_f.fb_gray_selector_loop\\[1\\].t_buf.t_buf_A _511_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__361__B1 _240_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_696 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_685 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_674 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_663 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__359__B _484_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__416__A1 _502_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_38_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_26_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_53_276 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_88_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_67_77 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__474__CLK _547_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__502__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_485_ _311_/Y _485_/D _557_/A vssd1 vccd1 _485_/Q sky130_fd_sc_hd__dfrtp_1
Xclkbuf_1_1_0__039_ clkbuf_0__039_/X vssd1 vccd1 _427__3/A sky130_fd_sc_hd__clkbuf_2
XANTENNA_input14_A no_ones_below_in[0] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_44_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_554_ _554_/A vssd1 vccd1 _554_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_8_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_12_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__343__B1 _392_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_94_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_50_268 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_35_287 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__497__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_493 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_482 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_471 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_460 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA_input6_A gray_clk_in[2] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_41_202 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_26_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_270_ _270_/A vssd1 vccd1 _270_/Y sky130_fd_sc_hd__clkinv_2
XFILLER_41_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_5_103 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_78_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_154 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_76_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_537_ _537_/A vssd1 vccd1 _537_/X sky130_fd_sc_hd__clkbuf_1
XFILLER_94_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_468_ _544_/A _468_/D _434_/Y vssd1 vccd1 _468_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_57_3 vssd1 vccd1 sky130_fd_sc_hd__decap_3
X_399_ _497_/Q _399_/B vssd1 vccd1 _497_/D sky130_fd_sc_hd__xor2_1
XFILLER_101_207 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_99_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_67_143 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_23_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_2_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_100_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_100_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_58_187 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_48_57 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_24 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XTAP_290 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_64_67 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_322_ _435_/A _557_/A vssd1 vccd1 _323_/A sky130_fd_sc_hd__and2_1
XFILLER_9_18 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_80_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_253_ _509_/Q _249_/B _252_/A vssd1 vccd1 _398_/B sky130_fd_sc_hd__o21ai_1
XFILLER_13_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_190 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_9_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_95_260 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_55_113 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_18_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_70_105 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_11_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_50_69 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_47 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__383__A _383_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_11_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_34 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_75_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_61_116 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_124 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__231__A2 _238_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__293__A _543_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_305_ _540_/A vssd1 vccd1 _305_/Y sky130_fd_sc_hd__inv_2
X_236_ _396_/A _236_/B vssd1 vccd1 _237_/B sky130_fd_sc_hd__nand2_1
XFILLER_6_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_6_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_124 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_37_113 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_77_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_521__57 vssd1 vssd1 vccd1 vccd1 _512_/D _521__57/LO sky130_fd_sc_hd__conb_1
XFILLER_29_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__378__A _383_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_45_47 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_101_97 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_61_57 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_3_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_86_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_19_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xfb_block_Q.gs_f.fb_gray_selector_loop\\[2\\].t_buf.t_buf _510_/Q _266_/Y vssd1 vccd1
+ _394_/B sky130_fd_sc_hd__ebufn_8
XFILLER_19_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_219_ _428_/A vssd1 vccd1 _219_/Y sky130_fd_sc_hd__inv_2
XFILLER_65_252 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_25_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_80_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_15_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xoutput27 _538_/X vssd1 vccd1 fb2_I sky130_fd_sc_hd__buf_2
Xoutput38 _548_/X vssd1 vccd1 gray_clk_out[9] sky130_fd_sc_hd__buf_2
XFILLER_56_13 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xoutput49 _559_/X vssd1 vccd1 ud_en_out sky130_fd_sc_hd__buf_2
XFILLER_0_248 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_56_24 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_100 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_199 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_188 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_177 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_166 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_155 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_144 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_133 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_122 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_111 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_21_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_47_252 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_90 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__449__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XPHY_2 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_15_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_7_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_30_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_163 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_686 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_675 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_664 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_653 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_642 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_631 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_620 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_697 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_53_255 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__359__C _359_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__416__A2 _227_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_26_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__391__A _479_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__375__B _375_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_42_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_89 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_83_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_484_ _311_/Y _484_/D _557_/A vssd1 vccd1 _484_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_44_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_44_200 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_553_ _553_/A vssd1 vccd1 _553_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_8_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_12_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_7 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_94_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_12_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_494 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_483 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_472 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_461 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_450 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_37_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__386__A _491_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
Xro_block_I.ro_pol.tribuf.t_buf _316_/X _282_/Y vssd1 vccd1 _553_/A sky130_fd_sc_hd__ebufn_2
XFILLER_41_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_94_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_144 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_76_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__296__A _303_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_27_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_467_ _303_/D _467_/D _215_/Y vssd1 vccd1 _467_/Q sky130_fd_sc_hd__dfrtp_1
X_398_ _398_/A _398_/B _398_/C _398_/D vssd1 vccd1 _399_/B sky130_fd_sc_hd__and4_1
XFILLER_43_91 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_536_ _536_/A vssd1 vccd1 _536_/X sky130_fd_sc_hd__buf_2
XFILLER_32_214 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_99_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_4_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_4_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__464__CLK _542_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_23_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_158 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_73_147 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_527__63 vssd1 vssd1 vccd1 vccd1 _469_/D _527__63/LO sky130_fd_sc_hd__conb_1
XFILLER_48_69 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_36 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_280 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_291 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_64_57 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_321_ _321_/A vssd1 vccd1 _321_/X sky130_fd_sc_hd__clkbuf_1
X_252_ _252_/A _252_/B vssd1 vccd1 _510_/D sky130_fd_sc_hd__xnor2_1
XFILLER_1_140 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_64_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__487__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_9_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_87_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_95_272 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA__383__B _490_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_11_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_34_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_46_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_91_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_304_ _543_/A _545_/A _297_/X _303_/X vssd1 vccd1 _304_/Y sky130_fd_sc_hd__o31ai_1
X_235_ _397_/A _505_/Q _238_/D _239_/B vssd1 vccd1 _236_/B sky130_fd_sc_hd__a31o_1
XFILLER_6_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_6_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_31 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_92_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_92_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__502__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_20_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__378__B _382_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_45_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_32 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_101_21 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__394__A _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_86_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_66_209 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__288__B _551_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_59_283 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_59_261 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_3_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_19_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_74_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_42_172 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_42_161 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_19_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_19_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_35_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_218_ _428_/A vssd1 vccd1 _218_/Y sky130_fd_sc_hd__inv_2
XFILLER_32_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_256 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_80_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_33_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
Xoutput28 _539_/X vssd1 vccd1 fb2_Q sky130_fd_sc_hd__buf_2
Xoutput39 _550_/X vssd1 vccd1 no_ones_below_out[0] sky130_fd_sc_hd__buf_2
XFILLER_31_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__389__A _389_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
Xclkbuf_1_1_0_net47 clkbuf_0_net47/X vssd1 vccd1 _558_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_71_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_71_201 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_134 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_123 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_56_242 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_112 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_101 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_16_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_189 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_178 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_167 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_156 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_145 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_98_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_98 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__299__A _542_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_62_223 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA_output20_A _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__489__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_62_256 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_3 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_15_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_22_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_153 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_30_175 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_698 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_97_131 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_687 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_676 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_665 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_654 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_643 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_632 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_621 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_610 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_53_289 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_38_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_38_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__391__B _493_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_42_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_88_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_68 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_67_57 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_44_212 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__511__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_552_ _552_/A vssd1 vccd1 _552_/X sky130_fd_sc_hd__clkbuf_1
X_483_ _311_/Y _483_/D _557_/A vssd1 vccd1 _483_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_44_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_12_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_12_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_35_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_50_248 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_85_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_495 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_484 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_473 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_462 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_451 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_440 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_37_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_53_59 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_53_15 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__386__B _386_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_41_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_26_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_5_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_91_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__296__B _303_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_17_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_27_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_397_ _397_/A _511_/Q vssd1 vccd1 _398_/D sky130_fd_sc_hd__xnor2_1
X_466_ _543_/A _466_/D _433_/Y vssd1 vccd1 _466_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_43_70 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_99_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_101 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__416__B1_N _419_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_4_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_4_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_58_112 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_15 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_100_253 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_73_126 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__397__A _397_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_270 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_281 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_292 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_251_ _248_/X _249_/Y _398_/A vssd1 vccd1 _252_/B sky130_fd_sc_hd__o21a_1
X_320_ _320_/A _320_/B vssd1 vccd1 _321_/A sky130_fd_sc_hd__or2_1
XFILLER_13_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_89_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA_clkbuf_0_net47_A _310_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_89_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_49_189 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_1_152 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_54_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__457__D _457_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_449_ _428_/Y _449_/D _557_/A vssd1 vccd1 _449_/Q sky130_fd_sc_hd__dfrtp_4
XFILLER_13_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_55_159 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_18_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__383__C _383_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_86_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_46_115 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_104 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_7 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_234_ _397_/A _243_/D vssd1 vccd1 _239_/B sky130_fd_sc_hd__nor2_1
X_303_ _303_/A _303_/B _303_/C _303_/D vssd1 vccd1 _303_/X sky130_fd_sc_hd__or4_1
XFILLER_6_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_24_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__454__CLK input17/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
Xclkbuf_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out
+ _258_/X vssd1 vccd1 clkbuf_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out/X
+ sky130_fd_sc_hd__clkbuf_16
XFILLER_6_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_37_148 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_65_90 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_60_173 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_45_192 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_29_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_68_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__394__B _394_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_45_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_118 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_61_15 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_3_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_19_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_42_184 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_27_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_217_ _428_/A vssd1 vccd1 _217_/Y sky130_fd_sc_hd__inv_2
XFILLER_25_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xoutput29 _549_/X vssd1 vccd1 gray_clk_out[10] sky130_fd_sc_hd__clkbuf_1
XFILLER_0_228 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__389__B _389_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XPHY_157 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_146 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_71_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_135 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_124 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_113 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_102 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_24_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_179 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_168 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_21_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_97_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_87_5 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_62_268 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_62_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_4 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_30_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_187 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XTAP_600 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_699 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_97_143 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_121 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_97_110 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XTAP_688 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_677 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_666 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_655 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_644 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_633 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_622 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_611 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_38_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_53_246 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_53_235 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_38_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_47 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_83_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_44_224 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_551_ _551_/A vssd1 vccd1 _551_/X sky130_fd_sc_hd__clkbuf_2
X_482_ _311_/Y _482_/D _557_/A vssd1 vccd1 _482_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_12_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_12_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_35_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_92_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_441 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_430 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_85_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_496 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_485 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_474 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_463 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_452 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_37_39 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_53_27 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_41_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xfb_block_I.gs_f.fb_gray_selector_loop\\[1\\].t_buf.t_buf _494_/Q _264_/Y vssd1 vccd1
+ _324_/B sky130_fd_sc_hd__ebufn_8
XANTENNA_input12_A gray_clk_in[8] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_91_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_465_ _303_/C _465_/D _217_/Y vssd1 vccd1 _465_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_17_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_396_ _396_/A _404_/A vssd1 vccd1 _496_/D sky130_fd_sc_hd__xor2_1
XFILLER_43_82 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_99_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_99_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_4_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_157 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_67_113 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_23_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_2_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_100_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_input4_A gray_clk_in[0] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_260 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_271 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_282 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_293 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_73_138 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_73_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__397__B _511_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_64_37 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_64_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_81_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_250_ _559_/A vssd1 vccd1 _398_/A sky130_fd_sc_hd__dlymetal6s2s_1
XANTENNA_fb_block_I.gs_f.fb_gray_selector_loop\\[8\\].t_buf.t_buf_A _487_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XFILLER_89_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_518__54 vssd1 vssd1 vccd1 vccd1 _459_/D _518__54/LO sky130_fd_sc_hd__conb_1
XFILLER_1_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_72_160 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_57_190 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_448_ _257_/S _448_/D _557_/A vssd1 vccd1 _448_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_70_91 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_379_ _383_/A _383_/C _378_/Y vssd1 vccd1 _380_/B sky130_fd_sc_hd__o21ai_1
XFILLER_55_3 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_13_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_70_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_34_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_59 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_75_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_61_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_302_ _542_/A _296_/Y _301_/X _540_/A vssd1 vccd1 _302_/Y sky130_fd_sc_hd__o211ai_1
X_233_ _397_/A _233_/B vssd1 vccd1 _506_/D sky130_fd_sc_hd__xnor2_1
XFILLER_6_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_40_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_6_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_27_7 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_92_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_1_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA_output43_A _554_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_37_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_68_230 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_101_67 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_51_141 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_45_39 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_36_193 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_101_78 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_61_27 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_3_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__505__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_59_274 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_19_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_19_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_19_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_42_141 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_27_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_216_ _435_/A vssd1 vccd1 _428_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_65_211 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_18_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_56_288 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_169 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_158 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_147 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_72_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_71_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_136 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_125 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_114 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_103 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_24_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_62_247 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_5 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_62_70 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_30_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_634 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_623 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_612 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_601 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__231__B1_N _243_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__498__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_97_155 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_689 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_678 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_667 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_656 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_645 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_53_214 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_38_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_38_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__467__CLK _303_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_42_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_88_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_67_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_481_ _311_/Y _481_/D _557_/A vssd1 vccd1 _481_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_44_236 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_550_ _550_/A vssd1 vccd1 _550_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_52_280 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_12_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_12_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__265__S _542_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_50_217 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_35_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_7_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_475 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_464 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_453 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_442 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_431 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_420 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_85_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_497 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_486 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
X_464_ _542_/A _464_/D _432_/Y vssd1 vccd1 _464_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_17_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_395_ _395_/A vssd1 vccd1 _495_/D sky130_fd_sc_hd__clkbuf_1
XFILLER_99_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_68_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_4_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_4_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_82_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_67_147 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__505__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_23_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_31_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_266 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_58_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XTAP_250 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_261 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_272 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_283 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_294 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_66_191 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_64_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_80_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_38_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_72_172 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_378_ _383_/A _382_/C vssd1 vccd1 _378_/Y sky130_fd_sc_hd__nand2_1
X_447_ _447_/CLK _447_/D _557_/A vssd1 vccd1 _447_/Q sky130_fd_sc_hd__dfrtp_1
X_533__69 vssd1 vssd1 vccd1 vccd1 _478_/D _533__69/LO sky130_fd_sc_hd__conb_1
XFILLER_13_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_20_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_62_5 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_95_242 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_48_191 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_29 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_18 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_78_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_16 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_86_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_86_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_232_ _396_/A _232_/B vssd1 vccd1 _233_/B sky130_fd_sc_hd__nand2_1
X_301_ _297_/X _300_/X _303_/C vssd1 vccd1 _301_/X sky130_fd_sc_hd__a21o_1
XFILLER_24_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_69_209 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_49_60 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_92_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_92_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_45_150 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA_output36_A _546_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__273__S _546_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_83_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_68_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_61_39 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_51_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_36_161 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_3_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_220 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__212__A _215_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_3_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_74_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_27_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_34_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_215_ _215_/A vssd1 vccd1 _215_/Y sky130_fd_sc_hd__inv_2
XFILLER_65_234 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__423__A_N _504_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_65_267 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xfb_block_I.gs_f.fb_gray_selector_loop\\[9\\].t_buf.t_buf _486_/Q _280__8/Y vssd1 vccd1
+ _324_/B sky130_fd_sc_hd__ebufn_4
XFILLER_71_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_159 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_148 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_72_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_137 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_126 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_115 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_104 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_24_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_47_234 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_47_278 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_46_50 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_6 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_7_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_97_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_668 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_657 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_646 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_635 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_624 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_613 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_602 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_30_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_679 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_38_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_38_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_61_270 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_21_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_101_9 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_88_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_67_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_83_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_480_ _311_/Y _480_/D _557_/A vssd1 vccd1 _480_/Q sky130_fd_sc_hd__dfstp_1
XFILLER_44_248 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_16_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_52_292 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_12_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_16_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_fb_block_Q.gs_f.fb_gray_selector_loop\\[7\\].t_buf.t_buf_A _505_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XFILLER_79_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_57_60 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_35_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__281__S _443_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_7_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_498 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_487 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_476 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_465 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_454 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_443 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_432 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_421 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_410 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__220__A _428_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_17_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_463_ _303_/B _463_/D _218_/Y vssd1 vccd1 _463_/Q sky130_fd_sc_hd__dfrtp_1
X_394_ _557_/A _394_/B vssd1 vccd1 _395_/A sky130_fd_sc_hd__and2_1
XFILLER_43_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_40_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_25_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_57_8 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_4_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_68_92 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__457__CLK input17/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_75_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_31_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__482__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__305__A _540_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_100_278 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_98_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_48_29 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XTAP_251 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_240 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_262 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_273 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_284 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_295 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_80_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_22_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__215__A _215_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_89_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_89_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_1_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_72_184 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_377_ _384_/A vssd1 vccd1 _421_/A sky130_fd_sc_hd__clkbuf_1
X_446_ _257_/S _446_/D _557_/A vssd1 vccd1 _446_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_13_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_63_140 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_86_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_28 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_91_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__385__B1 _384_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_231_ _505_/Q _238_/D _243_/D vssd1 vccd1 _232_/B sky130_fd_sc_hd__a21bo_1
X_300_ _298_/Y _544_/A _303_/B vssd1 vccd1 _300_/X sky130_fd_sc_hd__a21o_1
XFILLER_10_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_53 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_24_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_49_94 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_49_83 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_65_82 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_65_60 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_81_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_60_3 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_429_ _435_/A vssd1 vccd1 _434_/A sky130_fd_sc_hd__clkbuf_2
XANTENNA__300__B1 _303_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_83_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_68_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xinput1 clkdiv2 vssd1 vccd1 _209_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_36_173 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_3_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_86_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_254 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_10_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_42_154 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_214_ _215_/A vssd1 vccd1 _214_/Y sky130_fd_sc_hd__inv_2
XFILLER_51_84 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_51_73 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_51_62 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_65_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_65_246 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__495__D _495_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_18_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_71_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_116 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_105 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_24_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_149 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_138 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_127 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_24_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__223__A _384_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_47_246 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__490__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_62_50 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_55_290 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_46_62 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_7 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_97_113 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XTAP_669 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_658 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_647 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_636 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_625 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_614 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_603 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_39 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_29_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_83_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__218__A _428_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_16_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_32_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_400 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_85_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_499 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_488 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_477 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_466 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_455 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_444 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_433 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_422 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_411 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_41_208 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_94_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xfb_block_Q.gs_f.fb_gray_selector_loop\\[7\\].t_buf.t_buf _505_/Q _276_/Y vssd1 vccd1
+ _394_/B sky130_fd_sc_hd__ebufn_4
XFILLER_17_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_17_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_462_ _541_/A _462_/D _431_/Y vssd1 vccd1 _462_/Q sky130_fd_sc_hd__dfrtp_1
X_393_ _494_/Q _393_/B vssd1 vccd1 _494_/D sky130_fd_sc_hd__xnor2_1
XFILLER_43_74 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_43_63 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_25_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_4_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_4_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__321__A _321_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_241 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_230 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__451__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_252 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_263 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_274 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_285 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_296 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_89_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_13_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_49_116 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_38_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_input10_A gray_clk_in[6] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_72_141 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_38_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_70_94 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_445_ _445_/CLK _445_/D _557_/A vssd1 vccd1 _445_/Q sky130_fd_sc_hd__dfrtp_1
X_376_ _383_/A _376_/B vssd1 vccd1 _489_/D sky130_fd_sc_hd__xnor2_1
XFILLER_9_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_79_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_55_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_171 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA_input2_A comp_high_I vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_86_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__244__B1_N _249_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_91_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_54_163 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_54_141 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_39_171 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_39_160 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA__226__A _500_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_230_ _503_/Q _504_/Q _505_/Q _419_/B vssd1 vccd1 _243_/D sky130_fd_sc_hd__or4_1
XFILLER_10_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_97 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_40_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_222 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_49_40 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_45_163 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_428_ _428_/A vssd1 vccd1 _428_/Y sky130_fd_sc_hd__inv_2
XFILLER_81_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_359_ _360_/A _484_/Q _359_/C vssd1 vccd1 _359_/X sky130_fd_sc_hd__and3_1
XFILLER_53_3 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_68_200 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__300__A1 _298_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_5_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xinput2 comp_high_I vssd1 vccd1 _453_/D sky130_fd_sc_hd__clkbuf_2
XFILLER_83_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_68_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_36_185 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA__367__A1 _370_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_86_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_42_100 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_213_ _215_/A vssd1 vccd1 _213_/Y sky130_fd_sc_hd__inv_2
XFILLER_51_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_42_199 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xclkbuf_1_1_0_gray_tree.gray.eff_gray.d clkbuf_0_gray_tree.gray.eff_gray.d/X vssd1
+ vccd1 _448_/D sky130_fd_sc_hd__clkbuf_2
XFILLER_2_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_2_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_65_258 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_65_203 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_18_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_72_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_139 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_128 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_117 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_106 vssd1 vccd1 sky130_fd_sc_hd__decap_3
X_444__4 _284_/S vssd1 vccd1 _444__4/Y sky130_fd_sc_hd__inv_2
XFILLER_24_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_24_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_97_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_47_258 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_46_85 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_46_74 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_41 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_46_96 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_8 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_15_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_7_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_125 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XTAP_659 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_648 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_87_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_637 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_626 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_615 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_604 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_16_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__508__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_61_283 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__324__A _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_21_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_44_206 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_29_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__234__A _397_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_32_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_79_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__409__A _500_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_57_84 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_35_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_423 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_412 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_401 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_489 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_478 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_467 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_456 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_445 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_434 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__480__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_94_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_76_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_69_191 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_461_ _298_/Y _461_/D _219_/Y vssd1 vccd1 _461_/Q sky130_fd_sc_hd__dfrtp_1
XANTENNA__229__A _500_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_17_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_32_209 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_392_ _392_/A _392_/B vssd1 vccd1 _393_/B sky130_fd_sc_hd__or2_1
XFILLER_43_97 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_40_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_40_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_4_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_4_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_98_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_242 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_231 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_220 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_253 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_264 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_275 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_66_161 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_14_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_286 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_297 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__491__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_80_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_89_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_1_113 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_38_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_38_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__508__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_513_ _443_/A _513_/D _444__4/Y vssd1 vccd1 _513_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_70_73 vssd1 vccd1 sky130_fd_sc_hd__decap_3
X_375_ _375_/A _375_/B vssd1 vccd1 _376_/B sky130_fd_sc_hd__nand2_1
XFILLER_9_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_95_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_79_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__422__A _504_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_95_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__332__A _479_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_86_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_86_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_91_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_39_183 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__226__B _501_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_10_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_10_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_24_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__242__A _508_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_49_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_40_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_65_40 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_514__50 vssd1 vssd1 vccd1 vccd1 _463_/D _514__50/LO sky130_fd_sc_hd__conb_1
XFILLER_60_112 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_358_ _484_/Q _358_/B vssd1 vccd1 _484_/D sky130_fd_sc_hd__xnor2_1
X_289_ _289_/A vssd1 vccd1 _552_/A sky130_fd_sc_hd__clkbuf_1
XFILLER_68_289 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_68_212 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__300__A2 _544_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_5_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_28_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_91_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xinput3 comp_high_Q vssd1 vccd1 _457_/D sky130_fd_sc_hd__clkbuf_2
XFILLER_36_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__367__A2 _370_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_51_189 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_51_156 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__495__GATE_N _323_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_59_289 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_19_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__237__A _507_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_212_ _215_/A vssd1 vccd1 _212_/Y sky130_fd_sc_hd__inv_2
XFILLER_42_178 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_42_112 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__403__C _498_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_76_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_73_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_18_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_18_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_56_248 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__285__A1 _283_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_71_207 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_129 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_118 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_107 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_24_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_97_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_194 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XPHY_9 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_62_63 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_15_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_616 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_605 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_649 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_87_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_638 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_627 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_61_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_21_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__445__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_44_218 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_37_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_52_262 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__234__B _243_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_32_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_87_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_57_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_57_41 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_57_30 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__250__A _559_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_73_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_43_251 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__425__A _505_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_11_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_457 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_446 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_435 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_424 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_413 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_402 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_479 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_468 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_19_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__335__A _383_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_34_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_78_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_460_ _460_/D _323_/X vssd1 vccd1 _538_/A sky130_fd_sc_hd__dlxtn_1
X_391_ _479_/Q _493_/Q vssd1 vccd1 _392_/B sky130_fd_sc_hd__xor2_1
XANTENNA__229__B _501_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_25_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_27_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_40_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_4_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_4_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_4_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_90_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_98_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_243 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_232 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_221 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_210 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_254 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_265 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_276 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_287 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_298 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_66_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_66_184 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_13_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_38_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_1_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_154 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_374_ _382_/C _383_/C vssd1 vccd1 _375_/B sky130_fd_sc_hd__or2b_1
XANTENNA__388__B1 _398_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_54_53 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_54_42 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_512_ _443_/Y _512_/D _207__1/Y vssd1 vccd1 _512_/Q sky130_fd_sc_hd__dfrtp_1
X_443_ _443_/A vssd1 vccd1 _443_/Y sky130_fd_sc_hd__inv_2
XFILLER_9_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_70_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_62_9 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_55_8 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__470__CLK _545_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_95_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_48_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__332__B _453_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_5_91 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_39_140 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_40_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_77_202 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__493__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_49_75 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_49_31 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_6_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_65_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_81_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_357_ _375_/A _357_/B vssd1 vccd1 _358_/B sky130_fd_sc_hd__nand2_1
X_288_ _291_/A _551_/A vssd1 vccd1 _289_/A sky130_fd_sc_hd__and2_1
XFILLER_60_6 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_5_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_68_224 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xinput4 gray_clk_in[0] vssd1 vccd1 _443_/A sky130_fd_sc_hd__buf_2
XFILLER_91_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__327__B _350_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_51_113 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_36_121 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_36_143 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_86_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_246 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_59_235 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xfb_block_I.gs_f.fb_gray_selector_loop\\[6\\].t_buf.t_buf _489_/Q _274_/Y vssd1 vccd1
+ _324_/B sky130_fd_sc_hd__ebufn_4
XFILLER_59_268 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_211_ _215_/A vssd1 vccd1 _211_/Y sky130_fd_sc_hd__inv_2
XFILLER_51_21 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_42_146 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_35_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_2_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_73_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__428__A _428_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_18_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_18_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_409_ _500_/Q _409_/B vssd1 vccd1 _500_/D sky130_fd_sc_hd__xnor2_1
XFILLER_41_190 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__285__A2 _546_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_71_219 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__338__A _360_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XPHY_119 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_108 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_21_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_47_216 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_70_241 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA__248__A _508_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_15_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_7_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_639 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_628 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_617 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_606 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_61_252 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_61_230 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_21_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_21_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__485__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_29_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_52_230 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_37_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_29_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_52_274 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_8_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_87_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_263 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_11_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_469 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_458 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_447 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_436 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_425 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_414 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_403 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_21_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_19_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__335__B _490_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_94_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_390_ _493_/Q _392_/A vssd1 vccd1 _493_/D sky130_fd_sc_hd__xnor2_1
XANTENNA__229__C _502_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
Xclkbuf_0__039_ _206_/X vssd1 vccd1 clkbuf_0__039_/X sky130_fd_sc_hd__clkbuf_16
XFILLER_43_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_40_211 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_88 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_43_66 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_40_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_68_96 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_68_85 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_68_74 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_68_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xclkbuf_1_0_0__039_ clkbuf_0__039_/X vssd1 vccd1 _284_/S sky130_fd_sc_hd__clkbuf_2
XFILLER_4_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_4_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_90_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_75_141 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_90_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_244 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_233 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_222 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_211 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_255 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_266 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_277 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_288 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_299 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_144 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_81_133 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_81_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_66_174 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_535__71 vssd1 vssd1 vccd1 vccd1 _464_/D _535__71/LO sky130_fd_sc_hd__conb_1
XANTENNA__346__A _350_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_22_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_13_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_49_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_72_111 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_511_ _311_/Y _511_/D _557_/A vssd1 vccd1 _511_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_38_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_72_166 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_70_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__256__A _511_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_373_ _488_/Q _373_/B vssd1 vccd1 _488_/D sky130_fd_sc_hd__xnor2_1
X_442_ _442_/A vssd1 vccd1 _442_/Y sky130_fd_sc_hd__inv_2
XFILLER_9_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_95_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_48_141 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_0_192 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__379__A1 _383_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__332__C _481_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_54_188 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_77_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_214 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_65_97 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_65_86 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_60_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_287_ _547_/A vssd1 vccd1 _291_/A sky130_fd_sc_hd__inv_2
X_425_ _505_/Q _425_/B vssd1 vccd1 _505_/D sky130_fd_sc_hd__xnor2_1
X_356_ _353_/Y _359_/C _360_/A vssd1 vccd1 _357_/B sky130_fd_sc_hd__mux2_1
XANTENNA__363__B_N _366_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_5_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_83_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_68_236 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xinput5 gray_clk_in[1] vssd1 vccd1 _540_/A sky130_fd_sc_hd__buf_4
XFILLER_36_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_101_29 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_91_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_59_214 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_42_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_19_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_210_ _435_/A vssd1 vccd1 _215_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_51_33 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_51_11 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_2_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_2_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_65_228 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_58_280 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_18_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_80_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_408_ _226_/C _407_/Y _384_/X vssd1 vccd1 _409_/B sky130_fd_sc_hd__o21ai_1
XFILLER_18_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_339_ _486_/Q _487_/Q _488_/Q _370_/C vssd1 vccd1 _382_/C sky130_fd_sc_hd__and4_1
XFILLER_51_3 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__338__B _484_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_64_261 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_2_71 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_109 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XANTENNA__483__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_21_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_174 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_141 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_47_228 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_70_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__248__B _509_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_46_44 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_15_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_15_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_70_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_62_98 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_62_87 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_7_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_629 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_618 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_607 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__424__B1 _384_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_61_264 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_88_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_29_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__454__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_52_286 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__349__A _350_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_37_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_12_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_94_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__259__A _449_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA_input19_A ud_en vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_43_275 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__342__C1 _384_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_11_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_98_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
Xfb_block_Q.gs_f.fb_gray_selector_loop\\[4\\].t_buf.t_buf _508_/Q _270_/Y vssd1 vccd1
+ _394_/B sky130_fd_sc_hd__ebufn_8
XTAP_459 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_448 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_437 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_426 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_415 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_404 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_19_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__335__C _491_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_34_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_84_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_172 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_27_13 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__229__D _413_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_40_223 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__542__A _542_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_40_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].t_buf.t_buf_A _486_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XFILLER_68_64 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_68_53 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_90_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_84_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_31_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_98_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_223 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_212 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_98_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XTAP_245 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_234 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_256 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_267 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_278 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_289 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_156 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__346__B _453_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_13_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__362__A _485_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_22_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_89_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_1_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_1_116 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__537__A _537_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_72_178 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_72_145 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_72_123 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__388__A2 _335_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_441_ _442_/A vssd1 vccd1 _441_/Y sky130_fd_sc_hd__inv_2
XFILLER_54_66 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_54_33 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_510_ _311_/Y _510_/D _557_/A vssd1 vccd1 _510_/Q sky130_fd_sc_hd__dfrtp_1
X_372_ _370_/X _371_/X _240_/X vssd1 vccd1 _373_/B sky130_fd_sc_hd__o21ai_1
XFILLER_70_87 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_70_65 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA__256__B _256_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_54_88 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_9_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_9_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_13_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_70_98 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_95_248 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_237 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_95_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_0_182 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__379__A2 _383_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_63_189 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_81_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_71 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_54_112 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_39_131 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_77_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_45_101 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_85_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_65_76 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_60_148 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_45_178 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_45_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_424_ _238_/D _423_/X _384_/X vssd1 vccd1 _425_/B sky130_fd_sc_hd__o21ai_1
X_355_ _360_/A _355_/B vssd1 vccd1 _483_/D sky130_fd_sc_hd__xnor2_1
X_286_ _283_/Y _286_/A2 _286_/A3 _285_/Y vssd1 vccd1 _286_/Y sky130_fd_sc_hd__a31oi_2
XFILLER_68_248 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xinput6 gray_clk_in[2] vssd1 vccd1 _541_/A sky130_fd_sc_hd__buf_2
XFILLER_91_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_520__56 vssd1 vssd1 vccd1 vccd1 _458_/D _520__56/LO sky130_fd_sc_hd__conb_1
XFILLER_51_148 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__479__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_10_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_19_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_67_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_42_126 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_27_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_35_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_51_45 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_2_277 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_2_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_65_218 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_58_292 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_92_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_338_ _360_/A _484_/Q _485_/Q _359_/C vssd1 vccd1 _370_/C sky130_fd_sc_hd__and4_1
X_407_ _413_/C vssd1 vccd1 _407_/Y sky130_fd_sc_hd__inv_2
XPHY_90 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_18_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_33_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__501__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_269_ _467_/Q _468_/Q _544_/A vssd1 vccd1 _270_/A sky130_fd_sc_hd__mux2_1
XFILLER_56_218 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_44_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__338__C _485_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_64_273 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_49_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_2_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_21_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_99_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__370__A _370_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_101_186 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_47_207 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_56 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__545__A _545_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_70_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__248__C _248_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_62_44 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_55_284 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_15_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_7_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_619 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_608 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_46_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__424__A1 _238_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_280__7 _280__7/A vssd1 vccd1 _280__7/Y sky130_fd_sc_hd__inv_2
XFILLER_61_276 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_96_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__349__B _453_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__450__CLK input17/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
Xclkbuf_0_net47 _310_/Y vssd1 vccd1 clkbuf_0_net47/X sky130_fd_sc_hd__clkbuf_16
XANTENNA__365__A _370_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_52_298 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__494__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_37_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_16_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__351__B1 _240_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
Xclkbuf_1_0_0_net47 clkbuf_0_net47/X vssd1 vccd1 output47/A sky130_fd_sc_hd__clkbuf_2
XFILLER_20_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_57_22 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_28_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_7_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_405 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_78_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_449 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_438 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_427 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_416 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_19_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_34_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__335__D _383_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_84_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_25 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_57 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_40_235 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__496__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_4_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_165 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_16_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_246 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_235 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_224 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_213 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_257 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_268 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_279 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_13_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_1_128 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_135 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_440_ _548_/A vssd1 vccd1 _440_/Y sky130_fd_sc_hd__inv_2
X_371_ _487_/Q _371_/B vssd1 vccd1 _371_/X sky130_fd_sc_hd__and2b_1
XFILLER_54_12 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_526__62 vssd1 vssd1 vccd1 vccd1 _513_/D _526__62/LO sky130_fd_sc_hd__conb_1
XFILLER_9_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_13_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_95_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__511__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_74_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_39_154 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_24_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__373__A _488_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_6_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_59 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_49_34 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__548__A _548_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_85_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_77_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_65_66 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_49_67 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_45_124 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_45_113 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_19 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_354_ _359_/C _353_/Y _240_/X vssd1 vccd1 _355_/B sky130_fd_sc_hd__o21ai_1
XFILLER_53_190 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_423_ _504_/Q _423_/B vssd1 vccd1 _423_/X sky130_fd_sc_hd__and2b_1
XANTENNA__283__A _545_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_285_ _283_/Y _546_/A _286_/A2 _310_/A vssd1 vccd1 _285_/Y sky130_fd_sc_hd__a31oi_2
Xinput7 gray_clk_in[3] vssd1 vccd1 _542_/A sky130_fd_sc_hd__buf_4
XANTENNA__448__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_67_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_19_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_51_57 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_4_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_2_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_92_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_92_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_337_ _479_/Q _453_/Q _481_/Q _482_/Q vssd1 vccd1 _359_/C sky130_fd_sc_hd__and4_1
X_406_ _499_/Q _406_/B vssd1 vccd1 _499_/D sky130_fd_sc_hd__xnor2_1
XPHY_91 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_80 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_33_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_268_ _268_/A vssd1 vccd1 _268_/Y sky130_fd_sc_hd__clkinv_2
XFILLER_49_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_49_260 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_37_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__338__D _359_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_64_285 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_99_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__370__B _487_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_70_211 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_55_274 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_46_68 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_15_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_70_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_62_56 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_62_34 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_62_12 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA_fb_block_Q.gs_f.fb_gray_selector_loop\\[8\\].t_buf.t_buf_A _504_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XFILLER_15_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_11_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_53 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XTAP_609 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA_output25_A _538_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_99_5 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xinput10 gray_clk_in[6] vssd1 vccd1 _545_/A sky130_fd_sc_hd__buf_4
XANTENNA_fb_block_I.gs_f.fb_gray_selector_loop\\[4\\].t_buf.t_buf_A _491_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
X_280__8 _280__8/A vssd1 vccd1 _280__8/Y sky130_fd_sc_hd__inv_2
XFILLER_96_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__410__S _500_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__349__C _481_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_16_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_20_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__381__A _490_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__556__A _556_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_73_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_43_200 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_98_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_439 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_428 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_417 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_406 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_93_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_78_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_69_185 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_69_163 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_84_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__376__A _383_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_27_37 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_247 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_84_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_68_99 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_16_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_17_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_7 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_247 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_236 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_3_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_225 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_214 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_258 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_269 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_81_125 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA__251__B1 _398_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_13_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__306__B2 _305_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__306__A1 _545_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__463__CLK _303_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_370_ _370_/A _487_/Q _370_/C vssd1 vccd1 _370_/X sky130_fd_sc_hd__and3_1
XFILLER_54_24 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_13_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_70_78 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_95_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_0_173 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_499_ _311_/Y _499_/D _557_/A vssd1 vccd1 _499_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_67_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_8_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_39_177 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_39_122 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__486__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_54_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_24_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_40_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_49_57 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_49_46 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_49_13 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_92_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_81_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_422_ _504_/Q _422_/B vssd1 vccd1 _504_/D sky130_fd_sc_hd__xnor2_1
Xfb_block_I.gs_f.fb_gray_selector_loop\\[3\\].t_buf.t_buf _492_/Q _268_/Y vssd1 vccd1
+ _324_/B sky130_fd_sc_hd__ebufn_8
X_353_ _360_/C vssd1 vccd1 _353_/Y sky130_fd_sc_hd__inv_2
X_284_ _445_/Q _446_/Q _284_/S vssd1 vccd1 _284_/X sky130_fd_sc_hd__mux2_2
XFILLER_53_9 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xinput8 gray_clk_in[4] vssd1 vccd1 _543_/A sky130_fd_sc_hd__buf_4
XFILLER_68_206 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_39_7 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_51_117 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_44_191 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_10_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__488__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_19_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XANTENNA__384__A _384_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_42_106 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_27_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__501__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__559__A _559_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_92_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_405_ _403_/X _404_/Y _384_/X vssd1 vccd1 _406_/B sky130_fd_sc_hd__o21ai_1
X_267_ _465_/Q _466_/Q _543_/A vssd1 vccd1 _268_/A sky130_fd_sc_hd__mux2_1
X_336_ _483_/Q vssd1 vccd1 _360_/A sky130_fd_sc_hd__dlymetal6s2s_1
XPHY_92 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_41_172 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__294__A _544_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_41_161 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_81 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_25_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_70 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_64_231 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_49_272 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA__510__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_2_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_2_41 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_64_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_24_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__370__C _370_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_21_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_155 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_99_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_55_220 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_70_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_62_24 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_23_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_30_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_38_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_61_289 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_61_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
Xinput11 gray_clk_in[7] vssd1 vccd1 _546_/A sky130_fd_sc_hd__buf_6
X_319_ _456_/Q _454_/Q vssd1 vccd1 _320_/B sky130_fd_sc_hd__and2b_1
XFILLER_96_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_52_256 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_12_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_20_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_20_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xclkbuf_1_1_0__086_ clkbuf_0__086_/X vssd1 vccd1 _286_/A3 sky130_fd_sc_hd__clkbuf_2
XFILLER_43_212 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_28_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XANTENNA__291__B _548_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__342__A2 _335_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_7_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_429 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_418 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_407 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_78_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_6 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_34_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_69_197 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_69_120 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_84_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_43_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_27_49 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__392__A _392_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA_input17_A phi1b_dig vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_84_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_68_89 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_16_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_16_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_17_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__452__D _453_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_33_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_248 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_237 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_3_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_226 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_204 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_215 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_259 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_57_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_57_134 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__387__A _491_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_38_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_input9_A gray_clk_in[5] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_72_148 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_13_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_517__53 vssd1 vssd1 vccd1 vccd1 _461_/D _517__53/LO sky130_fd_sc_hd__conb_1
XANTENNA__297__A _303_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_498_ _311_/Y _498_/D _557_/A vssd1 vccd1 _498_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_44_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_94_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_79_281 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_39_189 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_39_101 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_62_192 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_40_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_49_25 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_85_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_590 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_65_57 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_65_46 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_65_35 vssd1 vccd1 sky130_fd_sc_hd__decap_3
X_421_ _421_/A _421_/B vssd1 vccd1 _422_/B sky130_fd_sc_hd__nand2_1
X_283_ _545_/A vssd1 vccd1 _283_/Y sky130_fd_sc_hd__clkinv_2
X_352_ _482_/Q _352_/B vssd1 vccd1 _482_/D sky130_fd_sc_hd__xnor2_1
XFILLER_14_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_76_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_68_218 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xinput9 gray_clk_in[5] vssd1 vccd1 _544_/A sky130_fd_sc_hd__buf_4
XANTENNA_fb_block_Q.gs_f.fb_gray_selector_loop\\[3\\].t_buf.t_buf_A _509_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__453__CLK input17/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_82_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_251 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__457__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_42_118 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_19_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_58_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
Xclkbuf_0_gray_tree.gray.eff_gray.d _292_/Y vssd1 vccd1 clkbuf_0_gray_tree.gray.eff_gray.d/X
+ sky130_fd_sc_hd__clkbuf_16
XFILLER_92_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_73_221 vssd1 vccd1 sky130_fd_sc_hd__decap_3
X_404_ _404_/A _457_/Q _498_/Q vssd1 vccd1 _404_/Y sky130_fd_sc_hd__nor3_1
XPHY_82 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_60 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_71 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XANTENNA__372__B1 _240_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_266_ _266_/A vssd1 vccd1 _266_/Y sky130_fd_sc_hd__clkinv_2
X_335_ _383_/A _490_/Q _491_/Q _383_/C vssd1 vccd1 _335_/Y sky130_fd_sc_hd__nor4_1
XPHY_93 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_41_184 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_41_81 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_25_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__460__D _460_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__476__CLK _548_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_64_210 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_49_240 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_2_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_17_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_101_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_46_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_55_298 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__354__B1 _240_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__499__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_11_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_232 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_61_246 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_61_213 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_287 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_14_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
Xinput12 gray_clk_in[8] vssd1 vccd1 _547_/A sky130_fd_sc_hd__clkbuf_4
X_318_ _318_/A vssd1 vccd1 _320_/A sky130_fd_sc_hd__clkbuf_1
X_249_ _509_/Q _249_/B vssd1 vccd1 _249_/Y sky130_fd_sc_hd__nor2_1
XFILLER_52_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_96_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_42_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_52_268 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_16_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xfb_block_Q.gs_f.fb_gray_selector_loop\\[1\\].t_buf.t_buf _511_/Q _264_/Y vssd1 vccd1
+ _394_/B sky130_fd_sc_hd__ebufn_8
XFILLER_20_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_20_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__460__GATE_N _323_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_28_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__291__C _551_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_7_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_7_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_98_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_419 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_408 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__371__A_N _487_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_8_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_4_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_75_135 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_75_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_3_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_205 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_249 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_238 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_227 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_216 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_138 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_81_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__251__A2 _249_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__306__A3 _302_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_89_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_38_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_97_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_72_105 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_57_113 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_80_171 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_13_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_13_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_95_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__297__B _542_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_0_120 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_0_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_71_171 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_532__68 vssd1 vssd1 vccd1 vccd1 _476_/D _532__68/LO sky130_fd_sc_hd__conb_1
XFILLER_63_116 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_44_70 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_60_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_497_ _311_/Y _497_/D _557_/A vssd1 vccd1 _497_/Q sky130_fd_sc_hd__dfstp_1
XFILLER_8_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XANTENNA__504__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_24_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_591 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_580 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__398__A _398_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_420_ _502_/Q _503_/Q _227_/D _423_/B vssd1 vccd1 _421_/B sky130_fd_sc_hd__a31o_1
X_351_ _349_/X _350_/Y _240_/X vssd1 vccd1 _352_/B sky130_fd_sc_hd__o21ai_1
XFILLER_38_190 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_81_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_282_ _282_/A vssd1 vccd1 _282_/Y sky130_fd_sc_hd__inv_2
XFILLER_5_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_30_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_39_81 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_36_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_549_ _549_/A vssd1 vccd1 _549_/X sky130_fd_sc_hd__buf_2
XFILLER_51_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_72_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_263 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_27_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_51_27 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_141 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_35_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_58_274 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_403_ _404_/A _457_/Q _498_/Q vssd1 vccd1 _403_/X sky130_fd_sc_hd__and3_1
XPHY_94 vssd1 vccd1 sky130_fd_sc_hd__decap_3
X_334_ _370_/A _487_/Q _488_/Q _366_/B vssd1 vccd1 _383_/C sky130_fd_sc_hd__or4_1
XPHY_83 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_50 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_61 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_72 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XANTENNA__372__A1 _370_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_265_ _463_/Q _464_/Q _542_/A vssd1 vccd1 _266_/A sky130_fd_sc_hd__mux2_1
XFILLER_41_196 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_281 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_66_90 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_64_255 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_64_244 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_17_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_46_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_55_266 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__354__A1 _359_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_46_255 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_46_244 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_46_211 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xinput13 gray_clk_in[9] vssd1 vccd1 _548_/A sky130_fd_sc_hd__buf_4
X_317_ _454_/Q _456_/Q vssd1 vccd1 _318_/A sky130_fd_sc_hd__and2b_1
XFILLER_61_258 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_14_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_248_ _508_/Q _509_/Q _248_/C vssd1 vccd1 _248_/X sky130_fd_sc_hd__and3_1
XANTENNA__260__S _540_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_96_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_35_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_60_280 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_20_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_20_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_57_15 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xclkbuf_1_0_0_clk_master clkbuf_0_clk_master/X vssd1 vccd1 _536_/A sky130_fd_sc_hd__clkbuf_2
Xclkbuf_1_1_0__084_ clkbuf_0__084_/X vssd1 vccd1 _280__7/A sky130_fd_sc_hd__clkbuf_2
XFILLER_28_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__466__CLK _543_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_11_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_98_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_7_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_409 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__489__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_69_155 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__254__B1 _252_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_43_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__309__B2 _305_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__309__A1 _283_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_75_125 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_90_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_75_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_147 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_17_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_31_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_239 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_228 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_206 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_217 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_66_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_66_125 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_66_114 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_58_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_30_250 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_97_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_80_161 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_72_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_72_117 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_426__2 _427__3/A vssd1 vccd1 _445_/CLK sky130_fd_sc_hd__inv_2
XFILLER_80_183 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_70_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__504__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_13_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_21_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_48_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__297__C _303_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_0_132 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_0_165 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_28_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_71_183 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_71_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_496_ _311_/Y _496_/D _557_/A vssd1 vccd1 _496_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_8_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_65 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_94_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_94_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_592 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_581 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_570 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_65_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__398__B _398_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_81_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_350_ _350_/A _453_/Q _481_/Q vssd1 vccd1 _350_/Y sky130_fd_sc_hd__nor3_1
X_281_ _512_/Q _513_/Q _443_/A vssd1 vccd1 _282_/A sky130_fd_sc_hd__mux2_1
XFILLER_14_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xfb_block_Q.gs_f.fb_gray_selector_loop\\[9\\].t_buf.t_buf _503_/Q _280__7/Y vssd1 vccd1
+ _394_/B sky130_fd_sc_hd__ebufn_4
XFILLER_5_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_91_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_76_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_76_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_36_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_548_ _548_/A vssd1 vccd1 _548_/X sky130_fd_sc_hd__clkbuf_1
X_479_ _311_/Y _479_/D _557_/A vssd1 vccd1 _479_/Q sky130_fd_sc_hd__dfrtp_1
XANTENNA__263__S _303_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_65_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_275 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_82_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_82_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_35_150 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_51_39 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_73_201 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_58_286 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_18_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_333_ _483_/Q _484_/Q _485_/Q _360_/C vssd1 vccd1 _366_/B sky130_fd_sc_hd__or4_1
X_402_ _498_/Q _402_/B vssd1 vccd1 _498_/D sky130_fd_sc_hd__xnor2_1
X_264_ _264_/A vssd1 vccd1 _264_/Y sky130_fd_sc_hd__clkinv_2
XPHY_95 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_84 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_41_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_40 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_25_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_51 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_62 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_73 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_49_220 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_2_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_66_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_64_267 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_17_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_24_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_103 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_101_169 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_101_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_55_256 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_55_245 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__354__A2 _353_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_87_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_46_267 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_clkbuf_0_clk_master_A clk_master vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_36_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_247_ _510_/Q vssd1 vccd1 _252_/A sky130_fd_sc_hd__inv_2
Xinput14 no_ones_below_in[0] vssd1 vccd1 _286_/A2 sky130_fd_sc_hd__clkbuf_2
X_316_ _316_/A vssd1 vccd1 _316_/X sky130_fd_sc_hd__clkbuf_1
XFILLER_14_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_37_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_28_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_60_292 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_52_248 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_20_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_87_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_73_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_28_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_7_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_11_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_22_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__481__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_7_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_47_60 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_19_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__271__S _545_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_8_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_69_145 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_69_101 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__254__A1 _508_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_25_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_68_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__356__S _360_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_33_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XTAP_229 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_218 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_207 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_74_170 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_66_104 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_95_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_15_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__456__CLK input17/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_57_159 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_38_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_129 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_65_192 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_80_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_70_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_21_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_88_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_79_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_input15_A no_ones_below_in[1] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_71_195 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_495_ _495_/D _323_/X vssd1 vccd1 _539_/A sky130_fd_sc_hd__dlxtn_2
XFILLER_12_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__479__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_5_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_8_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_79_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_39_148 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_39_137 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_39_115 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_10_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_523__59 vssd1 vssd1 vccd1 vccd1 _472_/D _523__59/LO sky130_fd_sc_hd__conb_1
XFILLER_62_162 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xfb_block_I.gs_f.fb_gray_selector_loop\\[0\\].t_buf.t_buf _480_/Q _261_/Y vssd1 vccd1
+ _324_/B sky130_fd_sc_hd__ebufn_8
XTAP_593 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_582 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_571 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_560 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_65_27 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA_input7_A gray_clk_in[3] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_81_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_547_ _547_/A vssd1 vccd1 _547_/X sky130_fd_sc_hd__clkbuf_1
XFILLER_91_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_76_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_55_60 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_44_162 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_29_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_36_129 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_71_81 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_478_ _279_/S _478_/D _442_/Y vssd1 vccd1 _478_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_44_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_44_184 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_58_3 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_35_162 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_73_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_73_213 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_58_298 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_401_ _421_/A _401_/B vssd1 vccd1 _402_/B sky130_fd_sc_hd__nand2_1
XPHY_30 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XTAP_390 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
X_263_ _461_/Q _462_/Q _303_/A vssd1 vccd1 _264_/A sky130_fd_sc_hd__mux2_1
Xro_block_Q.ro_pol.tribuf.t_buf _321_/X _282_/Y vssd1 vccd1 _555_/A sky130_fd_sc_hd__ebufn_2
XPHY_96 vssd1 vccd1 sky130_fd_sc_hd__decap_3
X_332_ _479_/Q _453_/Q _481_/Q _482_/Q vssd1 vccd1 _360_/C sky130_fd_sc_hd__or4_1
XPHY_85 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_41 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_52 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_26_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_63 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_74 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_41_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_49_254 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_49_232 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_49_210 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_32_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__303__A _303_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_70_205 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_70_249 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XANTENNA__213__A _215_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_87_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_46_279 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_14_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xinput15 no_ones_below_in[1] vssd1 vccd1 _550_/A sky130_fd_sc_hd__dlymetal6s2s_1
X_246_ _509_/Q _246_/B vssd1 vccd1 _509_/D sky130_fd_sc_hd__xnor2_1
X_315_ _315_/A _315_/B vssd1 vccd1 _316_/A sky130_fd_sc_hd__or2_1
XFILLER_14_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__269__S _544_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_37_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_87_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_227 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_51_271 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA__208__A _209_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_11_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__450__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_22_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_47_72 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_47_50 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_19_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_63_60 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_229_ _500_/Q _501_/Q _502_/Q _413_/C vssd1 vccd1 _419_/B sky130_fd_sc_hd__or4_1
XFILLER_8_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_69_179 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_69_135 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_69_113 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_40_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_190 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__254__A2 _509_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_25_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__309__A3 _302_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_33_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_68_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_4_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_529__65 vssd1 vssd1 vccd1 vccd1 _477_/D _529__65/LO sky130_fd_sc_hd__conb_1
XPHY_200 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_83_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_219 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_208 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_59_190 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_15_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_720 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_80_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_65_182 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_54_18 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_79_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_0_145 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_28_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_494_ _311_/Y _494_/D _557_/A vssd1 vccd1 _494_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_8_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_8_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_94_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_94_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_39_105 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__277__S _548_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_62_141 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_47_193 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_47_182 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XTAP_561 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_550 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_594 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_583 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_572 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_45_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_38_160 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_81_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_44_152 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_44_141 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_29_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_546_ _546_/A vssd1 vccd1 _546_/X sky130_fd_sc_hd__clkbuf_2
X_477_ _477_/CLK _477_/D _311_/A vssd1 vccd1 _477_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_67_200 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_67_233 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_188 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_76_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_380 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_391 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_92_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_331_ _486_/Q vssd1 vccd1 _370_/A sky130_fd_sc_hd__dlymetal6s2s_1
XANTENNA__469__CLK _283_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_400_ _404_/A _457_/Q vssd1 vccd1 _401_/B sky130_fd_sc_hd__xnor2_1
XFILLER_41_122 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_20 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_31 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_42 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_26_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_53 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_64 vssd1 vccd1 sky130_fd_sc_hd__decap_3
X_262_ _541_/A vssd1 vccd1 _303_/A sky130_fd_sc_hd__dlymetal6s2s_1
XPHY_97 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_86 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_75 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_41_96 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_41_85 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_49_266 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA_output39_A _550_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_32_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_32_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_99_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_70_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_149 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XANTENNA__303__B _303_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_70_217 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_291 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_62_18 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_55_214 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_23_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_62_29 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_11_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_46_203 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_61_239 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_54_280 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_314_ _452_/Q _450_/Q vssd1 vccd1 _315_/B sky130_fd_sc_hd__and2b_1
XFILLER_14_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_14_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_36_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_36_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xinput16 no_ones_below_in[2] vssd1 vccd1 _551_/A sky130_fd_sc_hd__buf_2
X_245_ _396_/A _245_/B vssd1 vccd1 _246_/B sky130_fd_sc_hd__nand2_1
XFILLER_77_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_52_239 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_52_217 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_37_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_9_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__507__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_73_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xfb_block_I.gs_f.fb_gray_selector_loop\\[8\\].t_buf.t_buf _487_/Q _278_/Y vssd1 vccd1
+ _324_/B sky130_fd_sc_hd__ebufn_4
XFILLER_43_239 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_206 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_51_283 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_11_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_11_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__490__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_0_3 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_47_84 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_19_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_72 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__420__B1 _423_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__507__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_228_ _496_/Q _457_/Q _498_/Q _499_/Q vssd1 vccd1 _413_/C sky130_fd_sc_hd__or4_1
XFILLER_6_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_84_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__254__A3 _248_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_33_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_90_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_83_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XPHY_201 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XANTENNA__219__A _428_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_98_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_209 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_15_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XTAP_721 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_710 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_80_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_153 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_70_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_88_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_0_113 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_0_157 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_0_179 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_493_ _311_/Y _493_/D _557_/A vssd1 vccd1 _493_/Q sky130_fd_sc_hd__dfrtp_2
XFILLER_44_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_44_85 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_12_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_12_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XANTENNA__412__A _501_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_5_79 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_57 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_94_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_94_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_85_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_39_128 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_62_186 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xclkbuf_1_0_0_gray_tree.gray.eff_gray.d clkbuf_0_gray_tree.gray.eff_gray.d/X vssd1
+ vccd1 _447_/D sky130_fd_sc_hd__clkbuf_2
XFILLER_85_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_584 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_573 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_562 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_551 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_540 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_49_19 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__302__C1 _540_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_595 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_53_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_38_172 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_81_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_5_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_76_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_29_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_36_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_545_ _545_/A vssd1 vccd1 _545_/X sky130_fd_sc_hd__clkbuf_1
X_476_ _548_/A _476_/D _441_/Y vssd1 vccd1 _476_/Q sky130_fd_sc_hd__dfrtp_1
XANTENNA__407__A _413_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_55_84 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_44_175 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_67_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_67_245 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_112 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_58_267 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_58_234 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_18_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_370 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_381 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_392 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_92_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_81_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_fb_block_Q.gs_f.fb_gray_selector_loop\\[9\\].t_buf.t_buf_A _503_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__227__A _502_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_330_ _489_/Q vssd1 vccd1 _383_/A sky130_fd_sc_hd__dlymetal6s2s_1
XPHY_98 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_87 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_76 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_10 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_21 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_32 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_43 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_54 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_26_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_65 vssd1 vccd1 sky130_fd_sc_hd__decap_3
X_261_ _261_/A vssd1 vccd1 _261_/Y sky130_fd_sc_hd__clkinv_2
XFILLER_41_178 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA_fb_block_I.gs_f.fb_gray_selector_loop\\[5\\].t_buf.t_buf_A _490_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
X_459_ _540_/A _459_/D _430_/Y vssd1 vccd1 _459_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_32_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__303__C _303_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_101_117 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_99_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_70_229 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_2_7 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_46_226 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_36_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_244_ _508_/Q _248_/C _249_/B vssd1 vccd1 _245_/B sky130_fd_sc_hd__a21bo_1
XFILLER_54_292 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_52_41 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_313_ _313_/A vssd1 vccd1 _315_/A sky130_fd_sc_hd__clkbuf_1
XFILLER_14_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_36_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xinput17 phi1b_dig vssd1 vccd1 input17/X sky130_fd_sc_hd__buf_4
XFILLER_77_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_45_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_60_262 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_9_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__330__A _489_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__459__CLK _540_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_95_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_51_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_43_218 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_11_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__240__A _384_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_63_40 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__420__A1 _502_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_19_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_227_ _502_/Q _503_/Q _504_/Q _227_/D vssd1 vccd1 _238_/D sky130_fd_sc_hd__and4_1
XANTENNA__415__A _502_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_42_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_6_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_68_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_129 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_17_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_202 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_24_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_24_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_3_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_74_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_15_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_30_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_722 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_711 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_700 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_80_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_80_165 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_534__70 vssd1 vssd1 vccd1 vccd1 _465_/D _534__70/LO sky130_fd_sc_hd__conb_1
XFILLER_79_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_0_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_28_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_71_121 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_492_ _311_/Y _492_/D _557_/A vssd1 vccd1 _492_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_56_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_56_162 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_44_64 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_44_53 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_12_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_44_97 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_12_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xfb_block_Q.gs_f.fb_gray_selector_loop\\[6\\].t_buf.t_buf _506_/Q _274_/Y vssd1 vccd1
+ _394_/B sky130_fd_sc_hd__ebufn_4
XANTENNA__322__B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_596 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_585 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_574 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_563 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_552 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_541 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_530 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_85_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_5_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_39_31 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA_input13_A gray_clk_in[9] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_91_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_55_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_55_41 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_55_30 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_544_ _544_/A vssd1 vccd1 _544_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_71_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_475_ _440_/Y _475_/D _211_/Y vssd1 vccd1 _475_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_58_6 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__492__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_67_213 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_67_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__333__A _483_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_2_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_input5_A gray_clk_in[1] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_26_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_360 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_371 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_382 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_393 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__227__B _503_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_260_ _458_/Q _459_/Q _540_/A vssd1 vccd1 _261_/A sky130_fd_sc_hd__mux2_1
XPHY_99 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_88 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_41_157 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_41_146 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_41_113 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_41_102 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_77 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_11 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_22 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_33 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_44 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_25_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_26_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_55 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_66 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XANTENNA__484__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__243__A _397_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_1_253 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_64_238 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_57_290 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__418__A _503_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_82_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_458_ _305_/Y _458_/D _220_/Y vssd1 vccd1 _458_/Q sky130_fd_sc_hd__dfrtp_1
X_389_ _389_/A _389_/B vssd1 vccd1 _492_/D sky130_fd_sc_hd__xnor2_1
XFILLER_99_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__303__D _303_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_101_129 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XANTENNA__328__A _350_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_23_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_11_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_17 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_61_219 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_238 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_36_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_243_ _397_/A _507_/Q _508_/Q _243_/D vssd1 vccd1 _249_/B sky130_fd_sc_hd__or4_1
X_312_ _450_/Q _452_/Q vssd1 vccd1 _313_/A sky130_fd_sc_hd__and2b_1
Xinput18 rstb vssd1 vccd1 _557_/A sky130_fd_sc_hd__buf_12
XANTENNA__404__C _498_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_37_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_60_274 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_60_230 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_45_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_37_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_9_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_87_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_95_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_11_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_11_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_47_31 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_19_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__420__A2 _503_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_19_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_226_ _500_/Q _501_/Q _226_/C vssd1 vccd1 _227_/D sky130_fd_sc_hd__and3_1
XFILLER_6_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_127 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_69_105 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_6_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_19_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_203 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_33_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_3_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_74_152 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_74_130 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_99_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_209_ _209_/A vssd1 vccd1 _435_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_30_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_723 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_712 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_701 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_57_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_80_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_65_196 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__336__A _483_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_88_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_48_108 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_28_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_71_177 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_71_155 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_71_133 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_491_ _311_/Y _491_/D _557_/A vssd1 vccd1 _491_/Q sky130_fd_sc_hd__dfrtp_1
XANTENNA__246__A _509_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_12_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_60_42 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_5_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_12_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_39_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_39_119 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA_fb_block_Q.gs_f.fb_gray_selector_loop\\[4\\].t_buf.t_buf_A _508_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XFILLER_86_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__302__A1 _542_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_7_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_597 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_586 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_575 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_564 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_553 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_542 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_531 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_520 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_39_43 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_91_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_543_ _543_/A vssd1 vccd1 _543_/X sky130_fd_sc_hd__clkbuf_1
XFILLER_39_87 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_71_96 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_71_85 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_474_ _547_/A _474_/D _439_/Y vssd1 vccd1 _474_/Q sky130_fd_sc_hd__dfrtp_1
XANTENNA__423__B _423_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_4_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_67_225 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_90_250 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_50_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_35_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_35_122 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__333__B _484_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_76_19 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XTAP_350 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_92_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_66_291 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_58_247 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_12 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_26_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_361 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_372 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_383 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_394 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__227__C _504_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XPHY_89 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_78 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_23 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_34 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_45 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_26_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_56 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_67 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XANTENNA__243__B _507_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_41_88 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_41_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__453__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_66_52 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_66_41 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_64_206 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_49_247 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_2_49 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_2_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_66_85 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_66_74 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_17_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_388_ _387_/X _335_/Y _398_/A vssd1 vccd1 _389_/B sky130_fd_sc_hd__o21a_1
X_457_ input17/X _457_/D _557_/A vssd1 vccd1 _457_/Q sky130_fd_sc_hd__dfrtp_2
XFILLER_40_180 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_99_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_99_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_49_3 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_63_283 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA__328__B _493_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_23_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_11_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__238__B _507_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_36_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__482__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_242_ _508_/Q _242_/B vssd1 vccd1 _508_/D sky130_fd_sc_hd__xnor2_1
X_311_ _311_/A _449_/D vssd1 vccd1 _311_/Y sky130_fd_sc_hd__nor2_8
Xinput19 ud_en vssd1 vccd1 _559_/A sky130_fd_sc_hd__buf_2
XFILLER_96_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_77_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_37_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_60_286 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_509_ _311_/Y _509_/D _557_/A vssd1 vccd1 _509_/Q sky130_fd_sc_hd__dfrtp_2
XFILLER_20_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_3_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__339__A _486_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__414__B1 _384_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_51_220 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_51_253 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_78_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__249__A _509_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_47_43 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_19_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__405__B1 _384_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_63_97 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_63_86 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__420__A3 _227_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_42_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_42_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_27_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_225_ _404_/A _457_/Q _498_/Q _499_/Q vssd1 vccd1 _226_/C sky130_fd_sc_hd__and4_1
XFILLER_6_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_6_110 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_88_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_84_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_117 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_92_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_33_253 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_33_264 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_68_183 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_16_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_17_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_58_53 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_58_42 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_3_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_74_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_99_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_208_ _209_/A vssd1 vccd1 _311_/A sky130_fd_sc_hd__clkinv_2
XTAP_713 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_702 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_97_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_31_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_65_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_21_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_88_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_88_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_71_189 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_71_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_525__61 vssd1 vssd1 vccd1 vccd1 _470_/D _525__61/LO sky130_fd_sc_hd__conb_1
X_490_ _311_/Y _490_/D _557_/A vssd1 vccd1 _490_/Q sky130_fd_sc_hd__dfrtp_2
XFILLER_12_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_100_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__262__A _541_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_5_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_12_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_85_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_79_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_69_63 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__437__A _546_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_62_112 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_79_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_543 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_532 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_521 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_510 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__302__A2 _296_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_7_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_93_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_598 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_587 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_576 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_565 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_554 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_38_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__500__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_39_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_542_ _542_/A vssd1 vccd1 _542_/X sky130_fd_sc_hd__clkbuf_2
X_473_ _291_/A _473_/D _212_/Y vssd1 vccd1 _473_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_55_21 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_44_112 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
Xclkbuf_1_0_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out
+ clkbuf_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out/X
+ vssd1 vccd1 _279_/S sky130_fd_sc_hd__clkbuf_2
XFILLER_96_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_75_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_35_134 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XANTENNA__333__C _485_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_340 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_351 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_362 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_373 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_384 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_58_259 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_13 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_24 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_35 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_46 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_26_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_395 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__227__D _227_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XPHY_79 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_25_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_57 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_68 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XANTENNA__540__A _540_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__243__C _508_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_9_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__493__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_66_97 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_66_64 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_82_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_456_ input17/X _457_/Q _557_/A vssd1 vccd1 _456_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_17_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_387_ _491_/Q _387_/B vssd1 vccd1 _387_/X sky130_fd_sc_hd__and2_1
XFILLER_40_192 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_99_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_251 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_63_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__328__C _494_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_23_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__360__A _360_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_11_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_54_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__238__C _505_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_39_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_310_ _310_/A _310_/B vssd1 vccd1 _310_/Y sky130_fd_sc_hd__xnor2_2
X_241_ _248_/C _239_/X _240_/X vssd1 vccd1 _242_/B sky130_fd_sc_hd__o21ai_1
XFILLER_52_88 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_89_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xfb_block_I.gs_f.fb_gray_selector_loop\\[5\\].t_buf.t_buf _490_/Q _272_/Y vssd1 vccd1
+ _324_/B sky130_fd_sc_hd__ebufn_8
X_439_ _442_/A vssd1 vccd1 _439_/Y sky130_fd_sc_hd__inv_2
XFILLER_60_298 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_508_ _311_/Y _508_/D _557_/A vssd1 vccd1 _508_/Q sky130_fd_sc_hd__dfrtp_2
XFILLER_13_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_61_3 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_3_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__339__B _487_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__414__A1 _227_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_36_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__505__D _505_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__355__A _360_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_51_265 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_98_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__249__B _249_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_47_66 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_63_76 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_224_ _496_/Q vssd1 vccd1 _404_/A sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_42_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_8_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_27_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__341__B1 _389_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_6_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_92_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_184 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_18_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_33_276 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__472__CLK _546_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_68_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
Xclkbuf_0__086_ _284_/X vssd1 vccd1 clkbuf_0__086_/X sky130_fd_sc_hd__clkbuf_16
XFILLER_17_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_287 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_33_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_3_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xclkbuf_1_0_0__086_ clkbuf_0__086_/X vssd1 vccd1 _310_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_3_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_281 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_74_176 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_143 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_74_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_714 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_703 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_97_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_24_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xclkbuf_1_1_0_clk_master clkbuf_0_clk_master/X vssd1 vccd1 _257_/S sky130_fd_sc_hd__clkbuf_2
XFILLER_0_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_9_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_71_102 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_56_187 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA__543__A _543_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__447__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_44_89 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_60_88 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_5_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_7_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_566 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_555 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_544 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_533 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_522 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_511 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_500 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_85_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_599 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_588 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_577 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__510__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_38_143 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xro_block_Q.ro_pol_eve.tribuf.t_buf _320_/A _282_/Y vssd1 vccd1 _556_/A sky130_fd_sc_hd__ebufn_2
XANTENNA__363__A _370_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_14_26 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XANTENNA__538__A _538_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_541_ _541_/A vssd1 vccd1 _541_/X sky130_fd_sc_hd__clkbuf_1
X_472_ _546_/A _472_/D _438_/Y vssd1 vccd1 _472_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_44_168 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_4_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_4_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_230 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_35_113 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_91_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__333__D _360_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XTAP_396 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_330 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_341 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_352 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_363 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_374 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_385 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__358__A _484_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_41_116 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_14 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_25 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_36 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_47 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_25_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_58 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_69 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_41_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__243__D _243_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_1_256 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_1_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA_input11_A gray_clk_in[7] vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_2_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_1_289 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_17_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_455_ input17/X _456_/Q _557_/A vssd1 vccd1 _455_/Q sky130_fd_sc_hd__dfrtp_1
X_386_ _491_/Q _386_/B vssd1 vccd1 _491_/D sky130_fd_sc_hd__xnor2_1
XFILLER_99_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_56_6 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_99_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_263 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_23_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_23_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__360__B _484_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_11_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_46_219 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_39_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA_input3_A comp_high_Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_54_274 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_52_34 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_52_12 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_240_ _384_/A vssd1 vccd1 _240_/X sky130_fd_sc_hd__clkbuf_1
XANTENNA__238__D _238_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__551__A _551_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_89_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_507_ _311_/Y _507_/D _557_/A vssd1 vccd1 _507_/Q sky130_fd_sc_hd__dfrtp_1
X_369_ _487_/Q _369_/B vssd1 vccd1 _487_/D sky130_fd_sc_hd__xnor2_1
X_438_ _442_/A vssd1 vccd1 _438_/Y sky130_fd_sc_hd__inv_2
XFILLER_13_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_54_3 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__339__C _488_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_51_244 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_22_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_22 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_47_78 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_42_211 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_66 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_223_ _384_/A vssd1 vccd1 _396_/A sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_42_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__546__A _546_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_88_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__341__A1 _489_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_6_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_92_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_88_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_17_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__366__A _370_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_24_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_277 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_33_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_3_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_58_88 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_58_66 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_58_33 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_74_188 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_74_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_9 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_206_ _536_/A vssd1 vccd1 _206_/X sky130_fd_sc_hd__buf_1
XFILLER_30_214 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_715 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_704 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_97_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_65_122 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_17_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_0_73 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_21_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_9_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xfb_block_Q.gs_f.fb_gray_selector_loop\\[3\\].t_buf.t_buf _509_/Q _268_/Y vssd1 vccd1
+ _394_/B sky130_fd_sc_hd__ebufn_8
XFILLER_56_111 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__241__B1 _240_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_100_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_60_12 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_79_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_76 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__487__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_47_122 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_70_191 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_62_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_516__52 vssd1 vssd1 vccd1 vccd1 _475_/D _516__52/LO sky130_fd_sc_hd__conb_1
XANTENNA__462__CLK _541_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_7_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_85_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_589 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_578 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_567 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_556 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_545 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_534 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_523 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_512 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_501 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_38_166 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_30_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_540_ _540_/A vssd1 vccd1 _540_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_44_103 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_39_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_71_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__485__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_471_ _437_/Y _471_/D _213_/Y vssd1 vccd1 _471_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_44_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_71_88 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_4_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_239 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_4_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_242 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_82_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_6_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_58_217 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XTAP_397 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_320 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_331 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_342 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_353 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_364 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_375 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_386 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA__374__A _382_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_41_139 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_41_128 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XPHY_15 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_26 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_37 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_48 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_25_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_59 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_41_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_2_19 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_1_268 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_17_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_17_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
X_385_ _387_/B _383_/Y _384_/X vssd1 vccd1 _386_/B sky130_fd_sc_hd__o21ai_1
X_454_ input17/X _455_/Q _557_/A vssd1 vccd1 _454_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_15_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_32_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__500__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_48_261 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_63_275 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_63_231 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_11_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__360__C _360_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_100_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__369__A _487_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_39_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_54_286 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_52_68 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_52_57 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_52_24 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_14_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_96_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_89_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__408__B1 _384_/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_60_256 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_506_ _311_/Y _506_/D _557_/A vssd1 vccd1 _506_/Q sky130_fd_sc_hd__dfrtp_1
X_437_ _546_/A vssd1 vccd1 _437_/Y sky130_fd_sc_hd__inv_2
X_368_ _375_/A _368_/B vssd1 vccd1 _369_/B sky130_fd_sc_hd__nand2_1
X_299_ _542_/A vssd1 vccd1 _303_/B sky130_fd_sc_hd__inv_2
XFILLER_13_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_20_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_47_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__339__D _370_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_3_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_28_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_36_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_51_289 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_51_234 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_36_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_22_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_86_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_34 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_47_57 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_42_223 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_222_ _559_/A vssd1 vccd1 _384_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_42_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_8_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__341__A2 _490_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_10_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_92_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_18_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_18_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_33_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_83_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
Xclkbuf_0__084_ _279_/X vssd1 vccd1 clkbuf_0__084_/X sky130_fd_sc_hd__clkbuf_16
XANTENNA__366__B _366_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_17_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_24_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__382__A _489_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_33_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_58_12 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xclkbuf_1_0_0__084_ clkbuf_0__084_/X vssd1 vccd1 _280__8/A sky130_fd_sc_hd__clkbuf_2
XFILLER_3_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_3_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_101_272 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_59_164 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_74_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__557__A _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_15_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_30_226 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_99_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_716 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_705 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_97_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_65_134 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_0_85 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_21_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_28_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_71_148 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_71_115 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__241__A1 _248_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__377__A _384_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_44_58 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_100_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_60_35 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_60_24 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_79_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__456__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_69_66 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_69_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_87_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__287__A _547_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_47_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_531__67 vssd1 vssd1 vccd1 vccd1 _466_/D _531__67/LO sky130_fd_sc_hd__conb_1
XFILLER_11_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_292 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_579 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_568 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_557 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_546 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_535 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_524 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_513 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_502 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_38_112 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_93_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_53_115 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_38_178 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_30_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_100_9 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_84_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_69_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_44_126 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_39_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_470_ _545_/A _470_/D _436_/Y vssd1 vccd1 _470_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_52_192 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_4_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_96_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_67_207 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_4_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_77_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_43_181 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XTAP_310 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_321 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_332 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_398 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_343 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_354 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_365 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_376 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_387 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_16 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_27 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_38 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_49 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_25_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__390__A _493_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_41_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__452__CLK input17/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_1_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_453_ input17/X _453_/D _557_/A vssd1 vccd1 _453_/Q sky130_fd_sc_hd__dfrtp_2
XFILLER_57_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_57_284 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_17_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_82_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_384_ _384_/A vssd1 vccd1 _384_/X sky130_fd_sc_hd__clkbuf_1
XFILLER_40_162 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_15_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_49_7 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_31_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_48_273 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_48_240 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_98_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_100_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_39_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_36_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xclkbuf_1_1_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out
+ clkbuf_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out/X
+ vssd1 vccd1 _549_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_54_298 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_22_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_7_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
Xclkbuf_0_gray_tree.sine_cell2.eff_gray.d _286_/Y vssd1 vccd1 clkbuf_0_gray_tree.sine_cell2.eff_gray.d/X
+ sky130_fd_sc_hd__clkbuf_16
XFILLER_60_268 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_436_ _442_/A vssd1 vccd1 _436_/Y sky130_fd_sc_hd__inv_2
X_505_ _311_/Y _505_/D _557_/A vssd1 vccd1 _505_/Q sky130_fd_sc_hd__dfrtp_1
X_367_ _370_/A _370_/C _371_/B vssd1 vccd1 _368_/B sky130_fd_sc_hd__a21o_1
X_298_ _541_/A vssd1 vccd1 _298_/Y sky130_fd_sc_hd__inv_2
XFILLER_42_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__498__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_9_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_51_213 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_36_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_36_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_51_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_86_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_47_47 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
Xro_block_I.ro_pol_eve.tribuf.t_buf _315_/A _282_/Y vssd1 vccd1 _554_/A sky130_fd_sc_hd__ebufn_2
XFILLER_63_57 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_63_46 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_63_13 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_42_235 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_221_ _506_/Q vssd1 vccd1 _397_/A sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_10_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_10_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_21 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__341__A3 _491_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_12_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_18_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_18_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_419_ _503_/Q _419_/B vssd1 vccd1 _423_/B sky130_fd_sc_hd__nor2_1
XFILLER_83_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_68_176 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__513__CLK _443_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__503__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_17_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__382__B _490_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_33_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_58_24 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_101_262 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_74_124 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_90_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_15_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_30_238 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_99_53 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_23_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_717 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_706 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_97_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_97_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_65_113 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_0_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_0_109 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_28_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_71_127 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_44_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__393__A _494_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_8_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_100_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_60_69 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_60_58 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_79_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_47_113 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_87_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_85_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__496__RESET_B _557_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_55_190 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_47_135 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_70_160 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__453__D _453_/D vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_11_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_525 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_514 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_503 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_50_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XTAP_569 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_558 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_547 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_536 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_38_157 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_22_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_14_18 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_14_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_55_14 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_44_116 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_29_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_71_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_4_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_4_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_20_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_96_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_fb_block_I.gs_f.fb_gray_selector_loop\\[6\\].t_buf.t_buf_A _489_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XFILLER_67_219 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__298__A _541_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_29_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_90_200 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_35_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_35_138 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_6_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_6_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_300 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_311 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_322 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_333 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_344 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_355 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_366 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_399 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_17 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_28 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XTAP_377 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_388 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_41_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_41_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XPHY_39 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_25_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__390__B _392_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_66_46 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_1_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_72_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_452_ input17/X _453_/Q _557_/A vssd1 vccd1 _452_/Q sky130_fd_sc_hd__dfrtp_1
X_383_ _383_/A _490_/Q _383_/C vssd1 vccd1 _383_/Y sky130_fd_sc_hd__nor3_1
XFILLER_17_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_17_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_25_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_174 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_31_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_48_285 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xfb_block_I.gs_f.fb_gray_selector_loop\\[2\\].t_buf.t_buf _493_/Q _266_/Y vssd1 vccd1
+ _324_/B sky130_fd_sc_hd__ebufn_8
XFILLER_98_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
Xclkbuf_0_clk_master clk_master vssd1 vccd1 clkbuf_0_clk_master/X sky130_fd_sc_hd__clkbuf_16
XFILLER_36_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_52_48 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_22_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_45_233 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_45_211 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_45_200 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_504_ _311_/Y _504_/D _557_/A vssd1 vccd1 _504_/Q sky130_fd_sc_hd__dfrtp_1
X_435_ _435_/A vssd1 vccd1 _442_/A sky130_fd_sc_hd__clkbuf_2
X_366_ _370_/A _366_/B vssd1 vccd1 _371_/B sky130_fd_sc_hd__nor2_1
XFILLER_45_277 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_54_6 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_297_ _303_/A _542_/A _303_/D vssd1 vccd1 _297_/X sky130_fd_sc_hd__or3_1
XFILLER_9_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_95_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_36_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_36_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_86_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_47_37 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_47_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_input1_A clkdiv2 vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_220_ _428_/A vssd1 vccd1 _220_/Y sky130_fd_sc_hd__inv_2
XFILLER_42_247 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__341__A4 _382_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_50_280 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_10_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_10_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_88_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_77_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_77_177 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_18_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_18_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_81 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__465__CLK _303_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_349_ _350_/A _453_/Q _481_/Q vssd1 vccd1 _349_/X sky130_fd_sc_hd__and3_1
X_418_ _503_/Q _418_/B vssd1 vccd1 _503_/D sky130_fd_sc_hd__xnor2_1
XFILLER_33_258 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_52_3 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_5_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_68_111 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_83_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__253__B1 _252_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_33_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__308__A1 _543_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XANTENNA__382__C _382_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_74_158 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_74_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__488__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_15_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_707 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_718 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_97_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_48_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_2_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_80_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_65_158 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_64_90 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__235__B1 _239_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_0_32 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_21_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_71_139 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_56_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_100_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_44_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__393__B _393_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_69_57 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_94_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_87_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_79_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_18_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__503__CLK _311_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_11_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_548 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_537 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_526 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_515 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_504 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_559 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_53_139 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_38_136 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_15_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_522__58 vssd1 vssd1 vccd1 vccd1 _473_/D _522__58/LO sky130_fd_sc_hd__conb_1
XFILLER_30_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_76_209 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_261 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_84_253 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_52_150 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_29_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_71_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_52_183 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_96_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_29_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_35_117 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_90_289 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_43_194 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_6_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_66_220 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_6_97 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XTAP_301 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_312 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_323 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_334 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_345 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_356 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_367 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_378 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_389 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_18 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_29 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_26_139 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_41_39 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_1_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_1_249 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_66_58 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_57_220 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_72_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_72_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
X_451_ input17/X _452_/Q _557_/A vssd1 vccd1 _451_/Q sky130_fd_sc_hd__dfrtp_1
X_382_ _489_/Q _490_/Q _382_/C vssd1 vccd1 _387_/B sky130_fd_sc_hd__and3_1
XFILLER_40_153 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_15_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_25_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_32_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_186 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_63_245 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_63_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_56_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_82_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_54_267 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_54_234 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_14_109 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_503_ _311_/Y _503_/D _557_/A vssd1 vccd1 _503_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_45_245 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_45_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_365_ _370_/A _365_/B vssd1 vccd1 _486_/D sky130_fd_sc_hd__xnor2_1
X_296_ _303_/A _303_/D vssd1 vccd1 _296_/Y sky130_fd_sc_hd__nand2_1
XFILLER_60_248 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_42_71 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
X_434_ _434_/A vssd1 vccd1 _434_/Y sky130_fd_sc_hd__inv_2
XFILLER_9_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_26_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_61_8 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_95_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_51_259 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_36_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_36_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_86_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_47_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_27_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_6_116 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_6_105 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_10_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_12_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_12_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_167 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_18_245 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_18_289 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_33_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_93 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_348_ _481_/Q _348_/B vssd1 vccd1 _481_/D sky130_fd_sc_hd__xnor2_1
X_417_ _421_/A _417_/B vssd1 vccd1 _418_/B sky130_fd_sc_hd__nand2_1
X_279_ _477_/Q _478_/Q _279_/S vssd1 vccd1 _279_/X sky130_fd_sc_hd__mux2_2
XFILLER_53_70 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_41_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_45_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_68_189 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__253__A1 _509_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_91_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__308__A2 _283_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_99_281 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_101_297 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_74_115 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__244__A1 _508_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_528__64 vssd1 vssd1 vccd1 vccd1 _468_/D _528__64/LO sky130_fd_sc_hd__conb_1
XFILLER_15_237 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_23_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_719 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_708 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
Xfb_block_Q.gs_f.fb_gray_selector_loop\\[0\\].t_buf.t_buf _497_/Q _261_/Y vssd1 vccd1
+ _394_/B sky130_fd_sc_hd__ebufn_8
XFILLER_2_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__235__A1 _397_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_48_92 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XANTENNA_fb_block_Q.gs_f.fb_gray_selector_loop\\[5\\].t_buf.t_buf_A _507_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XFILLER_0_11 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_0_44 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_2
XFILLER_64_80 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_0_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_96_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_28_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA_fb_block_I.gs_f.fb_gray_selector_loop\\[1\\].t_buf.t_buf_A _494_/Q vssd1 vccd1
+ vccd1 sky130_fd_sc_hd__diode_2
XFILLER_64_192 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_100_23 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_60_49 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_20_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XANTENNA__455__CLK input17/X vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_87_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_85_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_47_159 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_70_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_70_173 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_11_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_34_83 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_78_262 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_78_251 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XTAP_549 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_538 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_527 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_516 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_505 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_93_243 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_78_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_192 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_61_140 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_84_221 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_273 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_29_137 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_265 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_71_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_20_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_20_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_75_210 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_6_65 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_66_232 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XTAP_302 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_313 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_324 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_335 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_346 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_357 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_368 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_379 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_19 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_19_181 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_1_217 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_66_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_57_276 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_450_ input17/X _451_/Q _557_/A vssd1 vccd1 _450_/Q sky130_fd_sc_hd__dfrtp_1
XANTENNA__356__A0 _353_/Y vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_381_ _490_/Q _381_/B vssd1 vccd1 _490_/D sky130_fd_sc_hd__xnor2_1
XFILLER_40_143 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_31_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_210 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xoutput40 _551_/X vssd1 vccd1 no_ones_below_out[1] sky130_fd_sc_hd__buf_2
XFILLER_63_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_63_257 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XPHY_190 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_75_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_16_195 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_98_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_39_221 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_36_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_121 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_22_165 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_93_57 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_433_ _434_/A vssd1 vccd1 _433_/Y sky130_fd_sc_hd__inv_2
X_502_ _311_/Y _502_/D _557_/A vssd1 vccd1 _502_/Q sky130_fd_sc_hd__dfrtp_1
XFILLER_45_257 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_364_ _375_/A _364_/B vssd1 vccd1 _365_/B sky130_fd_sc_hd__nand2_1
X_295_ _303_/A _303_/C _303_/D _540_/A vssd1 vccd1 _295_/X sky130_fd_sc_hd__a31o_1
XFILLER_42_94 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_9_125 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_9_169 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_95_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_3_55 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_42_205 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_27_279 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_6_128 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_12_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_12_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_77_113 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_416_ _502_/Q _227_/D _419_/B vssd1 vccd1 _417_/B sky130_fd_sc_hd__a21bo_1
XFILLER_33_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_33_249 vssd1 vccd1 sky130_fd_sc_hd__decap_4
X_278_ _278_/A vssd1 vccd1 _278_/Y sky130_fd_sc_hd__inv_2
X_347_ _375_/A _347_/B vssd1 vccd1 _348_/B sky130_fd_sc_hd__nand2_1
XFILLER_41_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_38_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_5_161 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_83_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_83_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__253__A2 _249_/B vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_91_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_101_232 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_74_149 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_67_190 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XANTENNA__244__A2 _248_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_15_205 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_15_249 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_23_293 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XTAP_709 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_2_197 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_2_153 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_73_171 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__235__A2 _505_/Q vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_0_23 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA_output26_A _539_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_71_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_44_29 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_69_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_85_69 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__211__A _215_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_18_41 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_18_85 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_70_185 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_50_61 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_7_223 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_78_274 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_539 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_528 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_517 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_506 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_59_70 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__267__S _543_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_53_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_46_182 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_38_149 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_84_277 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_84_233 vssd1 vccd1 sky130_fd_sc_hd__decap_12
X_427__3 _427__3/A vssd1 vccd1 _447_/CLK sky130_fd_sc_hd__inv_2
XFILLER_44_108 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_37_160 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_29_105 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_29_149 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_71_27 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_37_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__206__A _536_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_20_53 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_20_97 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_29_51 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_45_61 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_43_130 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_61_82 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_61_71 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_43_174 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_6_77 vssd1 vccd1 sky130_fd_sc_hd__decap_6
XFILLER_3_281 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_303 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_314 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_66_255 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_66_244 vssd1 vccd1 sky130_fd_sc_hd__decap_8
XFILLER_20_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XTAP_325 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_336 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_347 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_358 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_369 vssd1 vccd1 sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_81_225 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_19_193 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_34_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_66_27 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_82_15 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XANTENNA__356__A1 _359_/C vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
X_380_ _421_/A _380_/B vssd1 vccd1 _381_/B sky130_fd_sc_hd__nand2_1
XFILLER_40_199 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_40_133 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XFILLER_40_100 vssd1 vccd1 sky130_fd_sc_hd__decap_4
Xoutput30 _540_/X vssd1 vccd1 gray_clk_out[1] sky130_fd_sc_hd__buf_2
Xoutput41 _552_/X vssd1 vccd1 no_ones_below_out[2] sky130_fd_sc_hd__buf_2
XFILLER_48_255 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_48_233 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_0_295 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XFILLER_0_262 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_63_269 vssd1 vccd1 sky130_fd_sc_hd__decap_4
XANTENNA__468__CLK _544_/A vssd1 vccd1 vccd1 sky130_fd_sc_hd__diode_2
XFILLER_16_141 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_31_111 vssd1 vssd1 vccd1 vccd1 sky130_fd_sc_hd__fill_1
XPHY_191 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XPHY_180 vssd1 vccd1 sky130_fd_sc_hd__decap_3
XFILLER_68_3 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_177 vssd1 vccd1 sky130_fd_sc_hd__decap_12
XFILLER_98_133 vssd1 vccd1 sky130_fd_sc_hd__decap_6
C1061 _380_/B vssd1 3.51fF
C1062 _447_/CLK vssd1 2.65fF
C1063 _505_/Q vssd1 22.45fF
C1064 _417_/B vssd1 2.24fF
C1065 _295_/X vssd1 2.49fF
C1066 _365_/B vssd1 6.83fF
C1067 _551_/X vssd1 7.65fF
C1068 _490_/D vssd1 2.03fF
C1069 _381_/B vssd1 4.25fF
C1070 _397_/A vssd1 20.71fF
C1071 _468_/D vssd1 3.32fF
C1072 _434_/Y vssd1 2.32fF
C1073 _434_/A vssd1 9.69fF
C1074 _393_/B vssd1 3.06fF
C1075 _239_/B vssd1 11.90fF
C1076 _220_/Y vssd1 6.27fF
C1077 clkdiv2 vssd1 2.52fF
C1078 _371_/B vssd1 3.71fF
C1079 _442_/A vssd1 7.18fF
C1080 clkbuf_0_clk_master/a_110_47# vssd1 3.14fF
C1081 _266_/Y vssd1 2.36fF
C1082 _494_/Q vssd1 18.44fF
C1083 _315_/A vssd1 4.41fF
C1084 _286_/Y vssd1 9.05fF
C1085 clkbuf_0_gray_tree.sine_cell2.eff_gray.d/a_110_47# vssd1 2.86fF
C1086 _549_/A vssd1 4.40fF
C1087 _453_/D vssd1 7.14fF
C1088 _470_/Q vssd1 3.72fF
C1089 _436_/Y vssd1 2.51fF
C1090 _470_/D vssd1 3.16fF
C1091 _545_/A vssd1 30.16fF
C1092 clkbuf_0__084_/X vssd1 6.13fF
C1093 clkbuf_0__084_/a_110_47# vssd1 2.74fF
C1094 _506_/Q vssd1 3.65fF
C1095 _506_/D vssd1 3.48fF
C1096 _454_/Q vssd1 2.71fF
C1097 _471_/Q vssd1 3.27fF
C1098 _213_/Y vssd1 2.29fF
C1099 _471_/D vssd1 4.25fF
C1100 _437_/Y vssd1 9.87fF
C1101 _540_/X vssd1 5.42fF
C1102 _206_/X vssd1 14.08fF
C1103 _489_/Q vssd1 16.93fF
C1104 _546_/A vssd1 29.34fF
C1105 _396_/A vssd1 8.44fF
C1106 _487_/D vssd1 3.32fF
C1107 _369_/B vssd1 2.01fF
C1108 comp_high_Q vssd1 2.57fF
C1109 _484_/Q vssd1 19.84fF
C1110 _456_/Q vssd1 3.56fF
C1111 gray_clk_in[7] vssd1 2.61fF
C1112 _438_/Y vssd1 9.05fF
C1113 _472_/D vssd1 2.30fF
C1114 _541_/X vssd1 4.99fF
C1115 _370_/C vssd1 16.97fF
C1116 _556_/A vssd1 17.57fF
C1117 _257_/S vssd1 5.92fF
C1118 clkbuf_0__086_/X vssd1 6.65fF
C1119 clkbuf_0__086_/a_110_47# vssd1 3.21fF
C1120 _389_/A vssd1 9.00fF
C1121 _496_/Q vssd1 8.69fF
C1122 _249_/B vssd1 16.31fF
C1123 _439_/Y vssd1 5.89fF
C1124 _310_/A vssd1 3.67fF
C1125 _310_/B vssd1 2.81fF
C1126 _387_/X vssd1 3.46fF
C1127 clkbuf_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out/X vssd1 4.22fF
C1128 _473_/Q vssd1 2.02fF
C1129 _542_/X vssd1 5.75fF
C1130 _296_/Y vssd1 11.59fF
C1131 _311_/A vssd1 5.59fF
C1132 _559_/A vssd1 23.66fF
C1133 _507_/Q vssd1 19.35fF
C1134 _493_/Q vssd1 19.13fF
C1135 _457_/Q vssd1 7.61fF
C1136 _423_/B vssd1 9.45fF
C1137 _547_/A vssd1 18.83fF
C1138 _543_/X vssd1 2.51fF
C1139 _509_/Q vssd1 23.12fF
C1140 _491_/D vssd1 6.25fF
C1141 _483_/Q vssd1 10.55fF
C1142 _557_/A vssd1 189.41fF
C1143 input18/a_109_47# vssd1 2.85fF
C1144 _452_/Q vssd1 12.11fF
C1145 _350_/A vssd1 17.02fF
C1146 _303_/D vssd1 26.60fF
C1147 _389_/B vssd1 5.52fF
C1148 _503_/Q vssd1 16.35fF
C1149 _458_/Q vssd1 3.77fF
C1150 _261_/A vssd1 2.07fF
C1151 _475_/Q vssd1 11.78fF
C1152 _475_/D vssd1 2.47fF
C1153 _440_/Y vssd1 2.35fF
C1154 _544_/X vssd1 5.62fF
C1155 _274_/Y vssd1 6.18fF
C1156 _384_/A vssd1 22.14fF
C1157 phi1b_dig vssd1 2.31fF
C1158 _303_/C vssd1 22.11fF
C1159 _459_/Q vssd1 4.83fF
C1160 _476_/Q vssd1 4.91fF
C1161 _545_/X vssd1 4.00fF
C1162 _447_/D vssd1 2.51fF
C1163 _550_/X vssd1 14.50fF
C1164 _401_/B vssd1 2.53fF
C1165 _477_/D vssd1 3.18fF
C1166 _302_/Y vssd1 4.17fF
C1167 _509_/D vssd1 2.92fF
C1168 _246_/B vssd1 8.13fF
C1169 _360_/C vssd1 12.60fF
C1170 _482_/Q vssd1 12.80fF
C1171 _555_/A vssd1 5.52fF
C1172 _321_/X vssd1 2.25fF
C1173 _402_/B vssd1 2.03fF
C1174 _421_/A vssd1 4.68fF
C1175 _478_/Q vssd1 6.28fF
C1176 _547_/X vssd1 8.62fF
C1177 _261_/Y vssd1 5.38fF
C1178 _480_/Q vssd1 2.97fF
C1179 no_ones_below_in[1] vssd1 2.01fF
C1180 _508_/Q vssd1 27.59fF
C1181 _316_/A vssd1 2.87fF
C1182 clk_master vssd1 13.51fF
C1183 _264_/A vssd1 4.98fF
C1184 _479_/D vssd1 2.12fF
C1185 _548_/X vssd1 8.16fF
C1186 _512_/Q vssd1 5.13fF
C1187 _282_/A vssd1 13.40fF
C1188 _350_/Y vssd1 2.76fF
C1189 _496_/D vssd1 3.97fF
C1190 _427__3/A vssd1 4.49fF
C1191 _283_/Y vssd1 25.48fF
C1192 _305_/Y vssd1 9.08fF
C1193 _252_/A vssd1 19.18fF
C1194 clkbuf_0_clk_master/X vssd1 4.69fF
C1195 _248_/X vssd1 2.62fF
C1196 gray_clk_in[9] vssd1 2.19fF
C1197 _266_/A vssd1 4.74fF
C1198 _488_/Q vssd1 16.28fF
C1199 _487_/Q vssd1 29.43fF
C1200 _403_/X vssd1 3.26fF
C1201 _549_/X vssd1 5.28fF
C1202 _349_/X vssd1 3.09fF
C1203 _497_/Q vssd1 6.35fF
C1204 _476_/D vssd1 4.80fF
C1205 _264_/Y vssd1 5.68fF
C1206 _249_/Y vssd1 10.37fF
C1207 _318_/A vssd1 6.17fF
C1208 _404_/A vssd1 13.08fF
C1209 clkbuf_0_gray_tree.gray.eff_gray.d/a_110_47# vssd1 2.75fF
C1210 _544_/A vssd1 21.66fF
C1211 _482_/D vssd1 2.83fF
C1212 _421_/B vssd1 2.42fF
C1213 _498_/D vssd1 3.55fF
C1214 gray_clk_in[5] vssd1 2.74fF
C1215 _335_/Y vssd1 10.79fF
C1216 _466_/Q vssd1 2.17fF
C1217 _543_/A vssd1 27.26fF
C1218 _268_/A vssd1 3.93fF
C1219 _284_/X vssd1 2.95fF
C1220 _353_/Y vssd1 6.71fF
C1221 _268_/Y vssd1 4.93fF
C1222 _492_/Q vssd1 5.55fF
C1223 _370_/X vssd1 4.23fF
C1224 _504_/Q vssd1 22.77fF
C1225 _499_/D vssd1 3.52fF
C1226 _499_/Q vssd1 5.37fF
C1227 _406_/B vssd1 2.77fF
C1228 _542_/A vssd1 30.67fF
C1229 _286_/A2 vssd1 2.46fF
C1230 _513_/D vssd1 3.32fF
C1231 _371_/X vssd1 3.14fF
C1232 clkbuf_0_net47/X vssd1 8.27fF
C1233 _310_/Y vssd1 7.34fF
C1234 clkbuf_0_net47/a_110_47# vssd1 3.26fF
C1235 input17/X vssd1 28.24fF
C1236 _238_/D vssd1 31.95fF
C1237 _467_/Q vssd1 2.14fF
C1238 _407_/Y vssd1 3.21fF
C1239 _541_/A vssd1 13.62fF
C1240 _355_/B vssd1 3.93fF
C1241 _425_/B vssd1 10.62fF
C1242 _510_/Q vssd1 4.52fF
C1243 _510_/D vssd1 2.06fF
C1244 _485_/Q vssd1 26.96fF
C1245 _486_/Q vssd1 12.17fF
C1246 ud_en vssd1 2.13fF
C1247 _384_/X vssd1 25.00fF
C1248 _409_/B vssd1 2.76fF
C1249 _226_/C vssd1 8.59fF
C1250 _540_/A vssd1 29.59fF
C1251 gray_clk_in[1] vssd1 2.22fF
C1252 _505_/D vssd1 4.57fF
C1253 _481_/Q vssd1 19.20fF
C1254 _442_/Y vssd1 3.94fF
C1255 _373_/B vssd1 2.66fF
C1256 _464_/D vssd1 6.61fF
C1257 clkbuf_0__039_/X vssd1 4.52fF
C1258 clkbuf_0__039_/a_110_47# vssd1 3.12fF
C1259 _493_/D vssd1 14.17fF
C1260 _392_/A vssd1 9.28fF
C1261 _215_/A vssd1 12.85fF
C1262 _443_/A vssd1 13.36fF
C1263 _453_/Q vssd1 20.97fF
C1264 _443_/Y vssd1 2.52fF
C1265 _207__1/Y vssd1 2.11fF
C1266 _392_/B vssd1 2.53fF
C1267 _538_/A vssd1 7.71fF
C1268 _498_/Q vssd1 26.14fF
C1269 _212_/Y vssd1 3.12fF
C1270 _323_/X vssd1 10.40fF
C1271 _457_/D vssd1 7.84fF
C1272 vccd1 vssd1 15529.72fF
C1273 _552_/A vssd1 2.34fF
C1274 _289_/A vssd1 3.00fF
C1275 _358_/B vssd1 2.63fF
C1276 _479_/Q vssd1 17.62fF
C1277 _375_/A vssd1 7.51fF
C1278 _461_/Q vssd1 2.18fF
C1279 _284_/S vssd1 2.53fF
C1280 _448_/D vssd1 3.25fF
C1281 clkbuf_0_gray_tree.gray.eff_gray.d/X vssd1 5.19fF
C1282 _298_/Y vssd1 8.50fF
C1283 _428_/Y vssd1 2.47fF
C1284 _428_/A vssd1 30.76fF
C1285 _243_/D vssd1 10.61fF
C1286 comp_high_I vssd1 2.52fF
C1287 _489_/D vssd1 3.01fF
C1288 _376_/B vssd1 2.44fF
C1289 gray_clk_in[6] vssd1 2.28fF
C1290 _462_/Q vssd1 3.24fF
C1291 _495_/D vssd1 18.08fF
C1292 _209_/A vssd1 9.57fF
C1293 _303_/B vssd1 11.11fF
C1294 _446_/D vssd1 3.75fF
C1295 _395_/A vssd1 4.60fF
C1296 _463_/D vssd1 5.12fF
C1297 _324_/B vssd1 12.54fF
C1298 _546_/X vssd1 8.35fF
C1299 _300_/X vssd1 2.03fF
C1300 _297_/X vssd1 4.21fF
C1301 _232_/B vssd1 2.51fF
C1302 _478_/D vssd1 7.28fF
C1303 _378_/Y vssd1 3.63fF
C1304 _464_/Q vssd1 2.03fF
C1305 _550_/A vssd1 6.08fF
C1306 _481_/D vssd1 3.17fF
C1307 _435_/A vssd1 9.14fF
C1308 _554_/X vssd1 8.21fF
C1309 _459_/D vssd1 2.48fF
C1310 _398_/A vssd1 17.20fF
C1311 _465_/Q vssd1 5.29fF
C1312 _217_/Y vssd1 3.76fF
C1313 gray_clk_in[8] vssd1 2.38fF
C1314 _551_/A vssd1 13.15fF
C1315 clkbuf_0_fb_block_I.gs_f.fb_gray_selector_loop\\[9\\].eff3.bf.buffer_loop\\[0\\].g2.out/a_110_47# vssd1 3.17fF
C1316 _303_/X vssd1 4.67fF
C1317 _383_/C vssd1 13.02fF
C1318 _321_/A vssd1 2.36fF
C1319 _320_/B vssd1 2.97fF
C1320 _419_/B vssd1 8.64fF
C1321 _433_/Y vssd1 2.87fF
C1322 _466_/D vssd1 10.06fF
C1323 _483_/D vssd1 2.47fF
C1324 _552_/X vssd1 3.03fF
C1325 no_ones_below_out[0] vssd1 2.20fF
C1326 _539_/X vssd1 3.65fF
C1327 _218_/Y vssd1 2.14fF
C1328 _382_/C vssd1 24.26fF
C1329 _236_/B vssd1 8.71fF
C1330 _490_/Q vssd1 34.41fF
C1331 _252_/B vssd1 2.30fF
C1332 _398_/D vssd1 2.49fF
C1333 _398_/C vssd1 3.55fF
C1334 _398_/B vssd1 6.60fF
C1335 _215_/Y vssd1 5.24fF
C1336 _467_/D vssd1 4.01fF
C1337 _282_/Y vssd1 13.40fF
C1338 _491_/Q vssd1 15.66fF
C1339 _553_/A vssd1 2.39fF
C1340 _375_/B vssd1 3.59fF
C1341 _227_/D vssd1 13.66fF
C1342 _359_/C vssd1 22.29fF
C1343 _559_/X vssd1 4.48fF
C1344 _219_/Y vssd1 2.39fF
C1345 _512_/D vssd1 3.50fF
C1346 _383_/A vssd1 19.78fF
C1347 _323_/A vssd1 2.15fF
C1348 _497_/D vssd1 2.45fF
C1349 _468_/Q vssd1 8.35fF
C1350 _537_/X vssd1 2.07fF
C1351 _270_/Y vssd1 7.44fF
C1352 _270_/A vssd1 2.07fF
C1353 gray_clk_in[2] vssd1 2.28fF
C1354 _554_/A vssd1 5.83fF
C1355 no_ones_below_in[0] vssd1 2.78fF
C1356 _502_/Q vssd1 37.33fF
C1357 _240_/X vssd1 18.89fF
C1358 _511_/Q vssd1 8.77fF
C1359 _539_/A vssd1 11.23fF
C1360 _558_/X vssd1 2.41fF
C1361 _507_/D vssd1 2.34fF
C1362 _307_/B vssd1 2.39fF
C1363 _304_/Y vssd1 2.70fF
C1364 _469_/Q vssd1 3.34fF
C1365 _214_/Y vssd1 7.16fF
C1366 _469_/D vssd1 4.83fF
C1367 _486_/D vssd1 9.23fF
C1368 _555_/X vssd1 3.58fF
C1369 _360_/A vssd1 15.59fF
C1370 _366_/B vssd1 11.45fF
C1371 sin_out vssd1 2.60fF
C1372 gray_clk_out[7] vssd1 2.75fF
C1373 _248_/C vssd1 20.44fF
C1374 _537_/A vssd1 13.06fF
C1375 _256_/B vssd1 20.68fF
C1376 _536_/A vssd1 8.26fF
C1377 _556_/X vssd1 3.15fF
C1378 _279_/S vssd1 6.30fF
C1379 _449_/Q vssd1 12.01fF
C1380 _557_/X vssd1 2.20fF
C1381 _462_/D vssd1 4.99fF
C1382 _460_/D vssd1 11.99fF
C1383 _274_/A vssd1 3.95fF
C1384 _411_/B vssd1 2.34fF
C1385 _488_/D vssd1 7.46fF
C1386 _272_/Y vssd1 5.66fF
C1387 _303_/A vssd1 19.90fF
C1388 _413_/C vssd1 18.00fF
C1389 _308_/Y vssd1 2.13fF
C1390 _448_/Q vssd1 5.02fF
C1391 _501_/D vssd1 2.77fF
C1392 _311_/Y vssd1 104.15fF
C1393 _291_/A vssd1 6.07fF
C1394 _548_/A vssd1 39.56fF
C1395 _370_/A vssd1 19.80fF
C1396 cos_out vssd1 2.16fF
C1397 _501_/Q vssd1 11.55fF
C1398 _276_/Y vssd1 2.02fF
C1399 _344_/B vssd1 8.35fF
C1400 _413_/Y vssd1 2.47fF
C1401 _362_/B vssd1 5.90fF
C1402 _360_/Y vssd1 4.28fF
C1403 _359_/X vssd1 7.45fF
C1404 _430_/Y vssd1 2.28fF
C1405 _292_/B vssd1 3.12fF
C1406 _536_/X vssd1 5.81fF
C1407 gray_clk_out[3] vssd1 3.50fF
C1408 _500_/Q vssd1 18.16fF
C1409 _449_/D vssd1 4.29fF
C1410 _320_/A vssd1 13.10fF
C1411 _431_/Y vssd1 2.66fF
C1412 _500_/D vssd1 2.12fF
C1413 read_out_I[0] vssd1 2.83fF
C1414 _553_/X vssd1 5.20fF
C1415 _445_/D vssd1 3.33fF
C1416 clkbuf_0_gray_tree.sine_cell2.eff_gray.d/X vssd1 6.54fF
C1417 rstb vssd1 2.34fF
C1418 _329_/X vssd1 6.58fF
C1419 _347_/B vssd1 5.58fF
C1420 _364_/B vssd1 8.84fF
C1421 _432_/Y vssd1 2.70fF
C1422 _394_/B vssd1 20.42fF
C1423 _278_/Y vssd1 2.97fF
.ends

"}
