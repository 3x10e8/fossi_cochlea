v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 550 80 610 80 { lab=outp_filtered}
N 670 80 700 80 { lab=outp}
N 1700 -60 1760 -60 { lab=outm_filtered}
N 1820 -60 1850 -60 { lab=outm}
N 1850 -60 1980 -60 { lab=outm}
N 1870 -110 1870 -60 { lab=outm}
N 700 80 850 80 { lab=outp}
N 750 30 750 80 { lab=outp}
C {devices/netlist.sym} 0 -590 0 0 {name=SPICE2 only_toplevel=false value="
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
.tran 1n 0.4m
.save all
"}
C {devices/lab_pin.sym} 960 -260 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/vsource.sym} 1170 -90 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 1170 -60 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 1170 -120 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 960 -360 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 960 -330 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 960 -390 0 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 1170 -230 0 0 {name=Vfclk1 value=PULSE(0,1.2,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 1170 -200 0 0 {name=l115 lab=GND}
C {devices/lab_pin.sym} 1170 -260 0 0 {name=l116 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 1430 -530 0 0 {name=Vfclk2 value=PULSE(1.2,0,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 1430 -500 0 0 {name=l117 lab=GND}
C {devices/lab_pin.sym} 1430 -560 0 0 {name=l118 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} 1430 -430 0 0 {name=Vfclk3 value=PULSE(1.2,0,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 1430 -400 0 0 {name=l119 lab=GND}
C {devices/lab_pin.sym} 1430 -460 0 0 {name=l120 sig_type=std_logic lab=phi2b}
C {devices/vsource.sym} 960 -230 0 0 {name=Vinp2 value="DC 0 SIN(0.4 0.7 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 960 -200 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1160 -380 0 0 {name=l11 sig_type=std_logic lab=inm}
C {devices/vsource.sym} 1160 -350 0 0 {name=Vinp1 value="DC 0 SIN(0.4 -0.7 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 1160 -320 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 1430 -320 0 0 {name=Vfclk4 value=PULSE(0,0.3,0,1n,1n,200n,400n)}
C {devices/gnd.sym} 1430 -290 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 1430 -350 0 0 {name=l47 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 1430 -230 0 0 {name=Vfclk6 value=PULSE(0,0.3,0,1n,1n,200n,400n,180)}
C {devices/gnd.sym} 1430 -200 0 0 {name=l48 lab=GND}
C {devices/lab_pin.sym} 1430 -260 0 0 {name=l49 sig_type=std_logic lab=clkb}
C {sky130_fd_pr/cap_mim_m3_1.sym} 640 80 3 0 {name=C2 model=cap_mim_m3_1 W=Wcap L=Lcap MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 580 80 3 0 {name=l18 sig_type=std_logic lab=outp_filtered}
C {devices/lab_pin.sym} 850 80 2 0 {name=l19 sig_type=std_logic lab=outp}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1790 -60 3 0 {name=C3 model=cap_mim_m3_1 W=Wcap L=Lcap MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1730 -60 3 0 {name=l34 sig_type=std_logic lab=outm_filtered}
C {devices/lab_pin.sym} 1980 -60 2 0 {name=l35 sig_type=std_logic lab=outm}
C {tryandtest/2switchcaps.sym} 750 -40 3 0 {name=X7 Wcap=Wcap Lcap=Lcap}
C {tryandtest/2switchcaps.sym} 750 -180 3 0 {name=X8 Wcap=Wcap Lcap=Lcap}
C {devices/lab_pin.sym} 750 -250 0 0 {name=l15 sig_type=std_logic lab=clk}
C {tryandtest/2switchcaps.sym} 1870 -180 3 0 {name=X11 Wcap=Wcap Lcap=Lcap}
C {tryandtest/2switchcaps.sym} 1870 -320 3 0 {name=X12 Wcap=Wcap Lcap=Lcap}
C {devices/lab_pin.sym} 1870 -390 0 0 {name=l36 sig_type=std_logic lab=clkb}
C {sky130_stdcells/and2_0.sym} 300 -230 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 240 -250 0 0 {name=l37 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 240 -210 2 1 {name=l38 sig_type=std_logic lab=low}
C {sky130_stdcells/and2_0.sym} -10 -120 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} -70 -140 0 0 {name=l39 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -70 -100 2 1 {name=l40 sig_type=std_logic lab=high}
C {sky130_stdcells/and2_0.sym} 310 -410 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 250 -430 0 0 {name=l41 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 250 -390 2 1 {name=l42 sig_type=std_logic lab=low}
C {sky130_stdcells/and2_0.sym} -10 -320 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} -70 -340 0 0 {name=l43 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} -70 -300 2 1 {name=l44 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 360 -230 2 0 {name=l45 sig_type=std_logic lab=phi1xlow}
C {devices/lab_pin.sym} 50 -120 2 0 {name=l46 sig_type=std_logic lab=phi1xhigh}
C {devices/lab_pin.sym} 370 -410 2 0 {name=l50 sig_type=std_logic lab=phi2xlow}
C {devices/lab_pin.sym} 50 -320 2 0 {name=l51 sig_type=std_logic lab=phi2xhigh}
C {sky130_stdcells/inv_1.sym} -20 -20 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} -20 -230 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 310 -150 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 310 -320 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 350 -320 2 0 {name=l90 sig_type=std_logic lab=phi2xlowb}
C {devices/lab_pin.sym} 270 -320 2 1 {name=l91 sig_type=std_logic lab=phi2xlow}
C {devices/lab_pin.sym} 350 -150 2 0 {name=l92 sig_type=std_logic lab=phi1xlowb}
C {devices/lab_pin.sym} 270 -150 2 1 {name=l96 sig_type=std_logic lab=phi1xlow}
C {devices/lab_pin.sym} 20 -230 2 0 {name=l97 sig_type=std_logic lab=phi2xhighb}
C {devices/lab_pin.sym} -60 -230 2 1 {name=l98 sig_type=std_logic lab=phi2xhigh}
C {devices/lab_pin.sym} 20 -20 2 0 {name=l99 sig_type=std_logic lab=phi1xhighb}
C {devices/lab_pin.sym} -60 -20 2 1 {name=l100 sig_type=std_logic lab=phi1xhigh}
C {devices/lab_pin.sym} 830 -60 2 0 {name=l52 sig_type=std_logic lab=phi1xlow}
C {devices/lab_pin.sym} 830 -20 2 0 {name=l53 sig_type=std_logic lab=phi2xlow}
C {devices/lab_pin.sym} 830 -200 2 0 {name=l54 sig_type=std_logic lab=phi1xlow}
C {devices/lab_pin.sym} 830 -160 2 0 {name=l55 sig_type=std_logic lab=phi2xlow}
C {devices/lab_pin.sym} 690 -160 2 1 {name=l59 sig_type=std_logic lab=phi2xlowb}
C {devices/lab_pin.sym} 690 -20 2 1 {name=l60 sig_type=std_logic lab=phi2xlowb}
C {devices/lab_pin.sym} 690 -200 2 1 {name=l62 sig_type=std_logic lab=phi1xlowb}
C {devices/lab_pin.sym} 690 -60 2 1 {name=l63 sig_type=std_logic lab=phi1xlowb}
C {devices/lab_pin.sym} 1950 -200 2 0 {name=l64 sig_type=std_logic lab=phi1xhigh}
C {devices/lab_pin.sym} 1950 -160 2 0 {name=l65 sig_type=std_logic lab=phi2xhigh}
C {devices/lab_pin.sym} 1950 -340 2 0 {name=l66 sig_type=std_logic lab=phi1xhigh}
C {devices/lab_pin.sym} 1950 -300 2 0 {name=l67 sig_type=std_logic lab=phi2xhigh}
C {devices/lab_pin.sym} 1810 -160 2 1 {name=l70 sig_type=std_logic lab=phi2xhighb}
C {devices/lab_pin.sym} 1810 -200 2 1 {name=l71 sig_type=std_logic lab=phi1xhighb}
C {devices/lab_pin.sym} 1810 -300 2 1 {name=l80 sig_type=std_logic lab=phi2xhighb}
C {devices/lab_pin.sym} 1810 -340 2 1 {name=l81 sig_type=std_logic lab=phi1xhighb}
C {devices/lab_pin.sym} 1000 20 2 1 {name=l84 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 1000 60 2 1 {name=l85 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} 1060 -10 0 0 {name=l86 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1090 50 2 0 {name=l88 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 1090 30 2 0 {name=l89 sig_type=std_logic lab=high}
C {tryandtest/8switchedcaps.sym} 160 170 0 0 {name=X14 Wcap=10 Lcap=10}
C {devices/lab_pin.sym} 340 30 0 0 {name=l101 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 380 30 2 0 {name=l102 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 340 160 0 0 {name=l103 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 380 160 2 0 {name=l104 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 170 80 0 0 {name=l105 sig_type=std_logic lab=inp}
C {tryandtest/8switchedcaps.sym} 1310 30 0 0 {name=X1 Wcap=10 Lcap=10}
C {devices/lab_pin.sym} 1490 -110 0 0 {name=l1 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1530 -110 2 0 {name=l2 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1490 20 0 0 {name=l3 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1530 20 2 0 {name=l4 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1320 -60 0 0 {name=l5 sig_type=std_logic lab=inm}
C {tryandtest/comparator_type_2.sym} 980 100 0 0 {name=X2 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
