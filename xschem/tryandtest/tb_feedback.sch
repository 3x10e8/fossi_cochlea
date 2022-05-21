v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -160 -930 -10 -930 {
lab=out1}
N 90 -930 160 -930 {
lab=ox}
N -380 -930 -260 -930 {
lab=ainv_out}
N -10 -690 170 -690 {
lab=o2}
N 270 -690 370 -690 {
lab=ox}
N 530 -690 710 -690 {
lab=o4}
N 810 -690 910 -690 {
lab=o5}
N 1070 -690 1250 -690 {
lab=o6}
N 1350 -690 1450 -690 {
lab=o7}
N 370 -690 430 -690 {
lab=ox}
N 910 -690 970 -690 {
lab=o5}
N 160 -930 360 -930 {
lab=ox}
N 360 -930 370 -930 {
lab=ox}
N 370 -930 370 -690 {
lab=ox}
C {binary counter/bin_counter.sym} 2310 -550 0 1 {name=X1}
C {tryandtest/selector_gray.sym} 780 -1520 2 0 {name=X2}
C {devices/vsource.sym} -1350 -1340 0 0 {name=V1 value=PULSE(0,1.2,\{clk_tp\},1n,1n,\{2*clk_tp\},\{4*clk_tp\})}
C {devices/vsource.sym} -1350 -1130 0 0 {name=VDD4 value="DC 1.2"}
C {devices/gnd.sym} -1350 -1100 0 0 {name=l57 lab=GND}
C {devices/vdd.sym} -1350 -1160 0 0 {name=l58 lab=VDD}
C {devices/gnd.sym} -1350 -1310 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -1350 -1370 0 0 {name=l156 sig_type=std_logic lab=clk1}
C {devices/vsource.sym} -1350 -1250 0 0 {name=V2 value=PULSE(0,1.2,\{2*clk_tp\},1n,1n,\{4*clk_tp\},\{8*clk_tp\})}
C {devices/gnd.sym} -1350 -1220 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -1350 -1280 0 0 {name=l3 sig_type=std_logic lab=clk2}
C {devices/netlist.sym} -1380 -1600 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/lib/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.param clk_f=2.56e6
.param clk_tp=\{1/clk_f\}
.tran 10000u 5m
.save all
"}
C {devices/vsource.sym} -1030 -1250 0 0 {name=V3 value=PULSE(0,1.2,\{4*clk_tp\},1n,1n,\{8*clk_tp\},\{16*clk_tp\})}
C {devices/gnd.sym} -1030 -1220 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -1030 -1280 0 0 {name=l5 sig_type=std_logic lab=clk3}
C {devices/vsource.sym} -1030 -1340 0 0 {name=V4 value=PULSE(0,1.2,\{8*clk_tp\},1n,1n,\{16*clk_tp\},\{32*clk_tp\})}
C {devices/gnd.sym} -1030 -1310 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -1030 -1370 0 0 {name=l7 sig_type=std_logic lab=clk4}
C {devices/vsource.sym} -1030 -1070 0 0 {name=V5 value=PULSE(0,1.2,\{16*clk_tp\},1n,1n,\{32*clk_tp\},\{64*clk_tp\})}
C {devices/gnd.sym} -1030 -1040 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -1030 -1100 0 0 {name=l9 sig_type=std_logic lab=clk5}
C {devices/vsource.sym} -1030 -1160 0 0 {name=V6 value=PULSE(0,1.2,\{32*clk_tp\},1n,1n,\{64*clk_tp\},\{128*clk_tp\})}
C {devices/gnd.sym} -1030 -1130 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -1030 -1190 0 0 {name=l11 sig_type=std_logic lab=clk6}
C {devices/vsource.sym} -650 -1250 0 0 {name=V7 value=PULSE(0,1.2,\{64*clk_tp\},1n,1n,\{128*clk_tp\},\{256*clk_tp\})}
C {devices/gnd.sym} -650 -1220 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -650 -1280 0 0 {name=l13 sig_type=std_logic lab=clk7}
C {devices/vsource.sym} -650 -1340 0 0 {name=V8 value=PULSE(0,1.2,\{128*clk_tp\},1n,1n,\{256*clk_tp\},\{512*clk_tp\})}
C {devices/gnd.sym} -650 -1310 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -650 -1370 0 0 {name=l15 sig_type=std_logic lab=clk8}
C {devices/vsource.sym} -650 -1070 0 0 {name=V9 value=PULSE(0,1.2,\{256*clk_tp\},1n,1n,\{512*clk_tp\},\{1024*clk_tp\})}
C {devices/gnd.sym} -650 -1040 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} -650 -1100 0 0 {name=l17 sig_type=std_logic lab=clk9}
C {devices/vsource.sym} -650 -1160 0 0 {name=V10 value=PULSE(0,1.2,\{512*clk_tp\},1n,1n,\{1024*clk_tp\},\{2048*clk_tp\})}
C {devices/gnd.sym} -650 -1130 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} -650 -1190 0 0 {name=l19 sig_type=std_logic lab=clk10}
C {devices/vsource.sym} -650 -1450 0 0 {name=V11 value=PULSE(0,1.2,\{clk_tp\},1n,1n,\{0.5*clk_tp\},\{clk_tp\})}
C {devices/gnd.sym} -650 -1420 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} -650 -1480 0 0 {name=l48 sig_type=std_logic lab=clk_ext}
C {devices/vsource.sym} -360 -1450 0 0 {name=V12 value="PWL(0 0 0.1n 0 0.11n 1.2)"}
C {devices/gnd.sym} -360 -1420 0 0 {name=l88 lab=GND}
C {devices/lab_pin.sym} -360 -1480 0 0 {name=l89 sig_type=std_logic lab=rstb_global}
C {devices/vsource.sym} -1060 -1470 0 0 {name=V13 value=PULSE(0,1.2,\{clk_tp\},1n,1n,\{0.5*clk_tp\},\{2*clk_tp\})}
C {devices/gnd.sym} -1060 -1440 0 0 {name=l100 lab=GND}
C {devices/lab_pin.sym} -1060 -1500 0 0 {name=l101 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 710 -1400 3 0 {name=l24 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 680 -1400 3 0 {name=l25 sig_type=std_logic lab=rstb_global}
C {devices/lab_pin.sym} 1070 -1190 3 0 {name=l29 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 760 -1510 2 0 {name=l30 sig_type=std_logic lab=clk1}
C {devices/lab_pin.sym} 760 -1500 2 0 {name=l31 sig_type=std_logic lab=clk2}
C {devices/lab_pin.sym} 760 -1490 2 0 {name=l32 sig_type=std_logic lab=clk3}
C {devices/lab_pin.sym} 760 -1480 2 0 {name=l33 sig_type=std_logic lab=clk4}
C {devices/lab_pin.sym} 760 -1470 2 0 {name=l34 sig_type=std_logic lab=clk5}
C {devices/lab_pin.sym} 760 -1460 2 0 {name=l35 sig_type=std_logic lab=clk6}
C {devices/lab_pin.sym} 760 -1450 2 0 {name=l36 sig_type=std_logic lab=clk7}
C {devices/lab_pin.sym} 760 -1440 2 0 {name=l37 sig_type=std_logic lab=clk8}
C {devices/lab_pin.sym} 760 -1430 2 0 {name=l38 sig_type=std_logic lab=clk9}
C {devices/lab_pin.sym} 760 -1420 2 0 {name=l39 sig_type=std_logic lab=clk10}
C {devices/lab_pin.sym} 1190 -1510 2 0 {name=l41 sig_type=std_logic lab=rstb_global}
C {devices/lab_pin.sym} 1190 -1470 2 0 {name=l42 sig_type=std_logic lab=comp_out_test}
C {devices/lab_pin.sym} 960 -1550 0 0 {name=l43 sig_type=std_logic lab=q0}
C {devices/lab_pin.sym} 960 -1530 0 0 {name=l44 sig_type=std_logic lab=q1}
C {devices/lab_pin.sym} 960 -1510 0 0 {name=l45 sig_type=std_logic lab=q2}
C {devices/lab_pin.sym} 960 -1490 0 0 {name=l46 sig_type=std_logic lab=q3}
C {devices/lab_pin.sym} 960 -1470 0 0 {name=l49 sig_type=std_logic lab=q4}
C {devices/lab_pin.sym} 960 -1450 0 0 {name=l50 sig_type=std_logic lab=q5}
C {devices/lab_pin.sym} 960 -1430 0 0 {name=l51 sig_type=std_logic lab=q6}
C {devices/lab_pin.sym} 960 -1410 0 0 {name=l52 sig_type=std_logic lab=q7}
C {devices/lab_pin.sym} 960 -1390 0 0 {name=l53 sig_type=std_logic lab=q8}
C {devices/lab_pin.sym} 960 -1370 0 0 {name=l54 sig_type=std_logic lab=q9}
C {devices/lab_pin.sym} 960 -1350 0 0 {name=l55 sig_type=std_logic lab=q10}
C {devices/lab_pin.sym} 960 -1330 0 0 {name=l56 sig_type=std_logic lab=q11}
C {devices/lab_pin.sym} 960 -1310 0 0 {name=l59 sig_type=std_logic lab=q12}
C {devices/lab_pin.sym} 960 -1290 0 0 {name=l60 sig_type=std_logic lab=q13}
C {devices/lab_pin.sym} 960 -1270 0 0 {name=l61 sig_type=std_logic lab=q14}
C {devices/lab_pin.sym} 960 -1250 0 0 {name=l62 sig_type=std_logic lab=q15}
C {devices/lab_pin.sym} 650 -1530 1 0 {name=l63 sig_type=std_logic lab=q6}
C {devices/lab_pin.sym} 660 -1530 1 0 {name=l64 sig_type=std_logic lab=q7}
C {devices/lab_pin.sym} 670 -1530 1 0 {name=l65 sig_type=std_logic lab=q8}
C {devices/lab_pin.sym} 680 -1530 1 0 {name=l66 sig_type=std_logic lab=q9}
C {devices/lab_pin.sym} 690 -1530 1 0 {name=l67 sig_type=std_logic lab=q10}
C {devices/lab_pin.sym} 700 -1530 1 0 {name=l68 sig_type=std_logic lab=q11}
C {devices/lab_pin.sym} 710 -1530 1 0 {name=l69 sig_type=std_logic lab=q12}
C {devices/lab_pin.sym} 720 -1530 1 0 {name=l70 sig_type=std_logic lab=q13}
C {devices/lab_pin.sym} 730 -1530 1 0 {name=l71 sig_type=std_logic lab=q14}
C {devices/lab_pin.sym} 740 -1530 1 0 {name=l72 sig_type=std_logic lab=q15}
C {devices/lab_pin.sym} 630 -1460 0 0 {name=l73 sig_type=std_logic lab=muxed_out}
C {sky130_stdcells/inv_1.sym} 260 -1360 2 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 300 -1360 2 0 {name=l74 sig_type=std_logic lab=muxed_out}
C {devices/lab_pin.sym} 220 -1360 0 0 {name=l75 sig_type=std_logic lab=ainv_out}
C {devices/vsource.sym} -370 -1560 0 0 {name=V14 value="PWL(0 1.2 70u 1.2 70.001u 0)"}
C {devices/gnd.sym} -370 -1530 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} -370 -1590 0 0 {name=l21 sig_type=std_logic lab=en_counter}
C {devices/lab_pin.sym} 1190 -1550 2 0 {name=l26 sig_type=std_logic lab=en_counter}
C {devices/vsource.sym} -120 -1490 0 0 {name=V15 value="PWL(0 1.2 85u 1.2 85.001u 0)"}
C {devices/gnd.sym} -120 -1460 0 0 {name=l27 lab=GND}
C {devices/lab_pin.sym} -120 -1520 0 0 {name=l28 sig_type=std_logic lab=comp_out_test}
C {sky130_fd_pr/cap_mim_m3_1.sym} -90 -900 0 0 {name=C1 model=cap_mim_m3_1 W=5 L=2 MF=1 spiceprefix=X}
C {transmission_gate/transmission_gate.sym} 40 -930 0 0 {name=X3 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/transmission_gate.sym} -210 -930 0 0 {name=X4 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/gnd.sym} -90 -870 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} -210 -890 3 0 {name=l76 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 40 -890 3 0 {name=l77 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} -210 -970 1 0 {name=l78 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 40 -970 1 0 {name=l79 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} -90 -930 1 0 {name=l80 sig_type=std_logic lab=out1}
C {devices/capa.sym} 90 -660 0 0 {name=C2
m=1
value=40f
footprint=1206
device="ceramic capacitor"}
C {transmission_gate/transmission_gate.sym} -60 -690 0 0 {name=X5 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} -60 -650 3 0 {name=l81 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -60 -730 1 0 {name=l82 sig_type=std_logic lab=phi1b}
C {transmission_gate/transmission_gate.sym} 220 -690 0 0 {name=X6 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 220 -650 3 0 {name=l83 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 220 -730 1 0 {name=l84 sig_type=std_logic lab=phi2b}
C {devices/capa.sym} 370 -660 0 0 {name=C3
m=1
value=1.2p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 630 -660 0 0 {name=C4
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {transmission_gate/transmission_gate.sym} 480 -690 0 0 {name=X7 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 480 -650 3 0 {name=l85 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 480 -730 1 0 {name=l86 sig_type=std_logic lab=phi1b}
C {transmission_gate/transmission_gate.sym} 760 -690 0 0 {name=X8 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 760 -650 3 0 {name=l87 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 760 -730 1 0 {name=l90 sig_type=std_logic lab=phi2b}
C {devices/capa.sym} 910 -660 0 0 {name=C5
m=1
value=0.6p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1170 -660 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {transmission_gate/transmission_gate.sym} 1020 -690 0 0 {name=X9 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 1020 -650 3 0 {name=l91 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1020 -730 1 0 {name=l92 sig_type=std_logic lab=phi1b}
C {transmission_gate/transmission_gate.sym} 1300 -690 0 0 {name=X10 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 1300 -650 3 0 {name=l93 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1300 -730 1 0 {name=l94 sig_type=std_logic lab=phi2b}
C {devices/capa.sym} 1450 -660 0 0 {name=C7
m=1
value=0.03p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 90 -630 0 0 {name=l95 lab=GND}
C {devices/gnd.sym} 370 -630 0 0 {name=l96 lab=GND}
C {devices/gnd.sym} 630 -630 0 0 {name=l97 lab=GND}
C {devices/gnd.sym} 910 -630 0 0 {name=l98 lab=GND}
C {devices/gnd.sym} 1170 -630 0 0 {name=l99 lab=GND}
C {devices/gnd.sym} 1450 -630 0 0 {name=l102 lab=GND}
C {devices/lab_pin.sym} 90 -690 1 0 {name=l103 sig_type=std_logic lab=o2}
C {devices/lab_pin.sym} 630 -690 1 0 {name=l104 sig_type=std_logic lab=o4}
C {devices/lab_pin.sym} 910 -690 1 0 {name=l105 sig_type=std_logic lab=o5}
C {devices/lab_pin.sym} 1170 -690 1 0 {name=l106 sig_type=std_logic lab=o6}
C {devices/lab_pin.sym} 1450 -690 1 0 {name=l107 sig_type=std_logic lab=o7}
C {devices/lab_pin.sym} -110 -690 0 0 {name=l108 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 370 -930 2 0 {name=l109 sig_type=std_logic lab=ox}
C {devices/vdd.sym} -190 -970 0 0 {name=l110 lab=VDD}
C {devices/vdd.sym} 60 -970 0 0 {name=l111 lab=VDD}
C {devices/gnd.sym} -190 -890 0 0 {name=l112 lab=GND}
C {devices/gnd.sym} 60 -890 0 0 {name=l113 lab=GND}
C {devices/vdd.sym} -40 -730 0 0 {name=l115 lab=VDD}
C {devices/gnd.sym} -40 -650 0 0 {name=l116 lab=GND}
C {devices/vdd.sym} 240 -730 0 0 {name=l117 lab=VDD}
C {devices/gnd.sym} 240 -650 0 0 {name=l118 lab=GND}
C {devices/vdd.sym} 500 -730 0 0 {name=l119 lab=VDD}
C {devices/gnd.sym} 500 -650 0 0 {name=l120 lab=GND}
C {devices/vdd.sym} 780 -730 0 0 {name=l121 lab=VDD}
C {devices/gnd.sym} 780 -650 0 0 {name=l122 lab=GND}
C {devices/vdd.sym} 1040 -730 0 0 {name=l123 lab=VDD}
C {devices/gnd.sym} 1040 -650 0 0 {name=l124 lab=GND}
C {devices/vdd.sym} 1320 -730 0 0 {name=l125 lab=VDD}
C {devices/gnd.sym} 1320 -650 0 0 {name=l126 lab=GND}
C {devices/lab_pin.sym} -380 -930 0 0 {name=l114 sig_type=std_logic lab=ainv_out}
C {devices/vsource.sym} -1350 -1020 0 0 {name=V16 value=PULSE(0,1.2,0,1n,1n,\{0.5*clk_tp-10n\},\{clk_tp\})}
C {devices/gnd.sym} -1350 -990 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} -1350 -1050 0 0 {name=l23 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} -1350 -920 0 0 {name=V17 value=PULSE(1.2,0,0,1n,1n,\{0.5*clk_tp-10n\},\{clk_tp\})}
C {devices/gnd.sym} -1350 -890 0 0 {name=l127 lab=GND}
C {devices/lab_pin.sym} -1350 -950 0 0 {name=l128 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} -1350 -820 0 0 {name=VDD6 value="SIN(0.5,0.2,1000)"}
C {devices/gnd.sym} -1350 -790 0 0 {name=l129 lab=GND}
C {devices/lab_pin.sym} -1350 -850 0 0 {name=l130 sig_type=std_logic lab=vinp}
C {devices/vsource.sym} -1350 -720 0 0 {name=VDD7 value="SIN(0.6,-0.2,2000)"}
C {devices/gnd.sym} -1350 -690 0 0 {name=l131 lab=GND}
C {devices/lab_pin.sym} -1350 -750 0 0 {name=l132 sig_type=std_logic lab=vinm}
C {devices/vsource.sym} -710 -970 0 0 {name=V18 value=PULSE(0,1.2,0,1n,1n,\{0.5*clk_tp-10n\},\{clk_tp\},180)}
C {devices/gnd.sym} -710 -940 0 0 {name=l133 lab=GND}
C {devices/lab_pin.sym} -710 -1000 0 0 {name=l134 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} -710 -870 0 0 {name=V19 value=PULSE(1.2,0,0,1n,1n,\{0.5*clk_tp-10n\},\{clk_tp\},180)}
C {devices/gnd.sym} -710 -840 0 0 {name=l135 lab=GND}
C {devices/lab_pin.sym} -710 -900 0 0 {name=l136 sig_type=std_logic lab=phi2b}
