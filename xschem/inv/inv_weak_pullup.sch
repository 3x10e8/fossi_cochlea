v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -60 -120 -60 60 { lab=in}
N -60 60 -40 60 { lab=in}
N -120 0 -60 -0 { lab=in}
N -0 -0 80 0 { lab=out}
N 20 -150 20 -120 { lab=vdda}
N 0 60 20 60 { lab=vssa}
N 20 60 20 90 { lab=vssa}
N 0 90 20 90 { lab=vssa}
N -0 -30 -0 30 { lab=out}
N -120 -60 -40 -60 { lab=Vpb}
N 0 -60 20 -60 { lab=vdda}
N 20 -120 20 -60 { lab=vdda}
N 0 -340 0 -290 {
lab=vdda}
N -0 90 0 120 {
lab=vssa}
N 20 -200 20 -170 { lab=vdda}
N 0 -260 20 -260 { lab=vdda}
N 20 -260 20 -200 { lab=vdda}
N -60 -260 -60 -120 {
lab=in}
N -60 -260 -40 -260 {
lab=in}
N 0 -290 20 -290 {
lab=vdda}
N 20 -290 20 -260 {
lab=vdda}
N 20 -170 20 -150 {
lab=vdda}
N -0 -230 0 -90 {
lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} -20 60 0 0 {name=M1
L=Lmin
W=Wmin
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
C {devices/ipin.sym} -120 0 0 0 {name=p1 lab=in}
C {devices/iopin.sym} 80 0 0 0 {name=p2 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} -20 -60 0 0 {name=M3
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
C {devices/ipin.sym} -120 -60 0 0 {name=p3 lab=Vpb}
C {devices/ipin.sym} 0 -340 1 0 {name=p4 lab=vdda}
C {devices/ipin.sym} 0 120 3 0 {name=p5 lab=vssa}
C {sky130_fd_pr/pfet_01v8.sym} -20 -260 0 0 {name=M5
L=Lmin
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
