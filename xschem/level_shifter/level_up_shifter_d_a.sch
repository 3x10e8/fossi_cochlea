v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 200 0 220 0 {
lab=outb}
N -170 -40 -100 -40 {
lab=#net1}
N -170 0 -100 0 {
lab=#net2}
N -100 -10 -100 0 {
lab=#net2}
N -300 -20 -230 -20 {
lab=clk}
N 200 20 220 20 {
lab=outb}
C {clkgen/comp_clks_1stage.sym} -200 -20 0 0 {name=X1 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} -200 20 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 200 -40 2 0 {name=l36 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 200 40 2 0 {name=l38 sig_type=std_logic lab=vssd}
C {level_shifter/level_up_shifter_no_inv.sym} 50 0 0 0 {name=x15}
C {devices/lab_pin.sym} -200 -60 0 0 {name=l12 sig_type=std_logic lab=vccd}
C {devices/ipin.sym} -300 -20 0 0 {name=p1 lab=clk}
C {devices/opin.sym} 220 0 0 0 {name=p1 lab=outb}
C {devices/opin.sym} 220 20 0 0 {name=p1 lab=out}
C {devices/iopin.sym} -290 -190 2 0 {name=p14 lab=vdda}
C {devices/iopin.sym} -290 -170 2 0 {name=p13 lab=vccd}
C {devices/iopin.sym} -290 -150 2 0 {name=p12 lab=vssd}
