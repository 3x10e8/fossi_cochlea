v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2150 -670 2300 -670 { lab=high}
N 2150 -610 2300 -610 { lab=GND}
N 2520 -670 2670 -670 { lab=low}
N 2520 -610 2670 -610 { lab=GND}
N 2480 -790 2480 -640 { lab=high}
N 2340 -830 2340 -640 { lab=low}
N 2300 -740 2300 -670 { lab=high}
N 2520 -740 2520 -670 { lab=low}
N 2300 -740 2480 -740 { lab=high}
N 2340 -670 2520 -670 { lab=low}
N 2740 -820 2880 -820 { lab=phi1}
N 2700 -730 2810 -730 { lab=#net1}
N 2810 -730 2920 -730 { lab=#net1}
N 2480 -830 2480 -790 { lab=high}
N 2280 -710 2300 -710 { lab=high}
N 2520 -710 2550 -710 { lab=low}
N 2700 -760 2920 -760 { lab=GND}
N 2740 -400 2890 -400 { lab=high2}
N 2740 -340 2890 -340 { lab=GND}
N 3110 -400 3260 -400 { lab=low2}
N 3110 -340 3260 -340 { lab=GND}
N 3070 -520 3070 -370 { lab=high2}
N 2930 -560 2930 -370 { lab=low2}
N 2890 -470 2890 -400 { lab=high2}
N 3110 -470 3110 -400 { lab=low2}
N 2890 -470 3070 -470 { lab=high2}
N 2930 -400 3110 -400 { lab=low2}
N 3330 -550 3470 -550 { lab=phi1}
N 3290 -460 3400 -460 { lab=#net2}
N 3400 -460 3510 -460 { lab=#net2}
N 3070 -560 3070 -520 { lab=high2}
N 2870 -440 2890 -440 { lab=high2}
N 3110 -440 3140 -440 { lab=low2}
N 3290 -490 3510 -490 { lab=GND}
C {devices/lab_pin.sym} 2070 -810 0 0 {name=l30 sig_type=std_logic lab=inm}
C {devices/netlist.sym} 2130 -1140 0 0 {name=SPICE1 only_toplevel=false value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_20v0__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_20v0__tt_discrete.corner.spice
.options abstol=1e-14 reltol=1e-4
.tran 1n 0.15m
.save all
"}
C {devices/vsource.sym} 1930 -760 0 0 {name=VDD4 value="DC 1.2"}
C {devices/gnd.sym} 1930 -730 0 0 {name=l57 lab=GND}
C {devices/vdd.sym} 1930 -790 0 0 {name=l58 lab=VDD}
C {devices/vsource.sym} 2400 -920 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 2400 -890 0 0 {name=l59 lab=GND}
C {devices/gnd.sym} 2070 -750 0 0 {name=l28 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 2500 -830 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8.sym} 2320 -830 0 1 {name=M2
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
C {sky130_fd_pr/pfet3_01v8.sym} 2280 -770 0 0 {name=M16
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
C {sky130_fd_pr/pfet3_01v8.sym} 2540 -770 0 1 {name=M17
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
C {devices/vdd.sym} 2300 -860 0 0 {name=l18 lab=VDD}
C {devices/vdd.sym} 2520 -860 0 0 {name=l21 lab=VDD}
C {devices/vdd.sym} 2700 -850 0 0 {name=l22 lab=VDD}
C {devices/vdd.sym} 2920 -850 0 0 {name=l23 lab=VDD}
C {devices/gnd.sym} 2810 -670 0 0 {name=l24 lab=GND}
C {devices/gnd.sym} 2220 -610 0 0 {name=l47 lab=GND}
C {devices/gnd.sym} 2610 -610 0 0 {name=l48 lab=GND}
C {devices/lab_pin.sym} 2560 -770 0 1 {name=l49 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} 2260 -770 0 0 {name=l54 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} 2770 -700 0 0 {name=l56 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 2280 -710 0 0 {name=l33 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 2550 -710 2 0 {name=l34 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 2810 -820 1 0 {name=l32 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 2710 -640 2 0 {name=l35 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 2110 -640 0 0 {name=l36 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1880 -940 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/vsource.sym} 1880 -910 0 0 {name=Vinp1 value=sin(0.4,0.01,50000)}
C {devices/gnd.sym} 1880 -880 0 0 {name=l221 lab=GND}
C {devices/vsource.sym} 2070 -780 0 0 {name=Vinp2 value=sin(0.4,-0.01,50000)}
C {devices/lab_pin.sym} 2400 -950 0 0 {name=l2 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 2030 -930 0 0 {name=Vfclk1 value=PULSE(0,1.2,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 2030 -900 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 2030 -960 0 0 {name=l5 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 1880 -1120 0 0 {name=Vfclk2 value=PULSE(1.2,0,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 1880 -1090 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1880 -1150 0 0 {name=l7 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} 1880 -1020 0 0 {name=Vfclk3 value=PULSE(1.2,0,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 1880 -990 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 1880 -1050 0 0 {name=l9 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 2660 -760 0 0 {name=l1 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 2960 -760 0 1 {name=l3 sig_type=std_logic lab=inm}
C {devices/gnd.sym} 2810 -760 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 2900 -820 0 0 {name=M3
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
C {sky130_fd_pr/pfet3_01v8.sym} 2720 -820 0 1 {name=M5
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
C {devices/lab_pin.sym} 2700 -790 0 0 {name=l11 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} 2920 -790 0 1 {name=l12 sig_type=std_logic lab=FN}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 2680 -760 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 2940 -760 0 1 {name=M6
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
C {sky130_fd_pr/pfet3_01v8.sym} 3090 -560 0 0 {name=M7
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
C {sky130_fd_pr/pfet3_01v8.sym} 2910 -560 0 1 {name=M8
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
C {sky130_fd_pr/pfet3_01v8.sym} 2870 -500 0 0 {name=M9
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
C {sky130_fd_pr/pfet3_01v8.sym} 3130 -500 0 1 {name=M10
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
C {devices/vdd.sym} 2890 -590 0 0 {name=l14 lab=VDD}
C {devices/vdd.sym} 3110 -590 0 0 {name=l15 lab=VDD}
C {devices/vdd.sym} 3290 -580 0 0 {name=l16 lab=VDD}
C {devices/vdd.sym} 3510 -580 0 0 {name=l17 lab=VDD}
C {devices/gnd.sym} 3400 -400 0 0 {name=l19 lab=GND}
C {devices/gnd.sym} 2810 -340 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 3200 -340 0 0 {name=l25 lab=GND}
C {devices/lab_pin.sym} 3150 -500 0 1 {name=l26 sig_type=std_logic lab=FN2}
C {devices/lab_pin.sym} 2850 -500 0 0 {name=l40 sig_type=std_logic lab=FP2}
C {devices/lab_pin.sym} 3360 -430 0 0 {name=l41 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 2870 -440 0 0 {name=l42 sig_type=std_logic lab=high2}
C {devices/lab_pin.sym} 3140 -440 2 0 {name=l43 sig_type=std_logic lab=low2}
C {devices/lab_pin.sym} 3400 -550 1 0 {name=l44 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 3300 -370 2 0 {name=l45 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 2700 -370 0 0 {name=l46 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 3250 -490 0 0 {name=l51 sig_type=std_logic lab=inp2}
C {devices/lab_pin.sym} 3550 -490 0 1 {name=l52 sig_type=std_logic lab=inm2}
C {devices/gnd.sym} 3400 -490 0 0 {name=l53 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 3490 -550 0 0 {name=M22
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
C {sky130_fd_pr/pfet3_01v8.sym} 3310 -550 0 1 {name=M23
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
C {devices/lab_pin.sym} 3290 -520 0 0 {name=l55 sig_type=std_logic lab=FP2}
C {devices/lab_pin.sym} 3510 -520 0 1 {name=l60 sig_type=std_logic lab=FN2}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 3270 -490 0 0 {name=M24
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 3530 -490 0 1 {name=M25
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
C {devices/lab_pin.sym} 2290 -370 0 0 {name=l13 sig_type=std_logic lab=inm2}
C {devices/gnd.sym} 2290 -310 0 0 {name=l27 lab=GND}
C {devices/lab_pin.sym} 2100 -500 0 0 {name=l29 sig_type=std_logic lab=inp2}
C {devices/vsource.sym} 2100 -470 0 0 {name=Vinp3 value=sin(0.6,0.01,50000)}
C {devices/gnd.sym} 2100 -440 0 0 {name=l31 lab=GND}
C {devices/vsource.sym} 2290 -340 0 0 {name=Vinp4 value=sin(0.6,-0.01,50000)}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 2720 -370 0 0 {name=M11
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 3090 -370 0 0 {name=M12
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 3280 -370 0 1 {name=M13
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 2910 -370 0 1 {name=M14
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 3380 -430 0 0 {name=M15
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 2130 -640 0 0 {name=M18
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 2500 -640 0 0 {name=M19
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 2790 -700 0 0 {name=M20
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 2690 -640 0 1 {name=M21
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 2320 -640 0 1 {name=M26
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
