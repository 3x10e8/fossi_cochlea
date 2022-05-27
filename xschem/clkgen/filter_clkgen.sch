v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Generate threshold swapping clk} 220 150 2 0 0.4 0.4 {}
T {Generate 
non-overlapping 
phi1/phi2 clks} -150 -170 2 0 0.4 0.4 {}
T {clk from RISC} -370 -100 0 0 0.4 0.4 {}
T {Comparator
sampling clk} 180 -270 0 0 0.4 0.4 {}
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
N -350 -70 -220 -70 { lab=clk_dig}
N 270 240 300 240 { lab=cclkb}
N 270 200 300 200 { lab=cclk}
N 0 220 40 220 { lab=div2d}
N 140 220 180 220 { lab=div2dd}
N -160 -90 -140 -90 {
lab=#net1}
N -160 -50 -140 -50 {
lab=#net2}
N -350 220 -100 220 {
lab=cclk_dig}
C {devices/lab_pin.sym} 20 0 3 0 {name=l8 sig_type=std_logic lab=phi1d}
C {devices/lab_pin.sym} -100 20 0 0 {name=l13 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 160 0 3 0 {name=l14 sig_type=std_logic lab=phi1dd}
C {devices/lab_pin.sym} 20 -160 3 0 {name=l18 sig_type=std_logic lab=phi2d}
C {devices/lab_pin.sym} 40 -180 0 0 {name=l19 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -100 -140 0 0 {name=l20 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 160 -160 3 0 {name=l21 sig_type=std_logic lab=phi2dd}
C {devices/lab_pin.sym} 20 220 1 0 {name=l26 sig_type=std_logic lab=div2d}
C {devices/ipin.sym} -350 -70 0 0 {name=p1 lab=clk_dig}
C {devices/opin.sym} 300 -180 0 0 {name=p3 lab=phi2}
C {devices/opin.sym} 300 -140 0 0 {name=p4 lab=phi2b}
C {devices/opin.sym} 300 -20 0 0 {name=p5 lab=phi1}
C {devices/opin.sym} 300 20 0 0 {name=p6 lab=phi1b}
C {devices/opin.sym} 300 200 0 0 {name=p7 lab=cclk}
C {devices/opin.sym} 300 240 0 0 {name=p8 lab=cclkb}
C {devices/ipin.sym} -500 -120 0 0 {name=p10 lab=vpb}
C {devices/ipin.sym} -500 -90 0 0 {name=p11 lab=vnb}
C {clkgen/comp_clks.sym} 230 -160 0 0 {name=X4 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {clkgen/comp_clks.sym} 230 0 0 0 {name=X7 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {clkgen/comp_clks.sym} 230 220 0 0 {name=X10 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} 160 220 1 0 {name=l3 sig_type=std_logic lab=div2dd}
C {clkgen/comp_clks_1stage.sym} -190 -70 0 0 {name=X1 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {inv/inv_weak_pulldown.sym} -50 -160 0 0 {name=X2 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pulldown.sym} -50 0 0 0 {name=X5 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pulldown.sym} -50 220 0 0 {name=X8 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pulldown.sym} 90 220 0 0 {name=X9 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pullup.sym} 90 -160 0 0 {name=X3 Wpmos=1.26 Lpmos=0.54 Wmin=0.42 Lmin=0.18}
C {inv/inv_weak_pullup.sym} 90 0 0 0 {name=X6 Wpmos=1.26 Lpmos=0.54 Wmin=0.42 Lmin=0.18}
C {devices/ipin.sym} -500 -260 0 0 {name=p12 lab=vdda}
C {devices/ipin.sym} -500 -230 0 0 {name=p13 lab=vssa}
C {devices/lab_pin.sym} -50 -200 0 0 {name=l4 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 90 -200 0 0 {name=l5 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -50 -120 0 0 {name=l9 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 90 -120 0 0 {name=l10 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} -50 -40 0 0 {name=l11 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -50 40 0 0 {name=l15 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 90 -40 0 0 {name=l6 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 90 40 0 0 {name=l7 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} -50 180 0 0 {name=l16 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -50 260 0 0 {name=l17 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 90 180 0 0 {name=l22 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 90 260 0 0 {name=l23 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 40 -20 0 0 {name=l24 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -100 240 0 0 {name=l1 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 40 240 0 0 {name=l2 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} -190 -110 0 0 {name=l12 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -190 -30 0 0 {name=l25 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 230 -120 0 0 {name=l27 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 230 40 0 0 {name=l28 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 230 260 0 0 {name=l29 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 230 180 0 0 {name=l30 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 230 -40 0 0 {name=l31 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 230 -200 0 0 {name=l32 sig_type=std_logic lab=vdda}
C {devices/ipin.sym} -350 220 0 0 {name=p2 lab=cclk_dig}
C {devices/ipin.sym} -500 -200 0 0 {name=p9 lab=vccd}
