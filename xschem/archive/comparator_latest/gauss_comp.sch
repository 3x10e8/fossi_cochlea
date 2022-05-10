v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1740 -320 1740 -300 { lab=pol}
N 1380 -320 1380 -280 { lab=pol}
N 1380 -320 1420 -320 { lab=pol}
N 1740 -370 1740 -320 { lab=pol}
N 1740 -370 1850 -370 { lab=pol}
N 1860 -290 1860 -260 { lab=event}
N 1860 -330 1860 -290 { lab=event}
N 1420 -320 1740 -320 { lab=pol}
N 1850 -370 1860 -370 { lab=pol}
N 1740 -300 1740 -280 { lab=pol}
N 1740 -120 1740 -100 { lab=pol2}
N 1380 -120 1380 -80 { lab=pol2}
N 1380 -120 1420 -120 { lab=pol2}
N 1740 -170 1740 -120 { lab=pol2}
N 1740 -170 1850 -170 { lab=pol2}
N 1860 -90 1860 -60 { lab=event2}
N 1860 -130 1860 -90 { lab=event2}
N 1420 -120 1740 -120 { lab=pol2}
N 1850 -170 1860 -170 { lab=pol2}
N 1740 -100 1740 -80 { lab=pol2}
C {devices/lab_pin.sym} 960 -450 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/netlist.sym} 1030 -1080 0 0 {name=SPICE2 only_toplevel=false value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_20v0__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_20v0__tt_discrete.corner.spice
.options abstol=1e-14 reltol=1e-4
.param capw=20
.param capl=5
.param Wcap=20
.param Lcap=10
.tran 1n 0.4m
.save all
"}
C {devices/vsource.sym} 90 -520 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 90 -490 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 90 -550 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 960 -550 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 960 -520 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 960 -580 0 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 1170 -420 0 0 {name=Vfclk1 value=PULSE(0,1.2,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 1170 -390 0 0 {name=l115 lab=GND}
C {devices/lab_pin.sym} 1170 -450 0 0 {name=l116 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 1430 -720 0 0 {name=Vfclk2 value=PULSE(1.2,0,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 1430 -690 0 0 {name=l117 lab=GND}
C {devices/lab_pin.sym} 1430 -750 0 0 {name=l118 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} 1430 -620 0 0 {name=Vfclk3 value=PULSE(1.2,0,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 1430 -590 0 0 {name=l119 lab=GND}
C {devices/lab_pin.sym} 1430 -650 0 0 {name=l120 sig_type=std_logic lab=phi2b}
C {devices/vsource.sym} 960 -420 0 0 {name=Vinp2 value="DC 0 SIN(0.4 0.7 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 960 -390 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1160 -570 0 0 {name=l11 sig_type=std_logic lab=inm}
C {devices/vsource.sym} 1160 -540 0 0 {name=Vinp1 value="DC 0 SIN(0.4 -0.7 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 1160 -510 0 0 {name=l14 lab=GND}
C {sky130_stdcells/and2_0.sym} 730 -620 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 670 -640 0 0 {name=l18 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 670 -600 2 1 {name=l19 sig_type=std_logic lab=low}
C {sky130_stdcells/and2_0.sym} 730 -710 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 670 -730 0 0 {name=l20 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 670 -690 2 1 {name=l21 sig_type=std_logic lab=high}
C {sky130_stdcells/and2_0.sym} 730 -530 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 670 -550 0 0 {name=l23 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 670 -510 2 1 {name=l24 sig_type=std_logic lab=low}
C {sky130_stdcells/and2_0.sym} 730 -800 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 670 -820 0 0 {name=l25 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 670 -780 2 1 {name=l26 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 790 -620 2 0 {name=l27 sig_type=std_logic lab=phi1xlow}
C {devices/lab_pin.sym} 790 -710 2 0 {name=l28 sig_type=std_logic lab=phi1xhigh}
C {devices/lab_pin.sym} 790 -530 2 0 {name=l29 sig_type=std_logic lab=phi2xlow}
C {devices/lab_pin.sym} 790 -800 2 0 {name=l30 sig_type=std_logic lab=phi2xhigh}
C {devices/vsource.sym} 1430 -510 0 0 {name=Vfclk4 value=PULSE(0,1.2,0,1n,1n,200n,400n)}
C {devices/gnd.sym} 1430 -480 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 1430 -540 0 0 {name=l47 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 1430 -420 0 0 {name=Vfclk6 value=PULSE(0,1.2,0,1n,1n,200n,400n,180)}
C {devices/gnd.sym} 1430 -390 0 0 {name=l48 lab=GND}
C {devices/lab_pin.sym} 1430 -450 0 0 {name=l49 sig_type=std_logic lab=clkb}
C {tryandtest/8switchedcaps.sym} 120 -750 0 0 {name=X1 Wcap=10 Lcap=10}
C {tryandtest/8switchedcaps.sym} 40 -580 0 0 {name=X2 Wcap=10 Lcap=10}
C {devices/lab_pin.sym} 300 -890 1 0 {name=l1 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 340 -890 1 0 {name=l2 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 300 -760 3 0 {name=l3 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 340 -760 3 0 {name=l4 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 220 -720 1 0 {name=l5 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 260 -720 1 0 {name=l6 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 220 -590 3 0 {name=l7 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 260 -590 3 0 {name=l8 sig_type=std_logic lab=phi2b}
C {tryandtest/comparator_single_tail.sym} 1340 -810 0 0 {name=X6 Wplus=1.75 Lplus=0.15 Wminus=1.75 Lminus=0.15}
C {devices/lab_pin.sym} 130 -840 0 0 {name=l9 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 50 -670 0 0 {name=l10 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 430 -670 2 0 {name=l12 sig_type=std_logic lab=outm_filtered}
C {devices/lab_pin.sym} 510 -840 2 0 {name=l13 sig_type=std_logic lab=outp_filtered}
C {devices/lab_pin.sym} 1730 -670 0 0 {name=l34 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 1730 -630 0 0 {name=l35 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} 1820 -640 2 0 {name=l36 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 1820 -660 2 0 {name=l37 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 1790 -700 2 0 {name=l38 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1700 -920 2 0 {name=l42 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1420 -820 0 0 {name=l44 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1420 -920 2 0 {name=l45 sig_type=std_logic lab=phi1}
C {tryandtest/8switchedcaps.sym} 580 -930 0 0 {name=X7 Wcap=10 Lcap=10}
C {tryandtest/8switchedcaps.sym} 50 -930 0 0 {name=X8 Wcap=10 Lcap=10}
C {devices/lab_pin.sym} 760 -1070 1 0 {name=l54 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 800 -1070 1 0 {name=l55 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 760 -940 3 0 {name=l56 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 800 -940 3 0 {name=l57 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 230 -1070 1 0 {name=l58 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 270 -1070 1 0 {name=l59 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 230 -940 3 0 {name=l60 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 270 -940 3 0 {name=l61 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 590 -1020 0 0 {name=l62 sig_type=std_logic lab=inp_}
C {devices/lab_pin.sym} 60 -1020 0 0 {name=l63 sig_type=std_logic lab=inm_}
C {devices/lab_pin.sym} 440 -1020 2 0 {name=l64 sig_type=std_logic lab=outm_fil}
C {devices/lab_pin.sym} 970 -1020 2 0 {name=l65 sig_type=std_logic lab=outp_fil}
C {devices/lab_pin.sym} 1360 -890 2 1 {name=l46 sig_type=std_logic lab=outp_fil}
C {devices/lab_pin.sym} 1360 -850 2 1 {name=l53 sig_type=std_logic lab=outm_fil}
C {devices/lab_pin.sym} 1730 -860 2 0 {name=l68 sig_type=std_logic lab=low__}
C {devices/lab_pin.sym} 1730 -880 2 0 {name=l69 sig_type=std_logic lab=high__}
C {devices/lab_pin.sym} 1450 -860 2 0 {name=l70 sig_type=std_logic lab=low_}
C {devices/lab_pin.sym} 1450 -880 2 0 {name=l71 sig_type=std_logic lab=high_}
C {devices/lab_pin.sym} 1160 -810 0 0 {name=l72 sig_type=std_logic lab=inp_}
C {devices/vsource.sym} 1160 -780 0 0 {name=Vinp3 value="DC 0 SIN(0.4 0.7 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 1160 -750 0 0 {name=l73 lab=GND}
C {devices/lab_pin.sym} 1160 -690 0 0 {name=l74 sig_type=std_logic lab=inm_}
C {devices/vsource.sym} 1160 -660 0 0 {name=Vinp4 value="DC 0 SIN(0.4 -0.7 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 1160 -630 0 0 {name=l75 lab=GND}
C {devices/lab_pin.sym} 960 -810 0 0 {name=l76 sig_type=std_logic lab=inp__}
C {devices/vsource.sym} 960 -780 0 0 {name=Vinp5 value="DC 0 SIN(0.4 0.7 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 960 -750 0 0 {name=l77 lab=GND}
C {devices/lab_pin.sym} 960 -690 0 0 {name=l78 sig_type=std_logic lab=inm__}
C {devices/vsource.sym} 960 -660 0 0 {name=Vinp6 value="DC 0 SIN(0.4 -0.7 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 960 -630 0 0 {name=l79 lab=GND}
C {tryandtest/az_circuit_3_caps.sym} 390 -470 0 0 {name=X3 Wcap=10 Lcap=10}
C {devices/lab_pin.sym} 400 -540 0 0 {name=l17 sig_type=std_logic lab=outp_filtered}
C {devices/lab_pin.sym} 460 -480 3 0 {name=l31 sig_type=std_logic lab=phi1xhigh}
C {devices/lab_pin.sym} 500 -480 3 0 {name=l33 sig_type=std_logic lab=phi2xhigh}
C {devices/lab_pin.sym} 480 -600 0 0 {name=l39 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 560 -540 0 1 {name=l40 sig_type=std_logic lab=outp}
C {tryandtest/az_circuit_3_caps.sym} 710 -350 0 0 {name=X9 Wcap=10 Lcap=10}
C {devices/lab_pin.sym} 720 -420 0 0 {name=l15 sig_type=std_logic lab=outm_filtered}
C {devices/lab_pin.sym} 780 -360 3 0 {name=l32 sig_type=std_logic lab=phi1xlow}
C {devices/lab_pin.sym} 820 -360 3 0 {name=l50 sig_type=std_logic lab=phi2xlow}
C {devices/lab_pin.sym} 800 -480 0 0 {name=l51 sig_type=std_logic lab=clkb}
C {devices/lab_pin.sym} 880 -420 0 1 {name=l52 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} 1860 -260 0 1 {name=l80 sig_type=std_logic lab=event}
C {sky130_stdcells/xor2_1.sym} 1800 -260 2 1 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1020 -300 3 0 {name=l81 sig_type=std_logic lab=phi1b}
C {sky130_stdcells/dfxtp_1.sym} 1470 -270 2 1 {name=x11 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1380 -260 3 0 {name=l82 sig_type=std_logic lab=phi1}
C {sky130_stdcells/dfxtp_1.sym} 1650 -250 2 1 {name=x12 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1560 -240 3 0 {name=l83 sig_type=std_logic lab=phi1}
C {sky130_stdcells/dfxtp_1.sym} 1110 -310 2 1 {name=x10 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfxtp_1.sym} 1290 -290 2 1 {name=x13 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1200 -280 3 0 {name=l84 sig_type=std_logic lab=phi1}
C {sky130_stdcells/and2_0.sym} 1920 -350 2 1 {name=x14 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1980 -350 0 1 {name=l85 sig_type=std_logic lab=polxevent}
C {devices/lab_pin.sym} 1490 -320 3 1 {name=l86 sig_type=std_logic lab=pol}
C {devices/lab_pin.sym} 1200 -300 3 1 {name=l87 sig_type=std_logic lab=latch}
C {devices/lab_pin.sym} 1020 -320 2 1 {name=l88 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 1860 -60 0 1 {name=l41 sig_type=std_logic lab=event2}
C {sky130_stdcells/xor2_1.sym} 1800 -60 2 1 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1020 -100 3 0 {name=l43 sig_type=std_logic lab=phi1b}
C {sky130_stdcells/dfxtp_1.sym} 1470 -70 2 1 {name=x7 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1380 -60 3 0 {name=l89 sig_type=std_logic lab=phi1}
C {sky130_stdcells/dfxtp_1.sym} 1650 -50 2 1 {name=x8 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1560 -40 3 0 {name=l90 sig_type=std_logic lab=phi1}
C {sky130_stdcells/dfxtp_1.sym} 1110 -110 2 1 {name=x9 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfxtp_1.sym} 1290 -90 2 1 {name=x15 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1200 -80 3 0 {name=l91 sig_type=std_logic lab=phi1}
C {sky130_stdcells/and2_0.sym} 1920 -150 2 1 {name=x16 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1980 -150 0 1 {name=l92 sig_type=std_logic lab=polxevent2}
C {devices/lab_pin.sym} 1490 -120 3 1 {name=l96 sig_type=std_logic lab=pol2}
C {devices/lab_pin.sym} 1200 -100 3 1 {name=l97 sig_type=std_logic lab=latch2}
C {devices/lab_pin.sym} 1020 -120 2 1 {name=l98 sig_type=std_logic lab=high2}
C {tryandtest/comparator_type_2.sym} 1620 -810 0 0 {name=X4 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {tryandtest/comparator_type_2.sym} 1710 -590 0 0 {name=X5 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {devices/lab_pin.sym} 1640 -890 0 0 {name=l66 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 1640 -850 0 0 {name=l67 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} 1730 -550 0 0 {name=l99 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 1730 -510 0 0 {name=l100 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} 1820 -520 2 0 {name=l101 sig_type=std_logic lab=low2}
C {devices/lab_pin.sym} 1820 -540 2 0 {name=l102 sig_type=std_logic lab=high2}
C {devices/lab_pin.sym} 1790 -580 2 0 {name=l103 sig_type=std_logic lab=phi1}
C {tryandtest/comparator_single_tail.sym} 1710 -470 0 0 {name=X10 Wplus=1.75 Lplus=0.15 Wminus=1.75 Lminus=0.15}
C {devices/lab_pin.sym} 1790 -480 0 0 {name=l104 sig_type=std_logic lab=phi1b}
