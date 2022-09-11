v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 280 -80 360 -80 {
lab=#net1}
N 460 -80 640 -80 {
lab=#net2}
N 640 -80 780 -80 {
lab=#net2}
N 880 -80 910 -80 {
lab=#net3}
N 910 -80 930 -80 {
lab=#net3}
N 1360 -80 1450 -80 {
lab=#net4}
N 1450 -80 1510 -80 {
lab=#net4}
N 1610 -80 1990 -80 {
lab=#net5}
N 360 -290 400 -290 {
lab=#net6}
N 400 -290 470 -290 {
lab=#net6}
N 570 -290 640 -290 {
lab=#net2}
N 640 -290 640 -80 {
lab=#net2}
N 1660 200 1780 200 {
lab=#net7}
N 1780 70 1780 200 {
lab=#net7}
N 290 490 370 490 {
lab=#net8}
N 470 490 650 490 {
lab=#net9}
N 650 490 790 490 {
lab=#net9}
N 890 490 920 490 {
lab=#net10}
N 920 490 940 490 {
lab=#net10}
N 1370 490 1460 490 {
lab=#net11}
N 1460 490 1520 490 {
lab=#net11}
N 1620 490 1990 490 {
lab=#net12}
N 370 280 410 280 {
lab=#net13}
N 410 280 480 280 {
lab=#net13}
N 580 280 650 280 {
lab=#net9}
N 650 280 650 490 {
lab=#net9}
N 1670 750 1780 750 {
lab=#net14}
N 1990 -40 1990 490 {
lab=#net12}
N -360 -200 -360 -90 {
lab=inm}
N -400 -240 -360 -240 {
lab=inp}
N -400 -240 -400 -50 {
lab=inp}
N -400 -50 -360 -50 {
lab=inp}
N -360 280 -360 390 {
lab=inm}
N -400 240 -360 240 {
lab=inp}
N -400 240 -400 430 {
lab=inp}
N -400 430 -360 430 {
lab=inp}
N -280 -220 180 -220 {
lab=#net15}
N 180 -220 180 -80 {
lab=#net15}
N -280 410 190 410 {
lab=#net16}
N 190 410 190 490 {
lab=#net16}
N -400 -50 -400 240 {
lab=inp}
N -450 280 -360 280 {
lab=inm}
N -450 -150 -450 280 {
lab=inm}
N -450 -150 -360 -150 {
lab=inm}
N 2080 -70 2310 -70 {
lab=high}
N 2080 -50 2310 -50 {
lab=low}
N 1030 -80 1260 -80 {
lab=#net17}
N 1180 -80 1180 50 {
lab=#net17}
N 1780 -80 1780 50 {
lab=#net5}
N 1040 490 1270 490 {
lab=#net18}
N 1190 490 1190 620 {
lab=#net18}
N 1780 490 1780 620 {
lab=#net12}
N 1780 640 1780 750 {
lab=#net14}
N -670 -620 -610 -590 {
lab=#net19}
N -670 -580 -610 -620 {
lab=#net20}
N 640 -80 640 40 {}
N 650 490 650 620 {}
C {clkgen/filter_clkgen_balanced_clks.sym} 50 -570 0 0 {name=x1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 280 -50 0 0 {name=C7 model=cap_mim_m3_1 W=6 L=6.7 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 400 -260 0 0 {name=C8 model=cap_mim_m3_1 W=3.4 L=3 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 910 -50 0 0 {name=C9 model=cap_mim_m3_1 W=4 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1450 -50 0 0 {name=C10 model=cap_mim_m3_1 W=3.4 L=3 MF=1 spiceprefix=X}
C {devices/gnd.sym} 280 -20 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1450 -20 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 910 -20 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 400 -230 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 230 -40 3 0 {name=l12 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 310 -250 3 0 {name=l14 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 830 -40 3 0 {name=l15 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1310 -40 3 0 {name=l16 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 410 -40 1 1 {name=l17 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 520 -250 1 1 {name=l18 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 980 -40 1 1 {name=l19 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1560 -40 1 1 {name=l20 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 230 -120 1 0 {name=l21 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 310 -330 1 0 {name=l22 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 830 -120 1 0 {name=l23 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1310 -120 1 0 {name=l24 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 410 -120 3 1 {name=l25 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 980 -120 3 1 {name=l26 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1560 -120 3 1 {name=l27 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 520 -330 3 1 {name=l28 sig_type=std_logic lab=phi2b}
C {mux/analogMux.sym} 1620 200 0 0 {name=x2}
C {devices/lab_pin.sym} 1620 250 3 0 {name=l29 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 1620 150 1 0 {name=l30 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 1580 180 0 0 {name=l31 sig_type=std_logic lab=th1}
C {devices/lab_pin.sym} 1580 220 0 0 {name=l32 sig_type=std_logic lab=th2}
C {devices/gnd.sym} 1600 250 0 0 {name=l33 lab=GND}
C {comparator_latest/comparator_single_tail.sym} 1970 0 0 0 {name=x3 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {sky130_fd_pr/cap_mim_m3_1.sym} 290 520 0 0 {name=C17 model=cap_mim_m3_1 W=6 L=6.7 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 410 310 0 0 {name=C18 model=cap_mim_m3_1 W=3.4 L=3 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 920 520 0 0 {name=C19 model=cap_mim_m3_1 W=4 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1460 520 0 0 {name=C20 model=cap_mim_m3_1 W=3.4 L=3 MF=1 spiceprefix=X}
C {devices/gnd.sym} 290 550 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 1460 550 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 920 550 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 410 340 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 240 530 3 0 {name=l34 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 320 320 3 0 {name=l35 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 840 530 3 0 {name=l36 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1320 530 3 0 {name=l37 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 420 530 1 1 {name=l38 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 530 320 1 1 {name=l39 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 990 530 1 1 {name=l40 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1570 530 1 1 {name=l41 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 240 450 1 0 {name=l42 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 320 240 1 0 {name=l43 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 840 450 1 0 {name=l44 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1320 450 1 0 {name=l45 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 420 450 3 1 {name=l46 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 990 450 3 1 {name=l47 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1570 450 3 1 {name=l48 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 530 240 3 1 {name=l49 sig_type=std_logic lab=phi2b}
C {mux/analogMux.sym} 1630 750 0 0 {name=x4}
C {devices/lab_pin.sym} 1630 800 3 0 {name=l50 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 1630 700 1 0 {name=l51 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 1590 770 0 0 {name=l52 sig_type=std_logic lab=th1}
C {devices/lab_pin.sym} 1590 730 0 0 {name=l53 sig_type=std_logic lab=th2}
C {devices/gnd.sym} 1610 800 0 0 {name=l54 lab=GND}
C {devices/lab_pin.sym} 100 -630 2 0 {name=l55 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 100 -590 0 1 {name=l56 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 100 -610 2 0 {name=l57 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 100 -570 0 1 {name=l58 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 100 -550 2 0 {name=l59 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 100 -530 2 0 {name=l60 sig_type=std_logic lab=cclkb}
C {devices/gnd.sym} 50 -470 0 0 {name=l61 lab=GND}
C {mux/analogMux.sym} -320 -220 0 0 {name=x5}
C {mux/analogMux.sym} -320 -70 0 0 {name=x6}
C {devices/gnd.sym} -340 -20 0 0 {name=l62 lab=GND}
C {devices/gnd.sym} -340 -170 0 0 {name=l63 lab=GND}
C {devices/lab_pin.sym} -340 -120 0 0 {name=l64 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -340 -270 0 0 {name=l65 sig_type=std_logic lab=vdda}
C {mux/analogMux.sym} -320 260 0 0 {name=x7}
C {mux/analogMux.sym} -320 410 0 0 {name=x8}
C {devices/gnd.sym} -340 460 0 0 {name=l66 lab=GND}
C {devices/gnd.sym} -340 310 0 0 {name=l67 lab=GND}
C {devices/lab_pin.sym} -340 360 0 0 {name=l68 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -340 210 0 0 {name=l69 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -320 -270 2 0 {name=l70 sig_type=std_logic lab=sin}
C {devices/lab_pin.sym} -320 -120 2 0 {name=l71 sig_type=std_logic lab=sin}
C {devices/lab_pin.sym} -320 -170 2 0 {name=l72 sig_type=std_logic lab=sinb}
C {devices/lab_pin.sym} -320 -20 2 0 {name=l73 sig_type=std_logic lab=sinb}
C {devices/lab_pin.sym} 70 -670 2 0 {name=l78 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 30 -670 0 0 {name=l79 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 2310 -70 0 1 {name=l80 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 2310 -50 0 1 {name=l81 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 2050 -10 1 1 {name=l82 sig_type=std_logic lab=phi1b_dig}
C {devices/lab_pin.sym} 2050 -110 0 1 {name=l83 sig_type=std_logic lab=phi1_dig}
C {devices/gnd.sym} 2010 -10 0 0 {name=l84 lab=GND}
C {devices/lab_pin.sym} 270 280 0 0 {name=l86 sig_type=std_logic lab=fb}
C {devices/lab_pin.sym} 260 -290 0 0 {name=l87 sig_type=std_logic lab=fb_inv}
C {devices/lab_pin.sym} -400 -190 0 0 {name=l88 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -450 -50 0 0 {name=l89 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 1600 150 0 0 {name=l90 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1610 700 0 0 {name=l91 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -280 -70 2 0 {name=l92 sig_type=std_logic lab=x}
C {devices/lab_pin.sym} -280 260 2 0 {name=l93 sig_type=std_logic lab=y}
C {devices/lab_pin.sym} 0 -630 0 0 {name=l94 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} 0 -610 0 0 {name=l95 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 0 -580 0 0 {name=l96 sig_type=std_logic lab=div2}
C {devices/lab_pin.sym} 0 -540 0 0 {name=l97 sig_type=std_logic lab=cc}
C {devices/lab_pin.sym} 330 -330 2 0 {name=l100 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 330 -250 0 0 {name=l101 lab=GND}
C {devices/lab_pin.sym} 540 -330 2 0 {name=l102 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 540 -250 0 0 {name=l103 lab=GND}
C {devices/lab_pin.sym} 430 -120 2 0 {name=l104 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 430 -40 0 0 {name=l105 lab=GND}
C {devices/lab_pin.sym} 340 240 2 0 {name=l106 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 340 320 0 0 {name=l107 lab=GND}
C {devices/lab_pin.sym} 550 240 2 0 {name=l108 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 550 320 0 0 {name=l109 lab=GND}
C {devices/lab_pin.sym} 440 450 2 0 {name=l110 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 440 530 0 0 {name=l111 lab=GND}
C {devices/lab_pin.sym} 860 450 2 0 {name=l112 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 860 530 0 0 {name=l113 lab=GND}
C {devices/lab_pin.sym} 1010 450 2 0 {name=l114 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 1010 530 0 0 {name=l115 lab=GND}
C {devices/lab_pin.sym} 1340 450 2 0 {name=l116 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 1340 530 0 0 {name=l117 lab=GND}
C {devices/lab_pin.sym} 1590 450 2 0 {name=l118 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 1590 530 0 0 {name=l119 lab=GND}
C {devices/lab_pin.sym} 850 -120 2 0 {name=l120 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 850 -40 0 0 {name=l121 lab=GND}
C {devices/lab_pin.sym} 1000 -120 2 0 {name=l122 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 1000 -40 0 0 {name=l123 lab=GND}
C {devices/lab_pin.sym} 1330 -120 2 0 {name=l124 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 1330 -40 0 0 {name=l125 lab=GND}
C {devices/lab_pin.sym} 1580 -120 2 0 {name=l126 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 1580 -40 0 0 {name=l127 lab=GND}
C {devices/lab_pin.sym} 250 -120 2 0 {name=l98 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 250 -40 0 0 {name=l99 lab=GND}
C {devices/lab_pin.sym} 260 450 2 0 {name=l128 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 260 530 0 0 {name=l129 lab=GND}
C {transmission_gate/tg.sym} 310 -290 0 0 {name=x13 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 520 -290 0 0 {name=x14 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 230 -80 0 0 {name=x15 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 410 -80 0 0 {name=x16 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 830 -80 0 0 {name=x17 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 980 -80 0 0 {name=x18 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 1310 -80 0 0 {name=x19 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 1560 -80 0 0 {name=x20 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 1570 490 0 0 {name=x21 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 1320 490 0 0 {name=x22 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 990 490 0 0 {name=x23 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 840 490 0 0 {name=x24 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 420 490 0 0 {name=x25 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 240 490 0 0 {name=x26 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 320 280 0 0 {name=x27 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {transmission_gate/tg.sym} 530 280 0 0 {name=x28 Wpmos=0.42 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} -320 210 2 0 {name=l74 sig_type=std_logic lab=sin}
C {devices/lab_pin.sym} -320 310 2 0 {name=l77 sig_type=std_logic lab=sinb}
C {devices/lab_pin.sym} -320 360 2 0 {name=l75 sig_type=std_logic lab=sin}
C {devices/lab_pin.sym} -320 460 2 0 {name=l76 sig_type=std_logic lab=sinb}
C {devices/lab_pin.sym} 2010 -110 0 0 {name=l85 sig_type=std_logic lab=vccd}
C {Switched_Caps/mim_cap_stacked_12pF.sym} 490 50 0 0 {name=x9}
C {devices/gnd.sym} 640 60 0 0 {name=l105 lab=GND}
C {Switched_Caps/mim_cap_stacked_12pF.sym} 500 630 0 0 {name=x10}
C {devices/gnd.sym} 650 640 0 0 {name=l105 lab=GND}
C {Switched_Caps/mim_cap_stacked_6pF.sym} 1030 60 0 0 {name=x11}
C {devices/gnd.sym} 1180 70 0 0 {name=l105 lab=GND}
C {Switched_Caps/mim_cap_stacked_3pF.sym} 1630 60 0 0 {name=x12}
C {Switched_Caps/mim_cap_stacked_6pF.sym} 1040 630 0 0 {name=x29}
C {devices/gnd.sym} 1190 640 0 0 {name=l105 lab=GND}
C {Switched_Caps/mim_cap_stacked_3pF.sym} 1630 630 0 0 {name=x30}
C {devices/lab_pin.sym} 350 -630 0 0 {name=l7 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 520 -630 2 0 {name=l38 sig_type=std_logic lab=phi1_dig}
C {level_shifter/level_down_shifter.sym} 430 -620 0 0 {name=x31}
C {devices/lab_pin.sym} 490 -660 2 0 {name=l19 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 380 -660 0 0 {name=l20 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 430 -580 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} 520 -530 2 0 {name=l40 sig_type=std_logic lab=phi1b_dig}
C {devices/lab_pin.sym} 350 -530 0 0 {name=l43 sig_type=std_logic lab=phi1b}
C {level_shifter/level_down_shifter.sym} 430 -520 0 0 {name=x32}
C {devices/lab_pin.sym} 490 -560 2 0 {name=l44 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 380 -560 0 0 {name=l45 sig_type=std_logic lab=vdda}
C {devices/gnd.sym} 430 -480 0 0 {name=l46 lab=GND}
C {level_shifter/level_up_shifter_no_inv.sym} -460 -580 0 0 {name=x33}
C {devices/lab_pin.sym} -730 -600 0 0 {name=l89 sig_type=std_logic lab=fb1}
C {clkgen/comp_clks_1stage.sym} -700 -600 0 0 {name=X34 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} -700 -560 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -700 -640 0 0 {name=l12 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} -310 -620 2 0 {name=l78 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -310 -600 2 0 {name=l12 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} -310 -540 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -310 -580 2 0 {name=l87 sig_type=std_logic lab=fb_inv}
C {devices/lab_pin.sym} -310 -560 2 0 {name=l87 sig_type=std_logic lab=fb}
