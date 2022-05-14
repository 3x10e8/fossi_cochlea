v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -80 -50 -80 -40 {
lab=out}
N -80 -40 80 -40 {
lab=out}
N 80 -50 80 -40 {
lab=out}
N 0 -40 0 40 {
lab=out}
N -80 40 -80 50 {
lab=out}
N -80 40 80 40 {
lab=out}
N 80 40 80 50 {
lab=out}
N -80 110 -80 120 {
lab=vref2}
N -80 120 80 120 {
lab=vref2}
N 80 110 80 120 {
lab=vref2}
N -80 -120 -80 -110 {
lab=vref1}
N -80 -120 80 -120 {
lab=vref1}
N 80 -120 80 -110 {
lab=vref1}
N -160 -80 -120 -80 {
lab=c}
N 120 80 160 80 {
lab=c}
N -160 80 -120 80 {
lab=cbar}
N 120 -80 160 -80 {
lab=cbar}
N 0 0 160 0 {
lab=out}
N 0 -180 0 -120 {
lab=vref1}
N 0 120 0 180 {
lab=vref2}
N -160 -180 -0 -180 {
lab=vref1}
N -160 180 -0 180 {
lab=vref2}
C {devices/ipin.sym} -160 -180 0 0 {name=p1 lab=vref1}
C {devices/opin.sym} 160 0 0 0 {name=p2 lab=out}
C {devices/ipin.sym} -160 180 2 1 {name=p3 lab=vref2}
C {devices/ipin.sym} -160 -80 0 0 {name=p4 lab=c}
C {sky130_fd_pr/nfet_01v8.sym} -100 -80 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 100 -80 2 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} -100 80 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 100 80 2 0 {name=M8
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
C {devices/lab_pin.sym} 160 80 2 0 {name=l1 sig_type=std_logic lab=c}
C {devices/ipin.sym} -160 80 2 1 {name=p6 lab=cbar}
C {devices/lab_pin.sym} 160 -80 2 0 {name=l2 sig_type=std_logic lab=cbar}
C {devices/ipin.sym} -160 240 2 1 {name=p5 lab=vssa}
C {devices/lab_pin.sym} -80 -80 2 0 {name=l3 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} -80 80 2 0 {name=l5 sig_type=std_logic lab=vssa}
C {devices/ipin.sym} -160 -240 2 1 {name=p7 lab=vdda}
C {devices/lab_pin.sym} 80 -80 0 0 {name=l4 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 80 80 0 0 {name=l6 sig_type=std_logic lab=vdda}
