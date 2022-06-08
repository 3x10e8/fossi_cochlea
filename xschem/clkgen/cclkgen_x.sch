v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 150 -10 180 -10 { lab=cclkb_ana}
N 150 -50 180 -50 { lab=cclk_ana}
N -120 -30 -80 -30 { lab=div2d}
N 20 -30 60 -30 { lab=div2dd}
C {devices/lab_pin.sym} -100 -30 1 0 {name=l26 sig_type=std_logic lab=div2d}
C {devices/opin.sym} 180 -50 0 0 {name=p7 lab=cclk_ana}
C {devices/opin.sym} 180 -10 0 0 {name=p8 lab=cclkb_ana}
C {clkgen/comp_clks.sym} 110 -30 0 0 {name=X10 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} 40 -30 1 0 {name=l3 sig_type=std_logic lab=div2dd}
C {inv/inv_weak_pulldown.sym} -170 -30 0 0 {name=X8 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {inv/inv_weak_pulldown.sym} -30 -30 0 0 {name=X9 Wpmos=1.26 Lmin=0.18 Wmin=0.42 Lnmos=0.54}
C {devices/lab_pin.sym} -170 -70 0 0 {name=l16 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -30 -70 0 0 {name=l22 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -220 -10 0 0 {name=l1 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} -80 -10 0 0 {name=l2 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 110 -70 0 0 {name=l30 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -30 10 0 0 {name=l17 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -170 10 0 0 {name=l23 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 110 10 0 0 {name=l27 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -220 -30 0 0 {name=l4 sig_type=std_logic lab=in}
