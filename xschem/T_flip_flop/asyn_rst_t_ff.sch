v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -730 -370 -680 -370 { lab=#net1}
N -930 -350 -850 -350 { lab=T}
N -850 -460 -850 -390 { lab=Q}
N -850 -460 -470 -460 { lab=Q}
N -470 -460 -470 -390 { lab=Q}
N -500 -390 -430 -390 { lab=Q}
N -700 -390 -680 -390 { lab=CLK}
N -700 -390 -700 -300 { lab=CLK}
N -930 -300 -700 -300 { lab=CLK}
N -680 -350 -680 -290 { lab=RSTB}
N -680 -290 -680 -270 { lab=RSTB}
N -930 -270 -680 -270 { lab=RSTB}
N -940 -270 -930 -270 { lab=RSTB}
N -470 -310 -400 -310 { lab=Q_N}
N -400 -310 -390 -310 { lab=Q_N}
C {sky130_stdcells/xor2_1.sym} -790 -370 2 1 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/ipin.sym} -930 -350 0 0 {name=p1 lab=T}
C {devices/ipin.sym} -930 -300 0 0 {name=p2 lab=CLK}
C {devices/opin.sym} -430 -390 0 0 {name=p3 lab=Q}
C {devices/ipin.sym} -930 -270 0 0 {name=p4 lab=RSTB}
C {devices/opin.sym} -400 -310 0 0 {name=p5 lab=Q_N}
C {sky130_stdcells/inv_1.sym} -470 -350 1 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtp_1.sym} -590 -370 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
