v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -340 20 -260 20 { lab=T}
N -260 -90 -260 -20 { lab=#net1}
N -260 -90 90 -90 { lab=#net1}
N 90 -90 90 -20 { lab=#net1}
N 210 -20 250 -20 { lab=Q_N}
N -90 20 -90 80 { lab=RSTB}
N -90 80 -90 100 { lab=RSTB}
N -340 100 -90 100 { lab=RSTB}
N -350 100 -340 100 { lab=RSTB}
N -140 0 -90 0 {
lab=#net2}
N 90 -20 130 -20 {
lab=#net1}
C {sky130_stdcells/xor2_1.sym} -200 0 2 1 {name=x3 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -340 20 0 0 {name=p1 lab=T}
C {devices/ipin.sym} -340 70 0 0 {name=p2 lab=CLK}
C {devices/opin.sym} 250 -20 0 0 {name=p3 lab=Q_N}
C {devices/ipin.sym} -340 100 0 0 {name=p4 lab=RSTB}
C {devices/iopin.sym} -350 -130 2 0 {name=p6 lab=vccd1}
C {devices/iopin.sym} -350 -110 2 0 {name=p7 lab=vssd1}
C {sky130_stdcells/inv_1.sym} 170 -20 0 0 {name=x1 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 0 -50 0 0 {name=l1 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 0 50 0 0 {name=l2 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} -90 -20 0 0 {name=l3 sig_type=std_logic lab=CLK}
C {digital/deff_rst_vccd.sym} 0 0 0 0 {name=X1}
