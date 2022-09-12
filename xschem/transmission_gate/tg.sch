v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {ctrl_ is the inverse of ctrl} -250 -150 0 0 0.4 0.4 {}
N -30 -10 110 -10 { lab=ctrl}
N 30 -130 30 30 { lab=in}
N 30 30 80 30 { lab=in}
N 190 -130 190 30 { lab=out}
N 140 30 190 30 { lab=out}
N -30 -90 110 -90 { lab=ctrl_}
N -30 -50 30 -50 { lab=in}
N 190 -50 250 -50 { lab=out}
N 110 30 110 80 {
lab=vdd}
N 30 -130 80 -130 {
lab=in}
N 140 -130 190 -130 {
lab=out}
N 110 -200 110 -130 {
lab=vdd}
N -30 -200 110 -200 {
lab=vdd}
N -30 80 110 80 {
lab=vdd}
C {devices/iopin.sym} -30 -50 2 0 {name=p1 lab=in}
C {devices/iopin.sym} 250 -50 0 0 {name=p2 lab=out}
C {devices/ipin.sym} -30 -90 0 0 {name=p3 lab=ctrl_}
C {devices/ipin.sym} -30 -10 0 0 {name=p4 lab=ctrl}
C {sky130_fd_pr/nfet_01v8.sym} 110 10 1 0 {name=M1
L=Lnmos
W=Wnmos
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
C {sky130_fd_pr/pfet_01v8.sym} 110 -110 3 0 {name=M2
L=Lpmos
W=Wpmos
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} -30 -200 2 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -30 80 2 0 {name=p1 lab=vss}
