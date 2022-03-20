v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 90 -90 130 -90 { lab=out}
C {sky130_fd_pr/cap_mim_m3_1.sym} 130 -60 0 0 {name=C1 model=cap_mim_m3_1 W=Wcap L=Lcap MF=1 spiceprefix=X}
C {devices/res.sym} 60 -90 1 0 {name=R1
value=100M
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 130 -30 0 0 {name=l2 lab=GND}
C {devices/opin.sym} 150 -140 0 0 {name=p2 lab=out}
C {devices/ipin.sym} 50 -140 0 0 {name=p4 lab=inp}
C {devices/lab_pin.sym} 30 -90 0 0 {name=l105 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 130 -90 0 1 {name=l1 sig_type=std_logic lab=out}
