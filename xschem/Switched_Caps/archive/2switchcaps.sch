v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {pmos and nmos are both
- min W and min L to minimize cap.
- matched for charge-injection (same W/L)} 130 -130 0 0 0.4 0.4 {}
T {This approximates a resistor} -140 270 0 0 0.4 0.4 {}
T {This cap is bigger} 200 160 0 0 0.4 0.4 {}
N -50 0 0 0 { lab=c1}
N 0 0 0 60 { lab=c1}
N 150 0 200 0 { lab=out}
N 200 0 200 60 { lab=out}
N 200 0 250 0 { lab=out}
N 0 0 50 0 { lab=c1}
N -240 0 -150 0 { lab=in}
N -100 40 -100 120 { lab=phi1_clk_n}
N -100 -120 -100 -40 { lab=phi1_clk_p}
N 100 -120 100 -40 { lab=phi2_clk_p}
N 100 40 100 120 { lab=phi2_clk_n}
C {devices/gnd.sym} 0 120 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 0 90 0 0 {name=C1 model=cap_mim_m3_1 W=Wcap1 L=Lcap1 MF=1 spiceprefix=X}
C {devices/gnd.sym} 200 120 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 200 90 0 0 {name=C2 model=cap_mim_m3_1 W=Wcap2 L=Lcap2 MF=1 spiceprefix=X}
C {devices/iopin.sym} 250 0 0 0 {name=p1 lab=out}
C {devices/iopin.sym} -240 0 2 0 {name=p2 lab=in}
C {devices/ipin.sym} -100 120 3 0 {name=p3 lab=phi1_clk_n}
C {devices/ipin.sym} -100 -120 1 0 {name=p4 lab=phi1_clk_p}
C {devices/ipin.sym} 100 -120 1 0 {name=p5 lab=phi2_clk_p}
C {devices/ipin.sym} 100 120 3 0 {name=p6 lab=phi2_clk_n}
C {devices/lab_pin.sym} 0 0 1 0 {name=l1 sig_type=std_logic lab=c1}
C {devices/netlist.sym} -90 -80 0 0 {name=s1 value=".ic v(c1)=0 v(out)=0"}
C {transmission_gate/transmission_gate.sym} -100 0 0 0 {name=X1 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/transmission_gate.sym} 100 0 0 0 {name=X2 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/ipin.sym} -240 -40 0 0 {name=p7 lab=vdda}
C {devices/ipin.sym} -240 -20 0 0 {name=p8 lab=vssa}
C {devices/lab_pin.sym} -80 -40 1 0 {name=l4 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -80 40 3 0 {name=l5 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 120 40 3 0 {name=l6 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 120 -40 1 0 {name=l7 sig_type=std_logic lab=vdda}
