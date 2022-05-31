v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 140 20 240 20 {
lab=#net1}
N -20 0 20 0 {
lab=#net2}
N -340 20 -340 40 {
lab=no_ones_below_jm1}
N -340 40 -140 40 {
lab=no_ones_below_jm1}
N -140 20 -140 40 {
lab=no_ones_below_jm1}
N 420 0 480 0 {
lab=q_j}
C {devices/lab_pin.sym} -460 40 0 0 {name=l2 sig_type=std_logic lab=q_jm2}
C {sky130_stdcells/and2b_1.sym} -400 20 2 1 {name=x4 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -460 0 0 0 {name=l11 sig_type=std_logic lab=no_ones_below_jm2}
C {devices/lab_pin.sym} -340 20 2 0 {name=l16 sig_type=std_logic lab=no_ones_below_jm1}
C {devices/lab_pin.sym} 240 0 0 0 {name=l27 sig_type=std_logic lab=clkdiv2}
C {devices/lab_pin.sym} 240 40 0 0 {name=l28 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -140 -20 0 0 {name=l29 sig_type=std_logic lab=q_jm1}
C {sky130_stdcells/xor2_1.sym} 80 20 0 0 {name=x10 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_0.sym} -80 0 0 0 {name=x12 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 20 40 0 0 {name=l4 sig_type=std_logic lab=q_j}
C {devices/lab_pin.sym} 330 -30 0 0 {name=l86 sig_type=std_logic lab=vccd1}
C {digital/deff_rst_vccd.sym} 330 20 0 0 {name=X2}
C {devices/lab_pin.sym} 330 70 0 0 {name=l3 sig_type=std_logic lab=vssd1}
C {devices/ipin.sym} -580 -130 0 0 {name=p1 lab=no_ones_below_jm2}
C {devices/ipin.sym} -580 -100 0 0 {name=p2 lab=q_jm2}
C {devices/ipin.sym} -580 -70 0 0 {name=p3 lab=q_jm1}
C {devices/iopin.sym} -580 -260 2 0 {name=p6 lab=vccd1}
C {devices/iopin.sym} -580 -240 2 0 {name=p4 lab=vssd1}
C {devices/opin.sym} 480 0 0 0 {name=p7 lab=q_j}
C {devices/opin.sym} 480 -80 0 0 {name=p5 lab=no_ones_below_jm1}
C {devices/ipin.sym} -580 -200 0 0 {name=p8 lab=clkdiv2}
C {devices/ipin.sym} -580 -170 0 0 {name=p9 lab=rstb}
