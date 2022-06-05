v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 370 0 1030 0 { lab=fb}
N 190 0 270 0 { lab=#net1}
N 70 60 1030 60 { lab=vssd1}
N 110 0 190 0 { lab=#net1}
N 100 0 110 0 { lab=#net1}
N -30 0 0 0 { lab=in}
N 190 200 270 200 { lab=#net2}
N 110 200 190 200 { lab=#net2}
N 100 200 110 200 { lab=#net2}
N -30 200 0 200 { lab=fb}
N 370 200 750 200 { lab=stage2}
N 70 260 630 260 { lab=vssd1}
N 190 360 270 360 { lab=#net3}
N 110 360 190 360 { lab=#net3}
N 100 360 110 360 { lab=#net3}
N -30 360 0 360 { lab=stage2}
N 490 -60 1030 -60 {
lab=vssd1}
N 490 140 750 140 {
lab=vssd1}
N 380 510 490 510 {
lab=#net4}
N 490 420 490 510 {
lab=#net4}
N 440 300 490 300 {
lab=#net4}
N 440 300 440 510 {
lab=#net4}
N 370 360 610 360 {
lab=out}
N 70 40 70 60 {
lab=vssd1}
N 340 40 340 60 {
lab=vssd1}
N 70 240 70 260 {
lab=vssd1}
N 340 240 340 260 {
lab=vssd1}
N 70 400 70 420 {
lab=vssd1}
N 70 420 340 420 {
lab=vssd1}
N 340 400 340 420 {
lab=vssd1}
N 440 -60 440 0 {
lab=fb}
N -30 -60 440 -60 {
lab=fb}
C {sky130_fd_pr/cap_mim_m3_2.sym} 490 -30 0 0 {name=C12 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 190 30 0 0 {name=CS1 model=cap_mim_m3_1 W=WCS1 L=LCS1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 490 30 0 0 {name=C11 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} -30 0 0 0 {name=l2 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 320 -40 0 0 {name=l3 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 320 40 0 0 {name=l4 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 50 -40 0 0 {name=l5 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 50 40 0 0 {name=l6 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1030 0 0 1 {name=l7 sig_type=std_logic lab=fb}
C {sky130_fd_pr/cap_mim_m3_1.sym} 190 230 0 0 {name=CS2 model=cap_mim_m3_1 W=WCS2 L=LCS2 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 320 160 0 0 {name=l9 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 320 240 0 0 {name=l10 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 50 160 0 0 {name=l11 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 50 240 0 0 {name=l12 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -30 200 0 0 {name=l13 sig_type=std_logic lab=fb}
C {devices/lab_pin.sym} 750 200 0 1 {name=l14 sig_type=std_logic lab=stage2}
C {sky130_fd_pr/cap_mim_m3_2.sym} 490 330 0 0 {name=C3 model=cap_mim_m3_2 W=WC3 L=LC3 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 190 390 0 0 {name=CS3 model=cap_mim_m3_1 W=WCS3 L=LCS3 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 320 320 0 0 {name=l15 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 320 400 0 0 {name=l16 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 50 320 0 0 {name=l17 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 50 400 0 0 {name=l18 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -30 360 0 0 {name=l19 sig_type=std_logic lab=stage2}
C {devices/ipin.sym} -100 0 0 0 {name=p1 lab=in}
C {devices/opin.sym} 610 360 0 0 {name=p2 lab=out}
C {devices/ipin.sym} -100 150 0 0 {name=p3 lab=phi1}
C {devices/ipin.sym} -100 170 0 0 {name=p4 lab=phi2}
C {devices/ipin.sym} -100 190 0 0 {name=p5 lab=phi1b}
C {devices/ipin.sym} -100 210 0 0 {name=p6 lab=phi2b}
C {devices/ipin.sym} -100 230 0 0 {name=p7 lab=cclk}
C {devices/ipin.sym} -100 250 0 0 {name=p8 lab=cclkb}
C {devices/lab_pin.sym} 340 460 2 0 {name=l22 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 340 560 2 0 {name=l23 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 300 490 0 0 {name=l24 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 300 530 0 0 {name=l25 sig_type=std_logic lab=thresh2}
C {devices/ipin.sym} -100 440 0 0 {name=p9 lab=thresh1}
C {devices/ipin.sym} -100 460 0 0 {name=p10 lab=thresh2}
C {sky130_fd_pr/cap_mim_m3_2.sym} 630 -30 0 0 {name=C14 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 630 30 0 0 {name=C13 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 770 -30 0 0 {name=C16 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 770 30 0 0 {name=C15 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 910 -30 0 0 {name=C18 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 910 30 0 0 {name=C17 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 490 170 0 0 {name=C22 model=cap_mim_m3_2 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 490 230 0 0 {name=C21 model=cap_mim_m3_1 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 630 170 0 0 {name=C24 model=cap_mim_m3_2 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 630 230 0 0 {name=C23 model=cap_mim_m3_1 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 490 390 0 0 {name=C1 model=cap_mim_m3_1 W=WC3 L=LC3 MF=1 spiceprefix=X}
C {mux/analogMux.sym} 340 510 0 0 {name=x7}
C {devices/lab_pin.sym} 340 -40 2 0 {name=l28 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 70 60 0 0 {name=l1 sig_type=std_logic lab=vssd1}
C {transmission_gate/transmission_gate.sym} 50 0 0 0 {name=X1 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 320 0 0 0 {name=X2 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 50 200 0 0 {name=X3 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 320 200 0 0 {name=X4 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 50 360 0 0 {name=X5 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 320 360 0 0 {name=X6 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} -30 -60 0 0 {name=l35 sig_type=std_logic lab=fb}
C {devices/ipin.sym} -100 -60 0 0 {name=p13 lab=fb}
C {devices/iopin.sym} -100 -140 2 0 {name=p14 lab=vdda1}
C {devices/iopin.sym} -100 -120 2 0 {name=p15 lab=vssd1}
C {devices/lab_pin.sym} 70 -40 2 0 {name=l27 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 70 160 2 0 {name=l29 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 70 320 2 0 {name=l30 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 340 320 2 0 {name=l31 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 340 160 2 0 {name=l32 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 320 460 0 0 {name=l34 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 70 260 0 0 {name=l8 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 70 420 0 0 {name=l20 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 750 140 2 0 {name=l21 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 1030 -60 2 0 {name=l26 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 320 560 0 0 {name=l33 sig_type=std_logic lab=vssd1}
