v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -110 410 -110 { lab=out}
N 80 -110 240 -110 { lab=#net1}
C {devices/gnd.sym} 130 -50 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 130 -80 0 0 {name=C1 model=cap_mim_m3_1 W=2 L=2 MF=1 spiceprefix=X}
C {devices/gnd.sym} 340 -50 0 0 {name=l14 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 340 -80 0 0 {name=C2 model=cap_mim_m3_1 W=Wcap L=Lcap MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 50 -150 0 0 {name=l17 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 270 -150 0 0 {name=l18 sig_type=std_logic lab=phi2}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 50 -130 1 0 {name=M1
L=0.15
W=0.42
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 270 -130 1 0 {name=M2
L=0.15
W=0.42
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/opin.sym} 190 -220 0 0 {name=p2 lab=out}
C {devices/ipin.sym} 90 -220 0 0 {name=p4 lab=phi2}
C {devices/lab_pin.sym} 20 -110 0 0 {name=l1 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 410 -110 0 1 {name=l2 sig_type=std_logic lab=out}
C {devices/ipin.sym} 90 -240 0 0 {name=p1 lab=phi1}
C {devices/ipin.sym} 90 -260 0 0 {name=p3 lab=inp}
