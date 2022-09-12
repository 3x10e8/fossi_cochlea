v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Generate threshold swapping clk} 220 150 2 0 0.4 0.4 {}
T {Generate 
non-overlapping 
phi1/phi2 clks} 20 -210 2 0 0.4 0.4 {}
T {clk from digital core
(previous core's div2 out)} -550 -260 0 0 0.4 0.4 {}
T {Comparator
sampling clk} 360 -50 0 0 0.4 0.4 {}
T {Last cap
thresh clk} 270 30 0 0 0.4 0.4 {}
N 270 -140 300 -140 { lab=phi2b}
N 140 0 180 0 { lab=phi1dd}
N 270 20 300 20 { lab=phi1b}
N 270 -180 300 -180 { lab=phi2}
N 270 -20 300 -20 { lab=phi1}
N 0 0 40 0 { lab=phi1d}
N 140 -160 180 -160 { lab=phi2dd}
N 0 -160 40 -160 { lab=phi2d}
N -140 -160 -140 -90 { lab=#net1}
N -140 -160 -100 -160 { lab=#net1}
N -140 -50 -140 0 { lab=#net2}
N -140 0 -100 0 { lab=#net2}
N -630 -170 -570 -170 { lab=div2}
N 270 240 300 240 { lab=cclkb_ana}
N 270 200 300 200 { lab=cclk_ana}
N 0 220 40 220 { lab=div2d}
N 140 220 180 220 { lab=div2dd}
N -160 -90 -140 -90 {
lab=#net1}
N -160 -50 -140 -50 {
lab=#net2}
N -610 140 -550 140 {
lab=cclk}
N -270 -90 -160 -90 {
lab=#net1}
N -250 -110 -180 -110 {
lab=#net2}
N -180 -110 -180 -50 {
lab=#net2}
N -180 -50 -160 -50 {
lab=#net2}
N -250 220 -100 220 {
lab=#net6}
N -270 -110 -250 -110 {}
N -250 200 -230 200 {}
C {devices/lab_pin.sym} 20 0 3 0 {name=l8 sig_type=std_logic lab=phi1d}
C {devices/lab_pin.sym} -100 20 0 0 {name=l13 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 160 0 3 0 {name=l14 sig_type=std_logic lab=phi1dd}
C {devices/lab_pin.sym} 20 -160 3 0 {name=l18 sig_type=std_logic lab=phi2d}
C {devices/lab_pin.sym} 40 -180 0 0 {name=l19 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -100 -140 0 0 {name=l20 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 160 -160 3 0 {name=l21 sig_type=std_logic lab=phi2dd}
C {devices/lab_pin.sym} 20 220 1 0 {name=l26 sig_type=std_logic lab=div2d}
C {devices/ipin.sym} -630 -170 0 0 {name=p1 lab=div2}
C {devices/opin.sym} 300 -180 0 0 {name=p3 lab=phi2}
C {devices/opin.sym} 300 -140 0 0 {name=p4 lab=phi2b}
C {devices/opin.sym} 300 -20 0 0 {name=p5 lab=phi1}
C {devices/opin.sym} 300 20 0 0 {name=p6 lab=phi1b}
C {devices/opin.sym} 300 200 0 0 {name=p7 lab=cclk_ana}
C {devices/opin.sym} 300 240 0 0 {name=p8 lab=cclkb_ana}
C {devices/ipin.sym} -690 -250 0 0 {name=p10 lab=vpb}
C {devices/ipin.sym} -690 -220 0 0 {name=p11 lab=vnb}
C {clkgen/comp_clks.sym} 230 -160 0 0 {name=X4 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {clkgen/comp_clks.sym} 230 0 0 0 {name=X7 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {clkgen/comp_clks.sym} 230 220 0 0 {name=X10 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} 160 220 1 0 {name=l3 sig_type=std_logic lab=div2dd}
C {inv/inv_weak_pulldown.sym} -50 -160 0 0 {name=X2 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pulldown.sym} -50 0 0 0 {name=X5 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pulldown.sym} -50 220 0 0 {name=X8 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pulldown.sym} 90 220 0 0 {name=X9 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pullup.sym} 90 -160 0 0 {name=X3 Wpmos=1.26 Lpmos=0.54 Wmin=0.42 Lmin=0.18}
C {inv/inv_weak_pullup.sym} 90 0 0 0 {name=X6 Wpmos=1.26 Lpmos=0.54 Wmin=0.42 Lmin=0.18}
C {devices/lab_pin.sym} -50 -200 0 0 {name=l4 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 90 -200 0 0 {name=l5 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -50 -40 0 0 {name=l11 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 90 -40 0 0 {name=l6 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -50 180 0 0 {name=l16 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 90 180 0 0 {name=l22 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 40 -20 0 0 {name=l24 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -100 240 0 0 {name=l1 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 40 240 0 0 {name=l2 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 230 180 0 0 {name=l30 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 230 -40 0 0 {name=l31 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 230 -200 0 0 {name=l32 sig_type=std_logic lab=vdda}
C {devices/ipin.sym} -610 140 0 0 {name=p2 lab=cclk}
C {devices/iopin.sym} -690 -360 2 0 {name=p14 lab=vdda}
C {devices/iopin.sym} -690 -340 2 0 {name=p13 lab=vccd}
C {devices/iopin.sym} -690 -320 2 0 {name=p12 lab=vssd}
C {devices/lab_pin.sym} -50 -120 0 0 {name=l7 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 90 -120 0 0 {name=l9 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -50 40 0 0 {name=l10 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 90 40 0 0 {name=l15 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 90 260 0 0 {name=l17 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -50 260 0 0 {name=l23 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 230 260 0 0 {name=l27 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 230 -120 0 0 {name=l29 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 230 40 0 0 {name=l35 sig_type=std_logic lab=vssd}
C {devices/noconn.sym} -230 200 2 0 {name=l1}
C {xschem/level_shifter/level_up_shifter_d_a.sym} -420 -130 0 0 {name=x12}
C {devices/lab_pin.sym} -270 -170 2 0 {name=l36 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -270 -130 2 0 {name=l38 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -270 -150 2 0 {name=l12 sig_type=std_logic lab=vccd}
C {xschem/level_shifter/level_up_shifter_d_a.sym} -400 180 0 0 {name=x1}
C {devices/lab_pin.sym} -250 140 2 0 {name=l36 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -250 180 2 0 {name=l38 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -250 160 2 0 {name=l12 sig_type=std_logic lab=vccd}
