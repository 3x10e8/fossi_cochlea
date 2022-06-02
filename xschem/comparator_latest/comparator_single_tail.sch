v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Comparator design using LVT FETs. "high" is high when inp > inm and "low" is high otherwise.
Wplus/Lplus are the dimensions of amplifier Mosfet taking positive end of input, and Wminus/Lminus are the dimensions of amplifier Mosfet taking negative end of input.} 60 -630 0 0 0.2 0.2 {}
N 110 -340 260 -340 { lab=high}
N 110 -280 260 -280 { lab=vssd}
N 480 -340 630 -340 { lab=low}
N 480 -280 630 -280 { lab=vssd}
N 440 -460 440 -310 { lab=high}
N 300 -500 300 -310 { lab=low}
N 260 -410 260 -340 { lab=high}
N 480 -410 480 -340 { lab=low}
N 260 -410 440 -410 { lab=high}
N 300 -340 480 -340 { lab=low}
N 660 -400 770 -400 { lab=#net1}
N 770 -400 880 -400 { lab=#net1}
N 440 -500 440 -460 { lab=high}
N 240 -380 260 -380 { lab=high}
N 480 -380 510 -380 { lab=low}
N 660 -430 880 -430 {
lab=vssd}
N 880 -520 880 -490 {
lab=vccd}
N 660 -520 660 -490 {
lab=vccd}
N 480 -530 480 -500 {
lab=vccd}
N 260 -530 260 -500 {
lab=vccd}
N 260 -440 270 -440 {
lab=vccd}
N 470 -440 480 -440 {}
C {devices/lab_pin.sym} 520 -440 0 1 {name=l104 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} 220 -440 0 0 {name=l105 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} 730 -370 0 0 {name=l106 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 240 -380 0 0 {name=l107 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 510 -380 2 0 {name=l108 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 700 -490 2 0 {name=l109 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 670 -310 3 0 {name=l110 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 70 -310 0 0 {name=l111 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 660 -460 0 0 {name=l124 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} 880 -460 0 1 {name=l125 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} 620 -430 0 0 {name=l15 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 920 -430 0 1 {name=l121 sig_type=std_logic lab=inm}
C {devices/ipin.sym} 140 -470 0 0 {name=p1 lab=phi1}
C {devices/opin.sym} 910 -370 0 0 {name=p2 lab=high}
C {devices/ipin.sym} 140 -450 0 0 {name=p3 lab=phi1b}
C {devices/ipin.sym} 140 -430 0 0 {name=p4 lab=inp}
C {devices/ipin.sym} 140 -410 0 0 {name=p5 lab=inm}
C {devices/lab_pin.sym} 920 -490 2 0 {name=l1 sig_type=std_logic lab=phi1}
C {devices/opin.sym} 910 -350 0 0 {name=p6 lab=low}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 90 -310 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 460 -310 0 0 {name=M7
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 650 -310 2 0 {name=M9
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 280 -310 2 0 {name=M10
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 750 -370 2 1 {name=M11
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
C {devices/lab_pin.sym} 260 -530 3 1 {name=l5 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 480 -530 3 1 {name=l6 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 660 -520 3 1 {name=l7 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 880 -520 3 1 {name=l8 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 190 -280 1 1 {name=l9 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 560 -280 1 1 {name=l10 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 770 -340 1 1 {name=l11 sig_type=std_logic lab=vssd}
C {devices/iopin.sym} 140 -580 2 0 {name=p19 lab=vccd}
C {devices/iopin.sym} 140 -560 2 0 {name=p22 lab=vssd}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 640 -430 0 0 {name=M12
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
C {sky130_fd_pr/nfet_03v3_nvt.sym} 900 -430 0 1 {name=M13
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
C {devices/lab_pin.sym} 770 -430 3 1 {name=l12 sig_type=std_logic lab=vssd}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 900 -490 0 1 {name=M6
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 680 -490 0 1 {name=M1
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 280 -500 0 1 {name=M2
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 500 -440 0 1 {name=M3
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 460 -500 0 0 {name=M5
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 240 -440 0 0 {name=M8
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/lab_pin.sym} 270 -440 0 1 {name=l2 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 470 -440 2 1 {name=l3 sig_type=std_logic lab=vccd}
