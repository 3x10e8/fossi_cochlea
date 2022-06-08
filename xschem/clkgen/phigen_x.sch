v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 190 -50 220 -50 { lab=phi2b}
N 190 -90 220 -90 { lab=phi2}
N 60 -70 100 -70 { lab=phi2dd}
N -80 -70 -40 -70 { lab=phi2d}
C {devices/lab_pin.sym} -60 -70 3 0 {name=l18 sig_type=std_logic lab=phi2d}
C {devices/lab_pin.sym} -40 -90 0 0 {name=l19 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -180 -50 0 0 {name=l20 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 80 -70 3 0 {name=l21 sig_type=std_logic lab=phi2dd}
C {devices/opin.sym} 220 -90 0 0 {name=p3 lab=phi2}
C {devices/opin.sym} 220 -50 0 0 {name=p4 lab=phi2b}
C {clkgen/comp_clks.sym} 150 -70 0 0 {name=X4 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {inv/inv_weak_pulldown.sym} -130 -70 0 0 {name=X2 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pullup.sym} 10 -70 0 0 {name=X3 Wpmos=1.26 Lpmos=0.54 Wmin=0.42 Lmin=0.18}
C {devices/lab_pin.sym} -130 -110 0 0 {name=l4 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 10 -110 0 0 {name=l5 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 150 -110 0 0 {name=l32 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -130 -30 0 0 {name=l7 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 10 -30 0 0 {name=l9 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 150 -30 0 0 {name=l29 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -180 -70 0 0 {name=l1 sig_type=std_logic lab=inp}
