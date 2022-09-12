v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 100 -140 100 -70 { lab=#net1}
C {devices/lab_pin.sym} 100 -70 2 0 {name=l5 sig_type=std_logic lab=out}
C {sky130_fd_pr/cap_mim_m3_1.sym} 70 -140 3 0 {name=C1 model=cap_mim_m3_1 W=Wcap L=Lcap MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 520 -140 2 0 {name=l17 sig_type=std_logic lab=clk}
C {tryandtest/2switchcaps.sym} 170 -140 0 0 {name=X1 Wcap=Wcap Lcap=Lcap}
C {devices/lab_pin.sym} 430 -60 3 0 {name=l4 sig_type=std_logic lab=phi2}
C {tryandtest/2switchcaps.sym} 310 -140 0 0 {name=X2 Wcap=Wcap Lcap=Lcap}
C {devices/lab_pin.sym} 430 -200 1 0 {name=l7 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 470 -60 3 0 {name=l9 sig_type=std_logic lab=phi1}
C {tryandtest/2switchcaps.sym} 450 -140 0 0 {name=X3 Wcap=Wcap Lcap=Lcap}
C {devices/lab_pin.sym} 470 -200 1 0 {name=l11 sig_type=std_logic lab=phi1b}
C {devices/ipin.sym} 60 -320 0 0 {name=p1 lab=inp}
C {devices/ipin.sym} 60 -300 0 0 {name=p2 lab=clk}
C {devices/ipin.sym} 60 -280 0 0 {name=p3 lab=phi1}
C {devices/ipin.sym} 60 -260 0 0 {name=p4 lab=phi2}
C {devices/opin.sym} 560 -300 0 0 {name=p5 lab=out}
C {sky130_stdcells/inv_1.sym} 160 -300 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 360 -300 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 120 -300 0 0 {name=l13 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 320 -300 0 0 {name=l14 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 200 -300 2 0 {name=l15 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 400 -300 2 0 {name=l16 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 290 -60 3 0 {name=l1 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 290 -200 1 0 {name=l2 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 330 -60 3 0 {name=l3 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 330 -200 1 0 {name=l6 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 150 -60 3 0 {name=l8 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 150 -200 1 0 {name=l10 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 190 -60 3 0 {name=l22 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 190 -200 1 0 {name=l23 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 40 -140 0 0 {name=l24 sig_type=std_logic lab=inp}
