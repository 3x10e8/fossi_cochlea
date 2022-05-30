v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {binary counter/bin_counter.sym} 2310 -550 0 1 {name=X1}
C {tryandtest/selector_gray.sym} 780 -1520 2 0 {name=X2}
C {devices/netlist.sym} -1380 -1600 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/lib/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.param clk_f=2.56e6
.param clk_tp=\{1/clk_f\}
.tran 10000u 0.1m
.save all
"}
C {devices/vsource.sym} -360 -1450 0 0 {name=V12 value="PWL(0 0 0.1n 0 0.11n 1.2)"}
C {devices/gnd.sym} -360 -1420 0 0 {name=l88 lab=GND}
C {devices/lab_pin.sym} -360 -1480 0 0 {name=l89 sig_type=std_logic lab=rstb_global}
C {devices/vsource.sym} -1310 -1430 0 0 {name=V13 value=PULSE(0,1.2,\{clk_tp\},1n,1n,\{0.5*clk_tp\},\{2*clk_tp\})}
C {devices/gnd.sym} -1310 -1400 0 0 {name=l100 lab=GND}
C {devices/lab_pin.sym} -1310 -1460 0 0 {name=l101 sig_type=std_logic lab=cclk}
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
C {devices/vsource.sym} -1310 -1340 0 0 {name=V21 value=PULSE(0,1.2,\{0.5*clk_tp\},1n,1n,\{2*clk_tp\},\{4*clk_tp\})}
C {devices/vsource.sym} -1310 -1130 0 0 {name=VDD22 value="DC 1.2"}
C {devices/gnd.sym} -1310 -1100 0 0 {name=l77 lab=GND}
C {devices/vdd.sym} -1310 -1160 0 0 {name=l78 lab=VDD}
C {devices/gnd.sym} -1310 -1310 0 0 {name=l79 lab=GND}
C {devices/lab_pin.sym} -1310 -1370 0 0 {name=l80 sig_type=std_logic lab=clk1}
C {devices/vsource.sym} -1310 -1250 0 0 {name=V23 value=PULSE(0,1.2,\{1.5*clk_tp\},1n,1n,\{4*clk_tp\},\{8*clk_tp\})}
C {devices/gnd.sym} -1310 -1220 0 0 {name=l81 lab=GND}
C {devices/lab_pin.sym} -1310 -1280 0 0 {name=l82 sig_type=std_logic lab=clk2}
C {devices/vsource.sym} -990 -1250 0 0 {name=V24 value=PULSE(0,1.2,\{3.5*clk_tp\},1n,1n,\{8*clk_tp\},\{16*clk_tp\})}
C {devices/gnd.sym} -990 -1220 0 0 {name=l83 lab=GND}
C {devices/lab_pin.sym} -990 -1280 0 0 {name=l84 sig_type=std_logic lab=clk3}
C {devices/vsource.sym} -990 -1340 0 0 {name=V22 value=PULSE(0,1.2,\{7.5*clk_tp\},1n,1n,\{16*clk_tp\},\{32*clk_tp\})}
C {devices/gnd.sym} -990 -1310 0 0 {name=l85 lab=GND}
C {devices/lab_pin.sym} -990 -1370 0 0 {name=l86 sig_type=std_logic lab=clk4}
C {devices/vsource.sym} -990 -1070 0 0 {name=V25 value=PULSE(0,1.2,\{15.5*clk_tp\},1n,1n,\{32*clk_tp\},\{64*clk_tp\})}
C {devices/gnd.sym} -990 -1040 0 0 {name=l87 lab=GND}
C {devices/lab_pin.sym} -990 -1100 0 0 {name=l90 sig_type=std_logic lab=clk5}
C {devices/vsource.sym} -990 -1160 0 0 {name=V26 value=PULSE(0,1.2,\{31.5*clk_tp\},1n,1n,\{64*clk_tp\},\{128*clk_tp\})}
C {devices/gnd.sym} -990 -1130 0 0 {name=l91 lab=GND}
C {devices/lab_pin.sym} -990 -1190 0 0 {name=l92 sig_type=std_logic lab=clk6}
C {devices/vsource.sym} -610 -1250 0 0 {name=V27 value=PULSE(0,1.2,\{63.5*clk_tp\},1n,1n,\{128*clk_tp\},\{256*clk_tp\})}
C {devices/gnd.sym} -610 -1220 0 0 {name=l93 lab=GND}
C {devices/lab_pin.sym} -610 -1280 0 0 {name=l94 sig_type=std_logic lab=clk7}
C {devices/vsource.sym} -610 -1340 0 0 {name=V28 value=PULSE(0,1.2,\{127.5*clk_tp\},1n,1n,\{256*clk_tp\},\{512*clk_tp\})}
C {devices/gnd.sym} -610 -1310 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} -610 -1370 0 0 {name=l96 sig_type=std_logic lab=clk8}
C {devices/vsource.sym} -610 -1070 0 0 {name=V29 value=PULSE(0,1.2,\{255.5*clk_tp\},1n,1n,\{512*clk_tp\},\{1024*clk_tp\})}
C {devices/gnd.sym} -610 -1040 0 0 {name=l97 lab=GND}
C {devices/lab_pin.sym} -610 -1100 0 0 {name=l98 sig_type=std_logic lab=clk9}
C {devices/vsource.sym} -610 -1160 0 0 {name=V30 value=PULSE(0,1.2,\{511.5*clk_tp\},1n,1n,\{1024*clk_tp\},\{2048*clk_tp\})}
C {devices/gnd.sym} -610 -1130 0 0 {name=l99 lab=GND}
C {devices/lab_pin.sym} -610 -1190 0 0 {name=l102 sig_type=std_logic lab=clk10}
C {devices/vsource.sym} -610 -1450 0 0 {name=V31 value=PULSE(0,1.2,\{0\},1n,1n,\{0.5*clk_tp\},\{clk_tp\})}
C {devices/gnd.sym} -610 -1420 0 0 {name=l105 lab=GND}
C {devices/lab_pin.sym} -610 -1480 0 0 {name=l106 sig_type=std_logic lab=clk_ext}
C {devices/vsource.sym} -990 -1450 0 0 {name=V35 value=PULSE(0,1.2,\{0\},1n,1n,\{clk_tp\},\{2*clk_tp\})}
C {devices/gnd.sym} -990 -1420 0 0 {name=l113 lab=GND}
C {devices/lab_pin.sym} -990 -1480 0 0 {name=l114 sig_type=std_logic lab=clk0}
