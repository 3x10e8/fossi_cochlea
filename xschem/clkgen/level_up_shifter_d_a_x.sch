v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -30 -90 30 -90 { lab=div2}
N 90 -110 160 -110 {
lab=#net1}
N 90 -70 160 -70 {
lab=#net2}
N 160 -80 160 -70 {
lab=#net2}
C {devices/ipin.sym} -30 -90 0 0 {name=p1 lab=div2}
C {clkgen/comp_clks_1stage.sym} 60 -90 0 0 {name=X1 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} 60 -50 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 460 -110 2 0 {name=l36 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 460 -90 2 0 {name=l37 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 460 -30 2 0 {name=l38 sig_type=std_logic lab=vssd}
C {level_shifter/level_up_shifter_no_inv.sym} 310 -70 0 0 {name=x15}
C {devices/lab_pin.sym} 60 -130 0 0 {name=l12 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 460 -70 2 0 {name=l1 sig_type=std_logic lab=outb}
C {devices/lab_pin.sym} 460 -50 2 0 {name=l2 sig_type=std_logic lab=out}
