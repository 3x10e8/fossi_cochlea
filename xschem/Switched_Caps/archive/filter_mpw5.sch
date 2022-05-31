v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 330 0 1150 0 { lab=fb}
N 150 0 230 0 { lab=#net1}
N 70 60 1010 60 { lab=vssa}
N 110 0 150 0 { lab=#net1}
N 100 0 110 0 { lab=#net1}
N -30 0 0 0 { lab=in}
N 580 230 710 230 { lab=#net2}
N 540 230 580 230 { lab=#net2}
N 530 230 540 230 { lab=#net2}
N 400 230 430 230 { lab=fb}
N 810 230 1150 230 { lab=stage2}
N 500 290 1010 290 { lab=vssa}
N 860 470 990 470 { lab=#net3}
N 820 470 860 470 { lab=#net3}
N 810 470 820 470 { lab=#net3}
N 680 470 710 470 { lab=stage2}
N 390 -60 1150 -60 {
lab=vssa}
N 870 170 1150 170 {
lab=vssa}
N 1110 620 1150 620 {
lab=#net4}
N 1150 530 1150 620 {
lab=#net4}
N 1130 410 1150 410 {
lab=#net4}
N 1130 410 1130 620 {
lab=#net4}
N 1090 470 1270 470 {
lab=out}
N 70 40 70 60 {
lab=vssa}
N 300 40 300 60 {
lab=vssa}
N 500 270 500 290 {
lab=vssa}
N 780 270 780 290 {
lab=vssa}
N 780 510 780 530 {
lab=vssa}
N 780 530 1060 530 {
lab=vssa}
N 1060 510 1060 530 {
lab=vssa}
N 370 -100 370 0 {
lab=fb}
N -30 -100 370 -100 {
lab=fb}
C {sky130_fd_pr/cap_mim_m3_2.sym} 390 -30 0 0 {name=C12 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 150 30 0 0 {name=CS1 model=cap_mim_m3_1 W=WCS1 L=LCS1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 390 30 0 0 {name=C11 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} -30 0 0 0 {name=l2 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 280 -40 0 0 {name=l3 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 280 40 0 0 {name=l4 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 50 -40 0 0 {name=l5 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 50 40 0 0 {name=l6 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1150 0 0 1 {name=l7 sig_type=std_logic lab=fb}
C {sky130_fd_pr/cap_mim_m3_1.sym} 580 260 0 0 {name=CS2 model=cap_mim_m3_1 W=WCS2 L=LCS2 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 760 190 0 0 {name=l9 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 760 270 0 0 {name=l10 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 480 190 0 0 {name=l11 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 480 270 0 0 {name=l12 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 400 230 0 0 {name=l13 sig_type=std_logic lab=fb}
C {devices/lab_pin.sym} 1150 230 0 1 {name=l14 sig_type=std_logic lab=stage2}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1150 440 0 0 {name=C3 model=cap_mim_m3_2 W=WC3 L=LC3 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 860 500 0 0 {name=CS3 model=cap_mim_m3_1 W=WCS3 L=LCS3 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1040 430 0 0 {name=l15 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1040 510 0 0 {name=l16 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 760 430 0 0 {name=l17 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 760 510 0 0 {name=l18 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 680 470 0 0 {name=l19 sig_type=std_logic lab=stage2}
C {devices/ipin.sym} -90 130 0 0 {name=p1 lab=in}
C {devices/opin.sym} 1270 470 0 0 {name=p2 lab=out}
C {devices/ipin.sym} -90 150 0 0 {name=p3 lab=phi1}
C {devices/ipin.sym} -90 170 0 0 {name=p4 lab=phi2}
C {devices/ipin.sym} -90 190 0 0 {name=p5 lab=phi1b}
C {devices/ipin.sym} -90 210 0 0 {name=p6 lab=phi2b}
C {devices/ipin.sym} -90 230 0 0 {name=p7 lab=cclk}
C {devices/ipin.sym} -90 250 0 0 {name=p8 lab=cclkb}
C {devices/lab_pin.sym} 1070 570 2 0 {name=l22 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 1070 670 2 0 {name=l23 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 1030 600 0 0 {name=l24 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 1030 640 0 0 {name=l25 sig_type=std_logic lab=thresh2}
C {devices/ipin.sym} -90 270 0 0 {name=p9 lab=thresh1}
C {devices/ipin.sym} -90 290 0 0 {name=p10 lab=thresh2}
C {sky130_fd_pr/cap_mim_m3_2.sym} 530 -30 0 0 {name=C14 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 530 30 0 0 {name=C13 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 670 -30 0 0 {name=C16 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 670 30 0 0 {name=C15 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 810 -30 0 0 {name=C18 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 810 30 0 0 {name=C17 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 870 200 0 0 {name=C22 model=cap_mim_m3_2 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 870 260 0 0 {name=C21 model=cap_mim_m3_1 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1010 200 0 0 {name=C24 model=cap_mim_m3_2 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1010 260 0 0 {name=C23 model=cap_mim_m3_1 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1010 -30 0 0 {name=C1B2 model=cap_mim_m3_2 W=WC1B L=LC1B MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1010 30 0 0 {name=C1B1 model=cap_mim_m3_1 W=WC1B L=LC1B MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1150 500 0 0 {name=C1 model=cap_mim_m3_1 W=WC3 L=LC3 MF=1 spiceprefix=X}
C {mux/analogMux.sym} 1070 620 0 0 {name=x7}
C {devices/ipin.sym} -90 80 0 0 {name=p11 lab=vdda}
C {devices/ipin.sym} -90 100 0 0 {name=p12 lab=vssa}
C {devices/lab_pin.sym} 70 -40 2 0 {name=l27 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 300 -40 2 0 {name=l28 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 500 190 2 0 {name=l29 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 780 190 2 0 {name=l30 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 780 430 2 0 {name=l31 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1060 430 2 0 {name=l32 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 70 60 0 0 {name=l1 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 500 290 0 0 {name=l8 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 780 530 0 0 {name=l20 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 1150 -60 2 0 {name=l21 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 1150 170 2 0 {name=l26 sig_type=std_logic lab=vssa}
C {transmission_gate/transmission_gate.sym} 50 0 0 0 {name=X1 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 280 0 0 0 {name=X2 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 480 230 0 0 {name=X3 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 760 230 0 0 {name=X4 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 760 470 0 0 {name=X5 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 1040 470 0 0 {name=X6 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} 1050 670 0 0 {name=l33 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 1050 570 0 0 {name=l34 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -30 -100 0 0 {name=l35 sig_type=std_logic lab=fb}
C {devices/ipin.sym} -90 60 0 0 {name=p13 lab=fb}
