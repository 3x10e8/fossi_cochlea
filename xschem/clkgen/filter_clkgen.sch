v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {http://diychip.org/sky130/sky130_fd_sc_lp/cells/dfrbp/} -240 360 0 0 0.2 0.2 {}
T {Divide by 2} -220 230 0 0 0.4 0.4 {}
T {Generate 
threshold
swapping clk} 10 80 2 0 0.4 0.4 {}
T {Generate 
non-overlapping 
phi1/phi2 clks} 40 -260 2 0 0.4 0.4 {}
T {clk from RISC} -420 -190 0 0 0.4 0.4 {}
T {To next wavelet (unison)} 130 280 0 0 0.4 0.4 {}
T {Comparator
sampling clk} 370 -360 0 0 0.4 0.4 {}
T {Last cap
thresh clk} 460 -60 0 0 0.4 0.4 {}
T {used with digital cells} -400 -330 0 0 0.4 0.4 {}
N 460 -230 490 -230 { lab=phi2b}
N 330 -90 370 -90 { lab=phi1dd}
N 460 -70 490 -70 { lab=phi1b}
N 460 -270 490 -270 { lab=phi2}
N 460 -110 490 -110 { lab=phi1}
N 190 -90 230 -90 { lab=phi1d}
N 330 -250 370 -250 { lab=phi2dd}
N 190 -250 230 -250 { lab=phi2d}
N 50 -250 50 -180 { lab=#net1}
N 50 -250 90 -250 { lab=#net1}
N 50 -140 50 -90 { lab=#net2}
N 50 -90 90 -90 { lab=#net2}
N -280 290 -260 290 { lab=#net3}
N -280 290 -280 350 { lab=#net3}
N -280 350 -80 350 { lab=#net3}
N -80 290 -80 350 { lab=#net3}
N -340 -160 -340 270 { lab=clk}
N -340 270 -260 270 { lab=clk}
N -400 -160 -340 -160 { lab=clk}
N -400 310 -260 310 { lab=rstb}
N 430 150 460 150 { lab=cclkb}
N 430 110 460 110 { lab=cclk}
N -80 270 340 270 { lab=clkdiv2}
N -50 130 90 130 { lab=#net4}
N 190 130 210 130 { lab=div2d}
N 310 130 340 130 { lab=div2dd}
N -340 -160 -30 -160 { lab=clk}
N -60 200 -60 270 { lab=clkdiv2}
N -200 200 -60 200 { lab=clkdiv2}
N -200 150 -200 200 { lab=clkdiv2}
N -200 150 -170 150 { lab=clkdiv2}
N -340 110 -170 110 { lab=clk}
N 30 -180 50 -180 {
lab=#net1}
N 30 -140 50 -140 {
lab=#net2}
C {devices/lab_pin.sym} 210 -90 3 0 {name=l8 sig_type=std_logic lab=phi1d}
C {devices/lab_pin.sym} 90 -70 0 0 {name=l13 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 350 -90 3 0 {name=l14 sig_type=std_logic lab=phi1dd}
C {devices/lab_pin.sym} 210 -250 3 0 {name=l18 sig_type=std_logic lab=phi2d}
C {devices/lab_pin.sym} 230 -270 0 0 {name=l19 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} 90 -230 0 0 {name=l20 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 350 -250 3 0 {name=l21 sig_type=std_logic lab=phi2dd}
C {sky130_stdcells/dfrbp_1.sym} -170 290 0 0 {name=x11 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 200 130 1 0 {name=l26 sig_type=std_logic lab=div2d}
C {devices/ipin.sym} -400 -160 0 0 {name=p1 lab=clk}
C {devices/ipin.sym} -400 310 0 0 {name=p2 lab=rstb}
C {devices/opin.sym} 490 -270 0 0 {name=p3 lab=phi2}
C {devices/opin.sym} 490 -230 0 0 {name=p4 lab=phi2b}
C {devices/opin.sym} 490 -110 0 0 {name=p5 lab=phi1}
C {devices/opin.sym} 490 -70 0 0 {name=p6 lab=phi1b}
C {devices/opin.sym} 460 110 0 0 {name=p7 lab=cclk}
C {devices/opin.sym} 460 150 0 0 {name=p8 lab=cclkb}
C {devices/opin.sym} 340 270 0 0 {name=p9 lab=clkdiv2}
C {devices/ipin.sym} -400 -260 0 0 {name=p10 lab=vpb}
C {devices/ipin.sym} -400 -230 0 0 {name=p11 lab=vnb}
C {clkgen/comp_clks.sym} 420 -250 0 0 {name=X4 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {clkgen/comp_clks.sym} 420 -90 0 0 {name=X7 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {clkgen/comp_clks.sym} 390 130 0 0 {name=X10 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} 320 130 1 0 {name=l3 sig_type=std_logic lab=div2dd}
C {clkgen/comp_clks_1stage.sym} 0 -160 0 0 {name=X1 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {sky130_stdcells/and2_0.sym} -110 130 0 0 {name=x2 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_lp__ }
C {inv/inv_weak_pulldown.sym} 140 -250 0 0 {name=X2 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pulldown.sym} 140 -90 0 0 {name=X5 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pulldown.sym} 140 130 0 0 {name=X8 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pulldown.sym} 260 130 0 0 {name=X9 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pullup.sym} 280 -250 0 0 {name=X3 Wpmos=1.26 Lpmos=0.54 Wmin=0.42 Lmin=0.18}
C {inv/inv_weak_pullup.sym} 280 -90 0 0 {name=X6 Wpmos=1.26 Lpmos=0.54 Wmin=0.42 Lmin=0.18}
C {devices/ipin.sym} -400 -400 0 0 {name=p12 lab=vdda}
C {devices/ipin.sym} -400 -370 0 0 {name=p13 lab=vssa}
C {devices/lab_pin.sym} 140 -290 2 0 {name=l4 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 280 -290 2 0 {name=l5 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 140 -210 0 0 {name=l9 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 280 -210 0 0 {name=l10 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 140 -130 2 0 {name=l11 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 140 -50 0 0 {name=l15 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 280 -130 2 0 {name=l6 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 280 -50 0 0 {name=l7 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 140 90 2 0 {name=l16 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 140 170 0 0 {name=l17 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 260 90 2 0 {name=l22 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 260 170 0 0 {name=l23 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 230 -110 0 0 {name=l24 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} 90 150 0 0 {name=l1 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 210 150 0 0 {name=l2 sig_type=std_logic lab=vnb}
C {devices/ipin.sym} -400 -330 0 0 {name=p14 lab=vccd}
C {devices/ipin.sym} -400 -300 0 0 {name=p15 lab=vssd}
C {devices/lab_pin.sym} 0 -200 2 0 {name=l12 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 0 -120 0 0 {name=l25 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 420 -210 0 0 {name=l27 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 420 -50 0 0 {name=l28 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 390 170 0 0 {name=l29 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 390 90 2 0 {name=l30 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 420 -130 2 0 {name=l31 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 420 -290 2 0 {name=l32 sig_type=std_logic lab=vdda}
