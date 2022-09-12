v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Comparator design using LVT FETs. "high" is high when inp > inm and "low" is high otherwise.
Wplus/Lplus are the dimensions of amplifier Mosfet taking positive end of input, and Wminus/Lminus are the dimensions of amplifier Mosfet taking negative end of input.} -710 -200 0 0 0.2 0.2 {}
N -660 90 -510 90 { lab=high}
N -660 150 -510 150 { lab=vssd}
N -290 90 -140 90 { lab=low}
N -290 150 -140 150 { lab=vssd}
N -330 -30 -330 120 { lab=high}
N -470 -70 -470 120 { lab=low}
N -510 20 -510 90 { lab=high}
N -290 20 -290 90 { lab=low}
N -510 20 -330 20 { lab=high}
N -470 90 -290 90 { lab=low}
N -110 30 0 30 { lab=tail}
N 0 30 110 30 { lab=tail}
N -330 -70 -330 -30 { lab=high}
N -530 50 -510 50 { lab=high}
N -290 50 -260 50 { lab=low}
N -110 0 110 0 {
lab=vssd}
N 110 -90 110 -60 {
lab=vccd}
N -110 -90 -110 -60 {
lab=vccd}
N -290 -100 -290 -70 {
lab=vccd}
N -510 -100 -510 -70 {
lab=vccd}
N -510 -10 -500 -10 {
lab=vccd}
N -300 -10 -290 -10 {
lab=vccd}
N 710 150 750 150 {
lab=low_buf}
N 710 -70 750 -70 {
lab=high_buf}
N 360 -110 660 -110 {
lab=vccd}
N 510 -130 510 -110 {
lab=vccd}
N 360 -30 660 -30 {
lab=vssd}
N 510 -30 510 -10 {
lab=vssd}
N 360 110 660 110 {
lab=vccd}
N 510 90 510 110 {
lab=vccd}
N 360 190 660 190 {
lab=vssd}
N 510 190 510 210 {
lab=vssd}
N -140 120 -140 150 {
lab=vssd}
N -290 120 -290 150 {
lab=vssd}
N -660 120 -660 150 {
lab=vssd}
N -510 120 -510 150 {
lab=vssd}
N 0 60 0 90 {
lab=vssd}
C {devices/lab_pin.sym} -250 -10 0 1 {name=l104 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} -550 -10 0 0 {name=l105 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} -40 60 0 0 {name=l106 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -530 50 0 0 {name=l107 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} -260 50 2 0 {name=l108 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} -70 -60 2 0 {name=l109 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -100 120 2 0 {name=l110 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} -700 120 0 0 {name=l111 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} -110 -30 0 0 {name=l124 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} 110 -30 0 1 {name=l125 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} -150 0 0 0 {name=l15 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 150 0 0 1 {name=l121 sig_type=std_logic lab=inm}
C {devices/ipin.sym} -630 -40 0 0 {name=p1 lab=phi1}
C {devices/ipin.sym} -630 -20 0 0 {name=p3 lab=phi1b}
C {devices/ipin.sym} -630 0 0 0 {name=p4 lab=inp}
C {devices/ipin.sym} -630 20 0 0 {name=p5 lab=inm}
C {devices/lab_pin.sym} 150 -60 2 0 {name=l1 sig_type=std_logic lab=phi1}
C {devices/opin.sym} 750 150 0 0 {name=p6 lab=low_buf}
C {devices/lab_pin.sym} -510 -100 3 1 {name=l5 sig_type=std_logic lab=vccd}
C {devices/iopin.sym} -630 -150 2 0 {name=p19 lab=vccd}
C {devices/iopin.sym} -630 -130 2 0 {name=p22 lab=vssd}
C {sky130_fd_pr/nfet_03v3_nvt.sym} -130 0 0 0 {name=M12
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
C {sky130_fd_pr/nfet_03v3_nvt.sym} 130 0 0 1 {name=M13
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
C {devices/lab_pin.sym} -110 30 3 0 {name=l4 sig_type=std_logic lab=tail}
C {sky130_fd_pr/pfet_01v8.sym} -490 -70 0 1 {name=M14
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
C {sky130_fd_pr/pfet_01v8.sym} -530 -10 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -270 -10 2 0 {name=M8
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
C {sky130_fd_pr/pfet_01v8.sym} -310 -70 2 1 {name=M2
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -310 120 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -490 120 0 1 {name=M9
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -20 60 0 0 {name=M10
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
C {devices/lab_pin.sym} -510 -40 0 0 {name=l13 sig_type=std_logic lab=pfetw}
C {devices/lab_pin.sym} -290 -40 0 1 {name=l14 sig_type=std_logic lab=pfete}
C {sky130_fd_pr/pfet_01v8.sym} -90 -60 2 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 130 -60 0 1 {name=M6
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
C {devices/lab_pin.sym} -290 -100 3 1 {name=l6 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} -110 -90 3 1 {name=l7 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 110 -90 3 1 {name=l8 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} -590 150 1 1 {name=l9 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -210 150 1 1 {name=l10 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 0 90 1 1 {name=l11 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -500 -10 0 1 {name=l2 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} -300 -10 0 0 {name=l3 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 310 -70 0 0 {name=l107 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 310 150 0 0 {name=l107 sig_type=std_logic lab=low}
C {xschem/inv/inv.sym} 360 -70 0 0 {name=X1 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {xschem/inv/inv.sym} 460 -70 0 0 {name=X2 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {xschem/inv/inv.sym} 560 -70 0 0 {name=X3 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {xschem/inv/inv.sym} 660 -70 0 0 {name=X4 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/opin.sym} 750 -70 0 0 {name=p2 lab=high_buf}
C {devices/lab_pin.sym} 510 -130 3 1 {name=l7 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 510 -10 1 1 {name=l11 sig_type=std_logic lab=vssd}
C {xschem/inv/inv.sym} 360 150 0 0 {name=X5 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {xschem/inv/inv.sym} 460 150 0 0 {name=X6 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {xschem/inv/inv.sym} 560 150 0 0 {name=X7 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {xschem/inv/inv.sym} 660 150 0 0 {name=X8 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 510 90 3 1 {name=l7 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 510 210 1 1 {name=l11 sig_type=std_logic lab=vssd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -680 120 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -120 120 0 1 {name=M5
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
C {devices/lab_pin.sym} 0 0 3 1 {name=l11 sig_type=std_logic lab=vssd}
