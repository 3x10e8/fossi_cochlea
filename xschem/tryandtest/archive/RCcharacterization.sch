v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 480 -70 570 -70 { lab=inhp}
N 670 -380 670 -320 { lab=#net1}
N 670 -260 670 -200 { lab=#net2}
N 670 -140 670 -110 { lab=ohp}
N 630 -70 670 -70 { lab=ohp}
N 670 -110 670 -70 { lab=ohp}
N 1020 -350 1100 -350 {
lab=#net3}
N 1160 -350 1260 -350 {
lab=#net4}
N 1320 -350 1350 -350 {
lab=o}
N 890 -350 960 -350 {
lab=in}
C {devices/netlist.sym} 0 -750 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/lib/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.param res=100k
.param Wcap=10
.param Lcap=10
.param fm = \{1.28e6/2/2/2/2/2/2/2\}
.param cr = 300
.param cs1 = 2e-15
.param c1 = \{cs1*cr\}
.param r1 = \{1/(fm*cs1)\}
.param sc = 3
.param cs2 = \{cs1*sc\}
.param c2 = \{cs2*cr\}
.param r2 = \{1/(fm*cs2)\}
.param cs3 = \{cs2*sc\}
.param c3 = \{cs3*cr\}
.param r3 = \{1/(fm*cs3)\}
.param err = 1.1
.param r1err = \{r1*err\}
.tran 1n 5m
*.ac dec 100 1 1e12
.save all
"}
C {devices/vsource.sym} 60 -90 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 60 -60 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 60 -120 0 0 {name=l94 lab=VDD}
C {devices/capa.sym} 700 -110 1 0 {name=C32
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 480 -40 0 0 {name=Vinp5 value="DC 0.6 AC 0.2"}
C {devices/gnd.sym} 480 -10 0 0 {name=l53 lab=GND}
C {devices/lab_pin.sym} 480 -70 0 0 {name=l55 sig_type=std_logic lab=inhp}
C {devices/res.sym} 670 -410 0 0 {name=R1
value=1000000000
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 670 -290 0 0 {name=R2
value=8000000000
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 670 -170 0 0 {name=R3
value=16000000000
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 700 -360 1 0 {name=C1
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 700 -240 1 0 {name=C2
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 730 -360 3 0 {name=l2 lab=GND}
C {devices/gnd.sym} 730 -240 3 0 {name=l3 lab=GND}
C {devices/gnd.sym} 730 -110 3 0 {name=l4 lab=GND}
C {devices/vsource.sym} 140 -90 0 0 {name=VDD2 value="DC 0.6"}
C {devices/gnd.sym} 140 -60 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 140 -120 0 0 {name=l6 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 670 -440 0 0 {name=l7 sig_type=std_logic lab=high}
C {devices/capa.sym} 600 -70 1 0 {name=C3
m=1
value=5.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 670 -70 3 0 {name=l1 sig_type=std_logic lab=ohp}
C {devices/res.sym} 990 -350 1 0 {name=R4
value=3906250
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1130 -350 1 0 {name=R5
value=1953125
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1290 -350 1 0 {name=R6
value=976563
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1050 -320 0 0 {name=C4
m=1
value=12p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1210 -320 0 0 {name=C5
m=1
value=6p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1350 -320 0 0 {name=C6
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1050 -290 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 1210 -290 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 1350 -290 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 910 -130 0 0 {name=Vinp1 value="SIN(0.5,0.2,5000)"}
C {devices/gnd.sym} 910 -100 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 910 -160 0 0 {name=l12 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 1350 -350 2 0 {name=l13 sig_type=std_logic lab=o}
C {devices/lab_pin.sym} 890 -350 0 0 {name=l14 sig_type=std_logic lab=in}
