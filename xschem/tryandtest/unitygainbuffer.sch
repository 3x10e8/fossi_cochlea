v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 130 -140 250 -140 { lab=#net1}
N 90 -110 130 -110 { lab=#net1}
N 130 -140 130 -110 { lab=#net1}
N 290 -110 330 -110 { lab=out}
N 330 -110 330 -80 { lab=out}
N 90 -50 290 -50 { lab=#net2}
C {devices/lab_pin.sym} 50 -80 0 0 {name=l15 sig_type=std_logic lab=inp}
C {sky130_fd_pr/pfet3_01v8.sym} 110 -140 0 1 {name=M20
L=0.15
W=0.42
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 270 -140 0 0 {name=M1
L=0.15
W=0.42
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 70 -80 0 0 {name=M2
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 310 -80 0 1 {name=M3
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
C {devices/gnd.sym} 190 10 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 90 -170 0 0 {name=l2 lab=VDD}
C {devices/vdd.sym} 290 -170 0 0 {name=l3 lab=VDD}
C {devices/lab_pin.sym} 330 -80 2 0 {name=l7 sig_type=std_logic lab=out}
C {devices/opin.sym} 260 -20 0 0 {name=p2 lab=out}
C {devices/ipin.sym} 60 -180 0 0 {name=p4 lab=inp}
C {devices/vsource.sym} 400 -60 0 0 {name=V1 value=0.4}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 170 -20 0 0 {name=M4
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
C {devices/lab_pin.sym} 400 -90 2 0 {name=l4 sig_type=std_logic lab=bias}
C {devices/gnd.sym} 400 -30 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 150 -20 2 1 {name=l6 sig_type=std_logic lab=bias}
