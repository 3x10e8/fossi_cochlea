v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -290 -90 -140 -90 { lab=high}
N -290 -30 -140 -30 { lab=GND}
N 80 -90 230 -90 { lab=low}
N 80 -30 230 -30 { lab=GND}
N -100 -330 -100 -140 { lab=low}
N -140 -240 -140 -170 { lab=high}
N 80 -240 80 -170 { lab=low}
N -140 -240 40 -240 { lab=high}
N 40 -330 40 -290 { lab=high}
N -160 -210 -140 -210 { lab=high}
N 80 -210 110 -210 { lab=low}
N -140 -270 -130 -270 {
lab=vccd}
N 70 -270 80 -270 {
lab=vccd}
N -150 -330 -140 -330 {
lab=vccd}
N 80 -330 90 -330 {
lab=vccd}
N -140 -360 80 -360 {
lab=vccd}
N -140 -60 -140 -30 {
lab=GND}
N -290 -60 -290 -30 {
lab=GND}
N 230 -60 230 -30 {
lab=GND}
N 80 -60 80 -30 {
lab=GND}
N -140 -110 -140 -90 {
lab=high}
N -100 -140 -100 -60 {
lab=low}
N 40 -290 40 -60 {
lab=high}
N 80 -110 80 -90 {
lab=low}
N 80 -120 80 -110 {
lab=low}
N -100 -90 80 -90 {
lab=low}
N 270 -410 490 -410 {
lab=GND}
N 270 -380 490 -380 {
lab=#net1}
N 460 -470 490 -470 {
lab=vccd}
N 460 -500 460 -470 {
lab=vccd}
N 460 -500 490 -500 {
lab=vccd}
N 230 -500 270 -500 {
lab=vccd}
N 230 -500 230 -470 {
lab=vccd}
N 230 -470 270 -470 {
lab=vccd}
N 370 -380 370 -350 {
lab=#net1}
N 270 -520 270 -500 {
lab=vccd}
N 270 -510 490 -510 {
lab=vccd}
N 490 -510 490 -500 {
lab=vccd}
N 370 -260 370 -230 {
lab=GND}
N -140 -170 -140 -110 {
lab=high}
N 80 -170 80 -120 {
lab=low}
N 370 -350 370 -290 {
lab=#net1}
C {devices/lab_pin.sym} 120 -270 0 1 {name=l104 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} -180 -270 0 0 {name=l105 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} -160 -210 0 0 {name=l107 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 110 -210 2 0 {name=l108 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 270 -60 3 0 {name=l110 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} -330 -60 0 0 {name=l111 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 80 -300 2 0 {name=l22 sig_type=std_logic lab=pfete}
C {devices/lab_pin.sym} -140 -300 2 1 {name=l23 sig_type=std_logic lab=pfetw}
C {devices/lab_pin.sym} -140 -360 3 1 {name=l24 sig_type=std_logic lab=vccd}
C {devices/gnd.sym} -230 -30 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 160 -30 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -130 -270 2 0 {name=l13 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 70 -270 2 1 {name=l14 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} -150 -330 2 1 {name=l15 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 90 -330 2 0 {name=l19 sig_type=std_logic lab=vccd}
C {sky130_fd_pr/pfet_01v8.sym} -160 -270 0 0 {name=M6
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 100 -270 0 1 {name=M2
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} -120 -330 0 1 {name=M1
L=0.15
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 60 -330 0 0 {name=M5
L=0.15
W=0.42
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -310 -60 0 0 {name=M4
L=2
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 60 -60 0 0 {name=M10
L=2
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -120 -60 0 1 {name=M11
L=2
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 250 -60 0 1 {name=M13
L=2
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
C {devices/lab_pin.sym} 330 -260 0 0 {name=l106 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 310 -470 2 0 {name=l109 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 270 -440 0 0 {name=l124 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} 490 -440 0 1 {name=l125 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} 230 -410 0 0 {name=l16 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 530 -410 0 1 {name=l121 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 530 -470 2 0 {name=l20 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 270 -520 3 1 {name=l26 sig_type=std_logic lab=vccd}
C {devices/gnd.sym} 370 -230 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 380 -410 0 0 {name=l11 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 290 -470 0 1 {name=M7
L=0.15
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 510 -470 0 1 {name=M9
L=0.15
W=0.42
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
C {sky130_fd_pr/nfet_03v3_nvt.sym} 510 -410 0 1 {name=M3
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 250 -410 0 0 {name=M8
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 350 -260 0 0 {name=M12
L=2
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
