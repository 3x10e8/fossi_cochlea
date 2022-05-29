v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 110 -110 150 -110 { lab=t}
N 110 -140 110 -110 { lab=t}
N 150 -110 230 -110 { lab=t}
C {devices/netlist.sym} 10 -310 0 0 {name=SPICE2 only_toplevel=false value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.tran 10u 0.5m
.save all
"}
C {devices/vsource.sym} 450 -110 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 450 -80 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 450 -140 0 0 {name=l94 lab=VDD}
C {devices/vdd.sym} 150 -170 0 0 {name=l143 lab=VDD}
C {devices/gnd.sym} 150 -50 0 0 {name=l144 lab=GND}
C {devices/lab_pin.sym} 230 -110 2 0 {name=l145 sig_type=std_logic lab=t}
C {devices/isource.sym} 150 -80 0 0 {name=I0 value=1p}
C {sky130_fd_pr/pfet3_01v8.sym} 130 -140 0 0 {name=M1
L=4
W=0.5
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
