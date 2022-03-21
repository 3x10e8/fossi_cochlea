v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 770 -90 880 -90 { lab=#net1}
N 880 -90 990 -90 { lab=#net1}
N 70 -220 110 -220 { lab=#net2}
N 110 -220 120 -220 { lab=#net2}
N 120 -220 240 -220 { lab=#net2}
N 90 -100 240 -100 { lab=high}
N 240 -160 240 -100 { lab=high}
N 30 -250 30 -190 { lab=FP}
N 30 -250 80 -250 { lab=FP}
N 30 -190 30 -70 { lab=FP}
N 30 -70 50 -70 { lab=FP}
N 90 -40 240 -40 { lab=GND}
N 440 -220 620 -220 { lab=#net3}
N 440 -40 590 -40 { lab=GND}
N 440 -160 440 -100 { lab=low}
N 440 -100 590 -100 { lab=low}
N 400 -190 400 -70 { lab=high}
N 280 -190 280 -70 { lab=low}
N 240 -120 400 -120 { lab=high}
N 280 -150 440 -150 { lab=low}
N 580 -250 660 -250 { lab=FN}
N 660 -250 660 -70 { lab=FN}
N 630 -70 660 -70 { lab=FN}
C {devices/vdd.sym} 770 -210 0 0 {name=l99 lab=VDD}
C {devices/vdd.sym} 990 -210 0 0 {name=l100 lab=VDD}
C {devices/gnd.sym} 880 -30 0 0 {name=l101 lab=GND}
C {devices/lab_pin.sym} 840 -60 0 0 {name=l106 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 810 -180 2 0 {name=l109 sig_type=std_logic lab=phi1}
C {sky130_fd_pr/pfet3_01v8.sym} 970 -180 0 0 {name=M3
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
C {sky130_fd_pr/pfet3_01v8.sym} 790 -180 0 1 {name=M5
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
C {devices/lab_pin.sym} 770 -150 0 0 {name=l124 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} 990 -150 0 1 {name=l125 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} 730 -120 0 0 {name=l15 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1030 -120 0 1 {name=l121 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 950 -180 2 1 {name=l1 sig_type=std_logic lab=phi1}
C {sky130_fd_pr/pfet3_01v8.sym} 100 -250 0 0 {name=M13
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
C {sky130_fd_pr/nfet3_01v8.sym} 50 -190 0 0 {name=M14
L=0.15
W=0.42
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 260 -190 0 1 {name=M15
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
C {devices/gnd.sym} 70 -160 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 160 -40 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 560 -250 0 1 {name=M20
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
C {sky130_fd_pr/pfet3_01v8.sym} 420 -190 0 0 {name=M21
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
C {sky130_fd_pr/nfet3_01v8.sym} 640 -190 0 1 {name=M22
L=0.15
W=0.42
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 620 -160 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 530 -40 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 30 -70 0 0 {name=l6 sig_type=std_logic lab=FP}
C {devices/vdd.sym} 120 -280 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} 540 -280 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} 660 -70 0 1 {name=l9 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} 240 -120 0 0 {name=l10 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 440 -150 0 1 {name=l12 sig_type=std_logic lab=low}
C {devices/ipin.sym} 70 -360 0 0 {name=p1 lab=phi1}
C {devices/opin.sym} 840 -280 0 0 {name=p2 lab=high}
C {devices/ipin.sym} 70 -340 0 0 {name=p4 lab=inp}
C {devices/ipin.sym} 70 -320 0 0 {name=p5 lab=inm}
C {devices/opin.sym} 840 -260 0 0 {name=p6 lab=low}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 70 -70 0 0 {name=M2
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 420 -70 0 0 {name=M7
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 860 -60 0 0 {name=M8
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 260 -70 0 1 {name=M9
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 610 -70 0 1 {name=M10
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 750 -120 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 1010 -120 0 1 {name=M6
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
