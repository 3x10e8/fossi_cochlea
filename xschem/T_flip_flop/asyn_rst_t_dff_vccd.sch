v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -730 -370 -650 -370 { lab=#net1}
N -930 -350 -850 -350 { lab=T}
N -850 -420 -850 -390 { lab=Q}
N -850 -420 -520 -420 { lab=Q}
N -520 -420 -520 -290 { lab=Q}
N -550 -290 -480 -290 { lab=Q}
N -930 -220 -600 -220 { lab=CLK}
N -930 -270 -650 -270 { lab=RSTB}
N -940 -270 -930 -270 { lab=RSTB}
N -650 -370 -650 -300 {
lab=#net1}
C {sky130_stdcells/xor2_1.sym} -790 -370 2 1 {name=x3 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -930 -350 0 0 {name=p1 lab=T}
C {devices/ipin.sym} -930 -220 0 0 {name=p2 lab=CLK}
C {devices/opin.sym} -480 -290 0 0 {name=p3 lab=Q}
C {devices/ipin.sym} -930 -270 0 0 {name=p4 lab=RSTB}
C {devices/iopin.sym} -940 -500 2 0 {name=p6 lab=vccd1}
C {devices/iopin.sym} -940 -480 2 0 {name=p7 lab=vssd1}
C {tryandtest/deff_rst.sym} -650 -220 0 0 {name=X5}
