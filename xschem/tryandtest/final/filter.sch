v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 340 -130 1160 -130 { lab=stage1}
N 110 -130 240 -130 { lab=#net1}
N 110 -70 1020 -70 { lab=GND}
N 70 -130 110 -130 { lab=#net1}
N 340 -230 340 -130 { lab=stage1}
N 240 -230 240 -130 { lab=#net1}
N 60 -230 60 -130 { lab=#net1}
N 60 -130 70 -130 { lab=#net1}
N -40 -230 -40 -130 { lab=in}
N -70 -130 -40 -130 { lab=in}
N 110 150 240 150 { lab=#net2}
N 70 150 110 150 { lab=#net2}
N 340 50 340 150 { lab=stage2}
N 240 50 240 150 { lab=#net2}
N 60 50 60 150 { lab=#net2}
N 60 150 70 150 { lab=#net2}
N -40 50 -40 150 { lab=stage1}
N -70 150 -40 150 { lab=stage1}
N 340 150 680 150 { lab=stage2}
N 110 210 540 210 { lab=GND}
N 110 410 240 410 { lab=#net3}
N 70 410 110 410 { lab=#net3}
N 340 310 340 410 { lab=out}
N 240 310 240 410 { lab=#net3}
N 60 310 60 410 { lab=#net3}
N 60 410 70 410 { lab=#net3}
N -40 310 -40 410 { lab=stage2}
N -70 410 -40 410 { lab=stage2}
N 400 -190 1160 -190 {
lab=GND}
N 400 90 680 90 {
lab=GND}
N 360 520 400 520 {
lab=#net4}
N 400 470 400 520 {
lab=#net4}
N 380 350 400 350 {
lab=#net4}
N 380 350 380 520 {
lab=#net4}
N 340 410 670 410 {
lab=out}
C {sky130_fd_pr/cap_mim_m3_2.sym} 400 -160 0 0 {name=C12 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 110 -100 0 0 {name=CS1 model=cap_mim_m3_1 W=WCS1 L=LCS1 MF=1 spiceprefix=X}
C {transmission_gate/transmission_gate.sym} 290 -230 0 0 {name=X1 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {sky130_fd_pr/cap_mim_m3_1.sym} 400 -100 0 0 {name=C11 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {devices/gnd.sym} 290 -70 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -70 -130 0 0 {name=l2 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 290 -270 0 0 {name=l3 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 290 -190 0 0 {name=l4 sig_type=std_logic lab=phi2}
C {transmission_gate/transmission_gate.sym} 10 -230 0 0 {name=X2 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 10 -270 0 0 {name=l5 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 10 -190 0 0 {name=l6 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1160 -130 0 1 {name=l7 sig_type=std_logic lab=stage1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 110 180 0 0 {name=CS2 model=cap_mim_m3_1 W=WCS2 L=LCS2 MF=1 spiceprefix=X}
C {transmission_gate/transmission_gate.sym} 290 50 0 0 {name=X3 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 290 10 0 0 {name=l9 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 290 90 0 0 {name=l10 sig_type=std_logic lab=phi2}
C {transmission_gate/transmission_gate.sym} 10 50 0 0 {name=X4 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 10 10 0 0 {name=l11 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 10 90 0 0 {name=l12 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -70 150 0 0 {name=l13 sig_type=std_logic lab=stage1}
C {devices/lab_pin.sym} 680 150 0 1 {name=l14 sig_type=std_logic lab=stage2}
C {devices/gnd.sym} 290 210 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/cap_mim_m3_2.sym} 400 380 0 0 {name=C3 model=cap_mim_m3_2 W=WC3 L=LC3 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 110 440 0 0 {name=CS3 model=cap_mim_m3_1 W=WCS3 L=LCS3 MF=1 spiceprefix=X}
C {transmission_gate/transmission_gate.sym} 290 310 0 0 {name=X5 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 290 270 0 0 {name=l15 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 290 350 0 0 {name=l16 sig_type=std_logic lab=phi2}
C {transmission_gate/transmission_gate.sym} 10 310 0 0 {name=X6 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 10 270 0 0 {name=l17 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 10 350 0 0 {name=l18 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -70 410 0 0 {name=l19 sig_type=std_logic lab=stage2}
C {devices/gnd.sym} 110 470 0 0 {name=l20 lab=GND}
C {devices/ipin.sym} -80 -380 0 0 {name=p1 lab=in}
C {devices/opin.sym} 670 410 0 0 {name=p2 lab=out}
C {devices/ipin.sym} -80 -360 0 0 {name=p3 lab=phi1}
C {devices/ipin.sym} -80 -340 0 0 {name=p4 lab=phi2}
C {devices/ipin.sym} -80 -320 0 0 {name=p5 lab=phi1b}
C {devices/ipin.sym} -80 -300 0 0 {name=p6 lab=phi2b}
C {devices/ipin.sym} -80 -280 0 0 {name=p7 lab=cclk}
C {devices/ipin.sym} -80 -260 0 0 {name=p8 lab=cclkb}
C {devices/lab_pin.sym} 320 470 0 0 {name=l22 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 320 570 0 0 {name=l23 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 280 500 0 0 {name=l24 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 280 540 0 0 {name=l25 sig_type=std_logic lab=thresh2}
C {devices/ipin.sym} -80 -240 0 0 {name=p9 lab=thresh1}
C {devices/ipin.sym} -80 -220 0 0 {name=p10 lab=thresh2}
C {sky130_fd_pr/cap_mim_m3_2.sym} 540 -160 0 0 {name=C14 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 540 -100 0 0 {name=C13 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 680 -160 0 0 {name=C16 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 680 -100 0 0 {name=C15 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 820 -160 0 0 {name=C18 model=cap_mim_m3_2 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 820 -100 0 0 {name=C17 model=cap_mim_m3_1 W=WC1 L=LC1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 400 120 0 0 {name=C22 model=cap_mim_m3_2 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 400 180 0 0 {name=C21 model=cap_mim_m3_1 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 540 120 0 0 {name=C24 model=cap_mim_m3_2 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 540 180 0 0 {name=C23 model=cap_mim_m3_1 W=WC2 L=LC2 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1020 -160 0 0 {name=C1B2 model=cap_mim_m3_2 W=WC1B L=LC1B MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1020 -100 0 0 {name=C1B1 model=cap_mim_m3_1 W=WC1B L=LC1B MF=1 spiceprefix=X}
C {devices/gnd.sym} 1160 -190 0 0 {name=l21 lab=GND}
C {devices/gnd.sym} 680 90 0 0 {name=l26 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 400 440 0 0 {name=C1 model=cap_mim_m3_1 W=WC3 L=LC3 MF=1 spiceprefix=X}
C {mux/analogMux.sym} 280 570 0 0 {name=x7}
