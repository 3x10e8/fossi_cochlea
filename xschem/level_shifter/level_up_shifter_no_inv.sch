v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {unused
} 190 -420 0 0 0.3 0.3 {}
N 450 -240 540 -240 {
lab=outb}
N 550 -240 550 -210 {
lab=outb}
N 450 -250 450 -240 {
lab=outb}
N 470 -180 510 -180 {
lab=in}
N 650 -310 650 -240 {
lab=outb}
N 540 -240 650 -240 {
lab=outb}
N 690 -340 730 -340 {
lab=out}
N 650 -370 650 -340 {
lab=vdda1}
N 650 -410 650 -370 {
lab=vdda1}
N 450 -410 450 -370 {
lab=vdda1}
N 450 -410 650 -410 {
lab=vdda1}
N 550 -450 550 -410 {
lab=vdda1}
N 1000 -240 1000 -210 {
lab=out}
N 1100 -250 1100 -240 {
lab=out}
N 1040 -180 1080 -180 {
lab=inb}
N 900 -310 900 -240 {
lab=out}
N 900 -240 1010 -240 {
lab=out}
N 820 -340 860 -340 {
lab=outb}
N 900 -370 900 -340 {
lab=vdda1}
N 900 -410 900 -370 {
lab=vdda1}
N 1100 -410 1100 -370 {
lab=vdda1}
N 900 -410 1100 -410 {
lab=vdda1}
N 1010 -450 1010 -410 {
lab=vdda1}
N 650 -240 810 -240 {
lab=outb}
N 820 -340 820 -240 {
lab=outb}
N 810 -240 820 -240 {
lab=outb}
N 730 -340 730 -230 {
lab=out}
N 1010 -240 1100 -240 {
lab=out}
N 730 -220 1000 -220 {
lab=out}
N 730 -230 730 -220 {
lab=out}
N 1010 -220 1080 -220 {
lab=out}
N 1000 -220 1010 -220 {
lab=out}
N 550 -220 620 -220 {
lab=outb}
N 510 -180 510 -120 {
lab=in}
N 1040 -180 1040 -120 {
lab=inb}
N 390 -370 540 -370 {
lab=vdda1}
N 390 -310 540 -310 {
lab=outb}
N 390 -340 540 -340 {
lab=vssd1}
N 350 -400 350 -340 {
lab=inb}
N 350 -400 580 -400 {
lab=inb}
N 580 -400 580 -340 {
lab=inb}
N 450 -310 450 -250 {
lab=outb}
N 550 -210 700 -210 {
lab=outb}
N 550 -150 700 -150 {
lab=vssd1}
N 550 -180 700 -180 {
lab=vssd1}
N 630 -180 630 -150 {
lab=vssd1}
N 510 -120 510 -80 {
lab=in}
N 510 -80 740 -80 {
lab=in}
N 740 -180 740 -80 {
lab=in}
N 880 -210 1000 -210 {
lab=out}
N 880 -150 1000 -150 {
lab=vssd1}
N 880 -180 1000 -180 {
lab=vssd1}
N 940 -180 940 -150 {
lab=vssd1}
N 840 -180 840 -80 {
lab=inb}
N 840 -80 1040 -80 {
lab=inb}
N 1040 -120 1040 -80 {
lab=inb}
N 1030 -370 1180 -370 {
lab=vdda1}
N 1030 -310 1180 -310 {
lab=out}
N 1030 -340 1180 -340 {
lab=vssd1}
N 1220 -400 1220 -340 {
lab=in}
N 990 -400 1220 -400 {
lab=in}
N 990 -400 990 -340 {
lab=in}
N 1100 -310 1100 -250 {
lab=out}
C {devices/ipin.sym} 320 -460 0 0 {name=p1 lab=in}
C {devices/lab_pin.sym} 630 -150 3 0 {name=l2 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 470 -180 0 0 {name=l3 sig_type=std_logic lab=in}
C {devices/iopin.sym} 550 -440 3 0 {name=p4 lab=vdda1}
C {devices/lab_pin.sym} 350 -340 0 0 {name=l5 sig_type=std_logic lab=inb}
C {devices/lab_pin.sym} 940 -150 1 1 {name=l6 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 1080 -180 0 1 {name=l7 sig_type=std_logic lab=inb}
C {devices/lab_pin.sym} 1110 -340 1 1 {name=l8 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 1220 -340 0 1 {name=l9 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 1010 -450 1 0 {name=l10 sig_type=std_logic lab=vdda1}
C {devices/opin.sym} 1080 -220 0 0 {name=p5 lab=out}
C {devices/opin.sym} 620 -220 0 0 {name=p6 lab=outb}
C {sky130_fd_pr/pfet_01v8.sym} 670 -340 0 1 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 880 -340 0 0 {name=M8
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
C {devices/ipin.sym} 320 -440 0 0 {name=p7 lab=inb}
C {devices/iopin.sym} 320 -390 2 0 {name=p2 lab=vssd1}
C {devices/iopin.sym} 320 -410 2 0 {name=p3 lab=vccd1}
C {sky130_fd_pr/nfet_01v8.sym} 370 -340 2 1 {name=M2
L=0.15
W=0.6
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 530 -180 0 0 {name=M3
L=0.15
W=0.6
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 720 -180 2 0 {name=M4
L=0.15
W=0.6
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1020 -180 0 1 {name=M5
L=0.15
W=0.6
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 860 -180 2 1 {name=M6
L=0.15
W=0.6
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1200 -340 0 1 {name=M9
L=0.15
W=0.6
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1010 -340 2 1 {name=M10
L=0.15
W=0.6
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 560 -340 0 1 {name=M11
L=0.15
W=0.6
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 460 -340 3 0 {name=l1 sig_type=std_logic lab=vssd1}
