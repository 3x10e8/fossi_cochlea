v {xschem version=3.1.0 file_version=1.2 }
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
N -220 -90 -70 -90 {
lab=vdd}
N -220 120 -50 120 {
lab=vss}
N -50 90 -50 120 {
lab=vss}
N -70 -10 -70 10 {
lab=vss}
C {devices/ipin.sym} -220 0 0 0 {name=p1 lab=clk}
C {devices/opin.sym} 20 -50 0 0 {name=p2 lab=clka}
C {devices/opin.sym} 20 50 0 0 {name=p3 lab=clkb}
C {inv/inv.sym} -70 -50 0 0 {name=X1 Wpmos=Wpmos Lpmos=Lpmos Wnmos=Wnmos Lnmos=Lnmos}
C {devices/lab_pin.sym} -70 0 0 0 {name=l1 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -70 90 0 0 {name=l3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -50 10 0 1 {name=l3 sig_type=std_logic lab=vdd}
C {xschem/transmission_gate/tg.sym} -70 50 0 0 {name=x2 Wpmos=0.63 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/iopin.sym} -220 -90 2 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -220 120 2 0 {name=p1 lab=vss}
