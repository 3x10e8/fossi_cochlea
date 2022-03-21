v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {dfxtp is a flip flop} 2250 20 0 0 0.2 0.2 {}
N 1100 -90 1160 -90 { lab=outp}
N 1160 -90 1190 -90 { lab=outp}
N 1430 80 1490 80 { lab=outm}
N 1490 80 1520 80 { lab=outm}
N 1520 80 1650 80 { lab=outm}
N 1190 -90 1340 -90 { lab=outp}
N 1240 -140 1240 -90 { lab=outp}
N 1540 50 1540 80 { lab=outm}
N 1900 -10 1960 -10 { lab=#net1}
N 1960 -20 1960 -10 { lab=#net1}
N 1900 10 1960 10 { lab=#net2}
N 1960 10 1960 20 { lab=#net2}
N 2930 0 2930 20 { lab=pol}
N 2930 -20 2930 0 { lab=pol}
N 2570 -20 2570 20 { lab=pol}
N 2570 -20 2610 -20 { lab=pol}
N 2930 -70 2930 -20 { lab=pol}
N 2930 -70 3040 -70 { lab=pol}
N 3050 10 3050 40 { lab=event}
N 3050 -30 3050 10 { lab=event}
N 3040 -70 3050 -70 { lab=pol}
N 2610 -20 2930 -20 { lab=pol}
C {devices/netlist.sym} 1680 -660 0 0 {name=SPICE2 only_toplevel=false value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_20v0__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_20v0__tt_discrete.corner.spice
.options abstol=1e-14 reltol=1e-4
.param capw=20
.param capl=5
.param Wcap=10
.param Lcap=10
.tran 10n 2m
.save all
"}
C {devices/lab_pin.sym} 1780 -220 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/vsource.sym} 2240 -420 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 2240 -390 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 2240 -450 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 1780 -320 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 1780 -290 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 1780 -350 0 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 1970 -450 0 0 {name=Vfclk1 value=PULSE(0,1.2,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 1970 -420 0 0 {name=l115 lab=GND}
C {devices/lab_pin.sym} 1970 -480 0 0 {name=l116 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 2240 -280 0 0 {name=Vfclk2 value=PULSE(1.2,0,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 2240 -250 0 0 {name=l117 lab=GND}
C {devices/lab_pin.sym} 2240 -310 0 0 {name=l118 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} 2240 -180 0 0 {name=Vfclk3 value=PULSE(1.2,0,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 2240 -150 0 0 {name=l119 lab=GND}
C {devices/lab_pin.sym} 2240 -210 0 0 {name=l120 sig_type=std_logic lab=phi2b}
C {devices/vsource.sym} 1780 -190 0 0 {name=Vinp2 value="DC 0.6 SIN(0.4 0.2 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 1780 -100 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1980 -340 0 0 {name=l11 sig_type=std_logic lab=inm}
C {devices/vsource.sym} 1980 -310 0 0 {name=Vinp1 value="DC 0.6 SIN(0.4 -0.2 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 1980 -220 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1340 -90 2 0 {name=l19 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 1650 80 2 0 {name=l35 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} 1040 -90 0 0 {name=l105 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1370 80 0 0 {name=l5 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 1160 -510 2 1 {name=l32 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1160 -470 2 1 {name=l33 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1160 -370 0 0 {name=l28 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1160 -330 0 0 {name=l29 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1160 -230 2 1 {name=l36 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1160 -190 2 1 {name=l52 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1300 -510 2 0 {name=l30 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1300 -470 2 0 {name=l31 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1300 -370 2 0 {name=l53 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1300 -330 2 0 {name=l54 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1300 -230 2 0 {name=l55 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1300 -190 2 0 {name=l56 sig_type=std_logic lab=phi2b}
C {tryandtest/1cap_high_TC.sym} 1150 -290 1 0 {name=X7 Wcap=Wcap Lcap=Lcap}
C {tryandtest/1cap_high_TC.sym} 1150 -430 1 0 {name=X3 Wcap=Wcap Lcap=Lcap}
C {tryandtest/1cap_high_TC.sym} 1150 -570 1 0 {name=X9 Wcap=Wcap Lcap=Lcap}
C {devices/lab_pin.sym} 1810 20 0 0 {name=l7 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} 1810 -20 0 0 {name=l121 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 2040 -20 0 1 {name=l38 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 2040 20 0 1 {name=l39 sig_type=std_logic lab=low}
C {tryandtest/comparator_single_tail.sym} 1790 60 0 0 {name=X2 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {devices/lab_pin.sym} 1870 -50 0 0 {name=l6 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1870 50 0 0 {name=l8 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1460 -320 2 1 {name=l80 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1460 -280 2 1 {name=l81 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1460 -180 0 0 {name=l82 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1460 -140 0 0 {name=l83 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1460 -40 2 1 {name=l84 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1460 0 2 1 {name=l85 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1600 -320 2 0 {name=l86 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1600 -280 2 0 {name=l87 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1600 -180 2 0 {name=l88 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1600 -140 2 0 {name=l89 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1600 -40 2 0 {name=l90 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1600 0 2 0 {name=l91 sig_type=std_logic lab=phi2b}
C {tryandtest/1cap_high_TC.sym} 1450 -100 1 0 {name=X19 Wcap=Wcap Lcap=Lcap}
C {tryandtest/1cap_high_TC.sym} 1450 -240 1 0 {name=X20 Wcap=Wcap Lcap=Lcap}
C {tryandtest/1cap_high_TC.sym} 1450 -380 1 0 {name=X21 Wcap=Wcap Lcap=Lcap}
C {sky130_stdcells/buf_1.sym} 2000 -20 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/buf_1.sym} 2000 20 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1240 -560 0 1 {name=l1 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 1540 -370 0 1 {name=l2 sig_type=std_logic lab=high}
C {devices/capa.sym} 1070 -90 1 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1400 80 1 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 1780 -130 0 0 {name=Vinp3 value="DC 0.6 SIN(0.4 0.2 15)"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} 1980 -250 0 0 {name=Vinp4 value="DC 0.6 SIN(0.4 -0.2 15)"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} 3050 40 0 1 {name=l49 sig_type=std_logic lab=event}
C {sky130_stdcells/xor2_1.sym} 2990 40 2 1 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2210 0 3 0 {name=l3 sig_type=std_logic lab=phi1b}
C {sky130_stdcells/dfxtp_1.sym} 2660 30 2 1 {name=x11 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2570 40 3 0 {name=l4 sig_type=std_logic lab=phi1}
C {sky130_stdcells/dfxtp_1.sym} 2840 50 2 1 {name=x12 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2750 60 3 0 {name=l9 sig_type=std_logic lab=phi1}
C {sky130_stdcells/dfxtp_1.sym} 2300 -10 2 1 {name=x9 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfxtp_1.sym} 2480 10 2 1 {name=x10 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2390 20 3 0 {name=l50 sig_type=std_logic lab=phi1}
C {sky130_stdcells/and2_0.sym} 3110 -50 2 1 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3170 -50 0 1 {name=l51 sig_type=std_logic lab=polxevent}
C {devices/lab_pin.sym} 2680 -20 3 1 {name=l10 sig_type=std_logic lab=pol}
C {devices/lab_pin.sym} 2390 0 3 1 {name=l13 sig_type=std_logic lab=latch}
C {devices/lab_pin.sym} 2210 -20 0 0 {name=l12 sig_type=std_logic lab=high}
