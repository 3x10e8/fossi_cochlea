v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 230 190 380 190 { lab=high}
N 230 250 380 250 { lab=GND}
N 600 190 750 190 { lab=low}
N 600 250 750 250 { lab=GND}
N 560 70 560 220 { lab=high}
N 420 30 420 220 { lab=low}
N 380 120 380 190 { lab=high}
N 600 120 600 190 { lab=low}
N 380 120 560 120 { lab=high}
N 420 190 600 190 { lab=low}
N 560 30 560 70 { lab=high}
N 360 150 380 150 { lab=high}
N 600 150 630 150 { lab=low}
N 1080 -10 1300 -10 {
lab=GND}
N 1080 20 1300 20 {
lab=#net1}
N 1270 -70 1300 -70 {
lab=vccd}
N 1270 -100 1270 -70 {
lab=vccd}
N 1270 -100 1300 -100 {
lab=vccd}
N 1040 -100 1080 -100 {
lab=vccd}
N 1040 -100 1040 -70 {
lab=vccd}
N 1040 -70 1080 -70 {
lab=vccd}
N 380 90 390 90 {
lab=vccd}
N 590 90 600 90 {
lab=vccd}
N 370 30 380 30 {
lab=vccd}
N 600 30 610 30 {
lab=vccd}
C {devices/netlist.sym} 40 -430 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
*.include /usr/local/lib/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.control
    tran 0.05n 40u
    plot high 1*(inp-inm)
    plot FP FN
    meas trans yavg AVG i(vdd) from=0 to=40u
.endc
.save all
"}
C {devices/vsource.sym} 200 -200 0 0 {name=V1 value="SIN(0.6,0,100k)"}
C {devices/vsource.sym} 130 -200 0 0 {name=VDD value=1.2}
C {devices/gnd.sym} 130 -170 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 200 -230 2 0 {name=l18 sig_type=std_logic lab=inp}
C {devices/vsource.sym} 1070 -330 0 0 {name=V2 value="SIN(0.6,0,100k)"}
C {devices/gnd.sym} 200 -110 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1070 -360 2 0 {name=l7 sig_type=std_logic lab=inm}
C {devices/vsource.sym} 570 -200 0 0 {name=V3 value="PULSE(0,1.2,0,1n,1n,180n,400n)"}
C {devices/gnd.sym} 570 -170 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 570 -230 2 0 {name=l9 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 780 -200 0 0 {name=V4 value="PULSE(1.2,0,0,1n,1n,180n,400n)"}
C {devices/gnd.sym} 780 -170 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 780 -230 2 0 {name=l12 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 640 90 0 1 {name=l104 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} 340 90 0 0 {name=l105 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} 1140 50 0 0 {name=l106 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 360 150 0 0 {name=l107 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 630 150 2 0 {name=l108 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 1120 -70 2 0 {name=l109 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 790 220 3 0 {name=l110 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 190 220 0 0 {name=l111 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1080 -40 0 0 {name=l124 sig_type=std_logic lab=FP}
C {devices/lab_pin.sym} 1300 -40 0 1 {name=l125 sig_type=std_logic lab=FN}
C {devices/lab_pin.sym} 1040 -10 0 0 {name=l16 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1340 -10 0 1 {name=l121 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 1340 -70 2 0 {name=l20 sig_type=std_logic lab=phi1}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 210 220 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 580 220 0 0 {name=M7
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 770 220 2 0 {name=M9
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 400 220 2 0 {name=M10
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
C {devices/lab_pin.sym} 600 60 2 0 {name=l22 sig_type=std_logic lab=pfete}
C {devices/lab_pin.sym} 380 60 2 1 {name=l23 sig_type=std_logic lab=pfetw}
C {devices/lab_pin.sym} 380 0 3 1 {name=l24 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 600 0 3 1 {name=l25 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 1080 -100 3 1 {name=l26 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 1300 -100 3 1 {name=l27 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 130 -230 3 1 {name=l1 sig_type=std_logic lab=vccd}
C {devices/gnd.sym} 290 250 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 680 250 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1180 80 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 1160 50 0 0 {name=M8
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
C {sky130_fd_pr/nfet_03v3_nvt.sym} 1060 -10 0 0 {name=M12
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
C {sky130_fd_pr/nfet_03v3_nvt.sym} 1320 -10 0 1 {name=M6
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
C {devices/gnd.sym} 1190 -10 0 0 {name=l11 lab=GND}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1100 -70 0 1 {name=M11
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1320 -70 0 1 {name=M3
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 400 30 0 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 620 90 0 1 {name=M2
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 580 30 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 360 90 0 0 {name=M13
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
C {devices/lab_pin.sym} 390 90 2 0 {name=l13 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 590 90 2 1 {name=l14 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 370 30 2 1 {name=l15 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 610 30 2 0 {name=l19 sig_type=std_logic lab=vccd}
C {devices/vsource.sym} 200 -140 0 0 {name=V5 value="TRNOISE(10u 0.05n 0 0)"}
C {devices/gnd.sym} 1070 -240 0 0 {name=l21 lab=GND}
C {devices/vsource.sym} 1070 -270 0 0 {name=V6 value="TRNOISE(10u 0.05n 0 0)"}
