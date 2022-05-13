v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -170 -50 -170 50 { lab=clk}
N -20 50 20 50 { lab=clkb}
N -20 -50 20 -50 { lab=clka}
N -220 0 -170 0 { lab=clk}
N -170 -50 -120 -50 { lab=clk}
N -170 50 -120 50 { lab=clk}
C {devices/ipin.sym} -220 0 0 0 {name=p1 lab=clk}
C {devices/opin.sym} 20 -50 0 0 {name=p2 lab=clka}
C {devices/opin.sym} 20 50 0 0 {name=p3 lab=clkb}
C {transmission_gate/transmission_gate.sym} -70 50 2 0 {name=X3 Wpmos=Wpmos Lpmos=Lpmos Wnmos=Wnmos Lnmos=Lnmos}
C {inv/inv.sym} -70 -50 0 0 {name=X1 Wpmos=Wpmos Lpmos=Lpmos Wnmos=Wnmos Lnmos=Lnmos}
C {devices/ipin.sym} -220 -90 0 0 {name=p4 lab=vdda}
C {devices/ipin.sym} -220 90 0 0 {name=p5 lab=vssa}
C {devices/lab_pin.sym} -70 -10 0 0 {name=l1 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} -70 -90 2 0 {name=l2 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -70 10 2 0 {name=l3 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -70 90 0 0 {name=l4 sig_type=std_logic lab=vssa}
