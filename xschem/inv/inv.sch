v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 -30 -0 30 { lab=out}
N -60 -60 -60 60 { lab=in}
N -120 0 -60 -0 { lab=in}
N -0 -0 80 0 { lab=out}
N 40 60 40 130 { lab=in}
N -60 130 40 130 { lab=in}
N -60 60 -60 130 { lab=in}
N -20 60 0 60 { lab=vss}
N -20 60 -20 90 { lab=vss}
N -20 90 -0 90 { lab=vss}
N 0 -220 0 -150 {
lab=vdd}
N 0 90 0 160 {
lab=vss}
N 0 -150 0 -120 {
lab=vdd}
N 0 -90 0 -30 {
lab=out}
N -60 -120 -60 -60 {
lab=in}
N -20 -150 -0 -150 {
lab=vdd}
N -20 -120 -0 -120 {
lab=vdd}
N -20 -90 -0 -90 {
lab=out}
N -120 -220 -0 -220 {
lab=vdd}
N -120 160 -0 160 {}
C {sky130_fd_pr/nfet_01v8.sym} 20 60 2 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -40 -120 2 1 {name=M2
L=Lpmos
W=Wpmos
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
C {devices/ipin.sym} -120 0 0 0 {name=p1 lab=in}
C {devices/iopin.sym} 80 0 0 0 {name=p2 lab=out}
C {devices/iopin.sym} -120 -220 2 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -120 160 2 0 {name=p1 lab=vss}
