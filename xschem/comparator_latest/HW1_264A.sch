v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 110 -100 260 -100 { lab=high}
N 110 -40 260 -40 { lab=GND}
N 480 -100 630 -100 { lab=low}
N 480 -40 630 -40 { lab=GND}
N 440 -220 440 -70 { lab=high}
N 300 -260 300 -70 { lab=low}
N 260 -170 260 -100 { lab=high}
N 480 -170 480 -100 { lab=low}
N 260 -170 440 -170 { lab=high}
N 300 -100 480 -100 { lab=low}
N 700 -250 840 -250 { lab=phi1}
N 660 -160 770 -160 { lab=#net1}
N 770 -160 880 -160 { lab=#net1}
N 440 -260 440 -220 { lab=high}
N 240 -140 260 -140 { lab=high}
N 480 -140 510 -140 { lab=low}
N 770 -100 770 -40 { lab=GND}
C {devices/vsource.sym} 90 -280 0 0 {name=Vinp value="0.6 AC 0.3"}
C {devices/gnd.sym} 90 -250 0 0 {name=l2 lab=GND}
C {devices/netlist.sym} 40 -580 0 0 {name=SPICE only_toplevel=false value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_20v0__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_20v0__tt_discrete.corner.spice
.options abstol=1e-14 reltol=1e-4
.param capw=20
.param capl=5
.tran 1n 0.4m
*.ac dec 200 1 1e15
.save all
"}
C {sky130_fd_pr/pfet3_01v8.sym} 460 -260 0 0 {name=M3
L=0.15
W=5
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
C {sky130_fd_pr/pfet3_01v8.sym} 280 -260 0 1 {name=M4
L=0.15
W=5
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
C {sky130_fd_pr/pfet3_01v8.sym} 240 -200 0 0 {name=M16
L=0.15
W=5
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
C {sky130_fd_pr/pfet3_01v8.sym} 500 -200 0 1 {name=M17
L=0.15
W=5
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
C {devices/vdd.sym} 260 -290 0 0 {name=l97 lab=VDD}
C {devices/vdd.sym} 480 -290 0 0 {name=l98 lab=VDD}
C {devices/vdd.sym} 660 -280 0 0 {name=l99 lab=VDD}
C {devices/vdd.sym} 880 -280 0 0 {name=l100 lab=VDD}
C {devices/gnd.sym} 770 -40 0 0 {name=l101 lab=GND}
C {devices/gnd.sym} 180 -40 0 0 {name=l102 lab=GND}
C {devices/gnd.sym} 570 -40 0 0 {name=l103 lab=GND}
C {devices/lab_pin.sym} 520 -200 0 1 {name=l104 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} 220 -200 0 0 {name=l105 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} 730 -130 0 0 {name=l106 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 240 -140 0 0 {name=l107 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 510 -140 2 0 {name=l108 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 770 -250 1 0 {name=l109 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 670 -70 3 0 {name=l110 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 70 -70 0 0 {name=l111 sig_type=std_logic lab=phi1b}
C {sky130_fd_pr/pfet3_01v8.sym} 860 -250 0 0 {name=M5
L=0.15
W=2
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
C {sky130_fd_pr/pfet3_01v8.sym} 680 -250 0 1 {name=M6
L=0.15
W=2
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
C {devices/lab_pin.sym} 660 -220 0 0 {name=l124 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} 880 -220 0 1 {name=l125 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} 620 -190 0 0 {name=l15 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 920 -190 0 1 {name=l121 sig_type=std_logic lab=inm}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 640 -190 0 0 {name=M7
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 900 -190 0 1 {name=M8
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 750 -130 0 0 {name=M9
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 90 -70 0 0 {name=M10
L=0.15
W=2
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 460 -70 0 0 {name=M11
L=0.15
W=2
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 280 -70 0 1 {name=M12
L=0.15
W=2
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 650 -70 0 1 {name=M13
L=0.15
W=2
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
C {devices/vsource.sym} 990 -170 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 990 -140 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 990 -200 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 790 -410 0 0 {name=Vfclk1 value=PULSE(0,1.2,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 790 -380 0 0 {name=l115 lab=GND}
C {devices/lab_pin.sym} 790 -440 0 0 {name=l116 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 280 -400 0 0 {name=Vfclk2 value=PULSE(1.2,0,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 280 -370 0 0 {name=l117 lab=GND}
C {devices/lab_pin.sym} 280 -430 0 0 {name=l118 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} 520 -410 0 0 {name=Vfclk3 value=PULSE(1.2,0,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 520 -380 0 0 {name=l119 lab=GND}
C {devices/lab_pin.sym} 520 -440 0 0 {name=l120 sig_type=std_logic lab=phi2b}
C {devices/vsource.sym} 920 -80 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 920 -50 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 920 -110 0 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 90 -310 0 0 {name=l1 sig_type=std_logic lab=inp}
C {devices/vsource.sym} 90 -190 0 0 {name=Vinp1 value="0.6 AC -0.3"}
C {devices/gnd.sym} 90 -160 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 90 -220 0 0 {name=l4 sig_type=std_logic lab=inm}
