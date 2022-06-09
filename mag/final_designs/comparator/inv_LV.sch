v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 135 -1015 135 -965 {
lab=Y}
N 135 -935 135 -905 {
lab=vssd1}
N 135 -905 135 -870 {
lab=vssd1}
N 95 -1045 95 -935 {
lab=A}
N 135 -990 235 -990 {
lab=Y}
N 15 -990 95 -990 {
lab=A}
N 135 -1075 135 -1045 {
lab=vccd1}
N 135 -1125 135 -1075 {
lab=vccd1}
C {sky130_fd_pr/nfet_01v8.sym} 115 -935 0 0 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 115 -1045 0 0 {name=M2
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
C {devices/iopin.sym} 135 -1120 1 1 {name=p1 lab=vccd1}
C {devices/iopin.sym} 135 -875 3 1 {name=p2 lab=vssd1}
C {devices/ipin.sym} 25 -990 0 0 {name=p3 lab=A}
C {devices/opin.sym} 230 -990 0 0 {name=p4 lab=Y}
