v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -170 -50 -170 50 { lab=clk}
N -20 50 20 50 { lab=clkt}
N -20 -50 20 -50 { lab=clki}
N -210 0 -170 0 { lab=clk}
N 120 50 160 50 { lab=clkb}
N 120 -50 160 -50 { lab=clka}
N -170 -50 -120 -50 { lab=clk}
N -170 50 -120 50 { lab=clk}
N -210 120 70 120 {
lab=vdd}
N -210 -90 70 -90 {
lab=vdd}
N 70 90 70 120 {
lab=vdd}
N -50 90 -50 120 {
lab=vdd}
N -70 -10 -70 10 {
lab=vss}
C {devices/lab_pin.sym} 0 -50 1 0 {name=l6 sig_type=std_logic lab=clki}
C {devices/ipin.sym} -210 0 0 0 {name=p1 lab=clk}
C {devices/opin.sym} 160 -50 0 0 {name=p2 lab=clka}
C {devices/opin.sym} 160 50 0 0 {name=p3 lab=clkb}
C {devices/lab_pin.sym} 0 50 3 0 {name=l1 sig_type=std_logic lab=clkt}
C {devices/lab_pin.sym} 70 10 2 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -70 90 0 0 {name=l5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -70 0 0 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 70 -10 0 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -50 10 2 0 {name=l3 sig_type=std_logic lab=vdd}
C {xschem/inv/inv.sym} -70 -50 0 0 {name=X1 Wpmos=Wpmos Lpmos=Lpmos Wnmos=Wnmos Lnmos=Lnmos}
C {xschem/inv/inv.sym} 70 -50 0 0 {name=X2 Wpmos=Wpmos Lpmos=Lpmos Wnmos=Wnmos Lnmos=Lnmos}
C {xschem/inv/inv.sym} 70 50 0 0 {name=X4 Wpmos=Wpmos Lpmos=Lpmos Wnmos=Wnmos Lnmos=Lnmos}
C {xschem/transmission_gate/tg.sym} -70 50 0 0 {name=x3 Wpmos=0.63 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/iopin.sym} -210 -90 2 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -210 120 2 0 {name=p1 lab=vss}
