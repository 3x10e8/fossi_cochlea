v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -730 -420 -680 -420 { lab=#net1}
N -930 -400 -850 -400 { lab=T}
N -850 -510 -850 -440 { lab=Q}
N -850 -510 -470 -510 { lab=Q}
N -470 -510 -470 -440 { lab=Q}
N -500 -440 -430 -440 { lab=Q}
N -700 -440 -680 -440 { lab=CLK}
N -700 -440 -700 -350 { lab=CLK}
N -930 -350 -700 -350 { lab=CLK}
N -680 -400 -680 -340 { lab=RSTB}
N -680 -340 -680 -320 { lab=RSTB}
N -930 -320 -680 -320 { lab=RSTB}
N -940 -320 -930 -320 { lab=RSTB}
N -470 -360 -400 -360 { lab=Q_N}
N -400 -360 -390 -360 { lab=Q_N}
C {sky130_stdcells/xor2_1.sym} -790 -420 2 1 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/ipin.sym} -930 -400 0 0 {name=p1 lab=T}
C {devices/ipin.sym} -930 -350 0 0 {name=p2 lab=CLK}
C {devices/opin.sym} -430 -440 0 0 {name=p3 lab=Q}
C {devices/ipin.sym} -930 -320 0 0 {name=p4 lab=STB}
C {devices/opin.sym} -400 -360 0 0 {name=p5 lab=Q_N}
C {sky130_stdcells/inv_1.sym} -470 -400 1 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfstp_1.sym} -590 -420 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
