v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 50 -70 340 -70 {
lab=vo}
N 340 -40 470 -40 {
lab=GND}
N 200 -120 200 -70 {
lab=vo}
N 200 -40 230 -40 {
lab=GND}
N 230 -40 230 30 {
lab=GND}
N 200 -180 400 -180 {
lab=GND}
C {devices/netlist.sym} 50 -330 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.options abstol=1e-14 reltol=1e-4
.param clk_f=2.56e6
.param clk_tp=\{1/clk_f\}
.dc
.save all
"}
C {devices/vsource.sym} -150 -280 0 0 {name=VDD4 value="DC 3.3"}
C {devices/gnd.sym} -150 -250 0 0 {name=l57 lab=GND}
C {devices/vdd.sym} -150 -310 0 0 {name=l58 lab=VDD}
C {devices/vsource.sym} -150 -70 0 0 {name=VDD1 value="DC 2.5"}
C {devices/gnd.sym} -150 -40 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -150 -100 0 0 {name=l6 sig_type=std_logic lab=vp}
C {devices/vsource.sym} -150 -170 0 0 {name=VDD2 value="DC 0"}
C {devices/gnd.sym} -150 -140 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -150 -200 0 0 {name=l2 sig_type=std_logic lab=vm}
C {devices/lab_pin.sym} 50 -10 0 0 {name=l3 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} 340 -10 0 0 {name=l4 sig_type=std_logic lab=vm}
C {devices/vsource.sym} -50 -170 0 0 {name=VDD3 value="DC 1.8"}
C {devices/gnd.sym} -50 -140 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -50 -200 0 0 {name=l8 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 200 -10 0 0 {name=l9 sig_type=std_logic lab=vref}
C {devices/vdd.sym} 10 -40 0 0 {name=l10 lab=VDD}
C {devices/vdd.sym} 160 -40 3 0 {name=l11 lab=VDD}
C {devices/vdd.sym} 300 -40 3 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 470 -40 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 200 -110 0 0 {name=l14 sig_type=std_logic lab=vo}
C {devices/gnd.sym} 230 30 0 0 {name=l15 lab=GND}
C {devices/gnd.sym} 400 -180 0 0 {name=l16 lab=GND}
C {devices/isource.sym} 200 -150 0 0 {name=I0 value=6m}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 320 -40 0 0 {name=M1
L=0.5
W=1
nf=5
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 180 -40 0 0 {name=M2
L=0.5
W=1
nf=10
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 30 -40 0 0 {name=M3
L=0.15
W=1
body=VDD
nf=10
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
