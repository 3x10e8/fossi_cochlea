v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -70 0 60 0 { lab=cs3}
N -110 0 -70 0 { lab=cs3}
N -120 0 -110 0 { lab=cs3}
N -250 0 -220 0 { lab=in}
N 180 150 220 150 {
lab=c3b}
N 220 60 220 150 {
lab=c3b}
N 200 -60 220 -60 {
lab=c3b}
N 200 -60 200 150 {
lab=c3b}
N 160 0 340 0 {
lab=out}
N -150 40 -150 60 {
lab=vssd1}
N -150 60 130 60 {
lab=vssd1}
N 130 40 130 60 {
lab=vssd1}
C {devices/ipin.sym} -410 -160 0 0 {name=p4 lab=phi1}
C {devices/ipin.sym} -410 -140 0 0 {name=p5 lab=phi1b}
C {devices/lab_pin.sym} -70 0 1 0 {name=l1 sig_type=std_logic lab=cs3}
C {devices/netlist.sym} -240 -210 0 0 {name=s1 value="
*init cap top and bottom plates at 0V:
.ic v(c3s)=0 v(out)=0
*c3 will settle at thresh1
"}
C {devices/ipin.sym} -410 40 0 0 {name=p7 lab=thresh1}
C {devices/lab_pin.sym} 220 150 2 0 {name=l3 sig_type=std_logic lab=c3b}
C {devices/ipin.sym} -410 60 0 0 {name=p9 lab=thresh2}
C {sky130_fd_pr/cap_mim_m3_2.sym} 220 -30 0 0 {name=C3 model=cap_mim_m3_2 W=WC3 L=LC3 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -70 30 0 0 {name=CS3 model=cap_mim_m3_1 W=WCS3 L=LCS3 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 110 -40 0 0 {name=l15 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 110 40 0 0 {name=l16 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} -170 -40 0 0 {name=l17 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} -170 40 0 0 {name=l18 sig_type=std_logic lab=phi1}
C {devices/opin.sym} 340 0 0 0 {name=p11 lab=out}
C {devices/lab_pin.sym} 140 100 2 0 {name=l22 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 140 200 2 0 {name=l23 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 100 130 0 0 {name=l24 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 100 170 0 0 {name=l25 sig_type=std_logic lab=thresh2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 220 30 0 0 {name=C4 model=cap_mim_m3_1 W=WC3 L=LC3 MF=1 spiceprefix=X}
C {mux/analogMux.sym} 140 150 0 0 {name=x7}
C {devices/lab_pin.sym} -150 -40 2 0 {name=l31 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -150 60 0 0 {name=l20 sig_type=std_logic lab=vssd1}
C {transmission_gate/transmission_gate.sym} -170 0 0 0 {name=X5 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 110 0 0 0 {name=X6 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/ipin.sym} -410 -110 0 0 {name=p12 lab=phi2}
C {devices/ipin.sym} -410 -90 0 0 {name=p13 lab=phi2b}
C {devices/ipin.sym} -410 -60 0 0 {name=p14 lab=cclk}
C {devices/ipin.sym} -410 -40 0 0 {name=p15 lab=cclkb}
C {devices/ipin.sym} -410 0 0 0 {name=p1 lab=in}
C {devices/lab_pin.sym} -250 0 0 0 {name=l4 sig_type=std_logic lab=in}
C {devices/iopin.sym} -410 -220 2 0 {name=p6 lab=vdda1}
C {devices/iopin.sym} -410 -200 2 0 {name=p2 lab=vssd1}
C {devices/lab_pin.sym} 130 -40 2 0 {name=l5 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 120 100 0 0 {name=l6 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 120 200 0 0 {name=l2 sig_type=std_logic lab=vssd1}
