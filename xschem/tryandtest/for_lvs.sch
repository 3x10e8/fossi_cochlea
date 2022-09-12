v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 380 -80 470 -80 {
lab=#net1}
N 570 -80 640 -80 {
lab=#net2}
N 640 -80 740 -80 {
lab=#net2}
N 840 -80 940 -80 {
lab=#net3}
N 940 -80 1030 -80 {
lab=#net3}
N 1360 -80 1450 -80 {
lab=#net4}
N 1450 -80 1550 -80 {
lab=#net4}
N 1610 -80 1990 -80 {
lab=high}
N 280 -290 380 -290 {
lab=#net5}
N 380 -290 470 -290 {
lab=#net5}
N 570 -290 640 -290 {
lab=#net2}
N 640 -290 640 -80 {
lab=#net2}
N 1660 200 1780 200 {
lab=#net6}
N 1780 70 1780 200 {
lab=#net6}
N 280 490 470 490 {
lab=#net7}
N 570 490 650 490 {
lab=#net8}
N 650 490 740 490 {
lab=#net8}
N 840 490 940 490 {
lab=#net9}
N 940 490 1030 490 {
lab=#net9}
N 1360 490 1460 490 {
lab=#net10}
N 1460 490 1550 490 {
lab=#net10}
N 1650 490 1940 490 {
lab=low}
N 280 280 380 280 {
lab=#net11}
N 380 280 470 280 {
lab=#net11}
N 570 280 650 280 {
lab=#net8}
N 650 280 650 490 {
lab=#net8}
N 1670 750 1780 750 {
lab=#net12}
N 1940 -40 1940 490 {
lab=low}
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
N -280 -220 80 -220 {
lab=#net13}
N 80 -220 80 -80 {
lab=#net13}
N -280 410 80 410 {
lab=#net14}
N 80 410 80 490 {
lab=#net14}
N -400 -50 -400 240 {
lab=inp}
N -450 280 -360 280 {
lab=inm}
N -450 -150 -450 280 {
lab=inm}
N -450 -150 -360 -150 {
lab=inm}
N 2080 -70 2180 -70 {
lab=high_buf}
N 2080 -50 2180 -50 {
lab=#net15}
N 1110 -80 1260 -80 {
lab=#net16}
N 1180 -80 1180 50 {
lab=#net16}
N 1780 -80 1780 50 {
lab=high}
N 1130 490 1260 490 {
lab=#net17}
N 1190 490 1190 620 {
lab=#net17}
N 1780 490 1780 620 {
lab=low}
N 1780 640 1780 750 {
lab=#net12}
N -410 -470 -350 -440 {
lab=#net18}
N -410 -430 -350 -470 {
lab=#net19}
N 640 -80 640 40 {
lab=#net2}
N 650 490 650 620 {
lab=#net8}
N -560 -240 -400 -240 {
lab=inp}
N -560 -150 -450 -150 {
lab=inm}
N -560 -450 -470 -450 {
lab=fb1}
N -280 -70 -260 -70 {
lab=#net20}
N -280 260 -260 260 {
lab=#net21}
N 730 -630 730 -610 {
lab=vdda}
N 840 -630 840 -610 {
lab=vccd}
N 250 -250 250 -230 {
lab=vssd}
N 540 -250 540 -230 {
lab=vssd}
N 250 -230 540 -230 {
lab=vssd}
N 80 -80 180 -80 {
lab=#net13}
N 540 -40 540 -20 {
lab=vssd}
N 250 -40 250 -20 {
lab=vssd}
N 250 -20 540 -20 {
lab=vssd}
N 1100 -40 1100 -20 {
lab=vssd}
N 810 -20 1100 -20 {
lab=vssd}
N 810 -40 810 -20 {
lab=vssd}
N 1330 -40 1330 -20 {
lab=vssd}
N 1330 -20 1620 -20 {
lab=vssd}
N 1620 -40 1620 -20 {
lab=vssd}
N 1940 -40 1990 -40 {
lab=low}
N 250 320 250 340 {
lab=vssd}
N 250 340 540 340 {
lab=vssd}
N 540 320 540 340 {
lab=vssd}
N 250 530 250 550 {
lab=vssd}
N 250 550 540 550 {
lab=vssd}
N 540 530 540 550 {
lab=vssd}
N 80 490 180 490 {
lab=#net14}
N 280 -80 380 -80 {
lab=#net1}
N 810 530 810 550 {
lab=vssd}
N 810 550 1100 550 {
lab=vssd}
N 1100 530 1100 550 {
lab=vssd}
N 1330 530 1330 550 {
lab=vssd}
N 1330 550 1620 550 {
lab=vssd}
N 1620 530 1620 550 {
lab=vssd}
N 1250 -570 1310 -540 {
lab=#net22}
N 1250 -530 1310 -570 {
lab=#net23}
N 1100 -550 1190 -550 {
lab=lo}
C {clkgen/filter_clkgen_balanced_clks.sym} 420 -540 0 0 {name=x1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 380 -50 0 0 {name=C7 model=cap_mim_m3_1 W=6.7 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 380 -260 0 0 {name=C8 model=cap_mim_m3_1 W=3.4 L=3 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 940 -50 0 0 {name=C9 model=cap_mim_m3_1 W=4 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1450 -50 0 0 {name=C10 model=cap_mim_m3_1 W=3.4 L=3 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 230 -40 0 0 {name=l12 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 230 -250 0 0 {name=l14 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 790 -40 0 0 {name=l15 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1310 -40 0 0 {name=l16 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 520 -40 2 1 {name=l17 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 520 -250 2 1 {name=l18 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1080 -40 2 1 {name=l19 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1600 -40 2 1 {name=l20 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 230 -120 0 0 {name=l21 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 230 -330 0 0 {name=l22 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 790 -120 0 0 {name=l23 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1310 -120 0 0 {name=l24 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 520 -120 2 1 {name=l25 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1080 -120 2 1 {name=l26 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1600 -120 2 1 {name=l27 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 520 -330 2 1 {name=l28 sig_type=std_logic lab=phi2b}
C {mux/analogMux.sym} 1620 200 0 0 {name=x2}
C {devices/lab_pin.sym} 1580 180 0 0 {name=l31 sig_type=std_logic lab=th1}
C {devices/lab_pin.sym} 1580 220 0 0 {name=l32 sig_type=std_logic lab=th2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 380 520 0 0 {name=C17 model=cap_mim_m3_1 W=6.7 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 380 310 0 0 {name=C18 model=cap_mim_m3_1 W=3.4 L=3 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 940 520 0 0 {name=C19 model=cap_mim_m3_1 W=4 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1460 520 0 0 {name=C20 model=cap_mim_m3_1 W=3.4 L=3 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 230 530 0 0 {name=l34 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 230 320 0 0 {name=l35 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 790 530 0 0 {name=l36 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1310 530 0 0 {name=l37 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 520 530 2 1 {name=l38 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 520 320 2 1 {name=l39 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1080 530 2 1 {name=l40 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1600 530 2 1 {name=l41 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 230 450 0 0 {name=l42 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 230 240 0 0 {name=l43 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 790 450 0 0 {name=l44 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1310 450 0 0 {name=l45 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 520 450 2 1 {name=l46 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1080 450 2 1 {name=l47 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1600 450 2 1 {name=l48 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 520 240 2 1 {name=l49 sig_type=std_logic lab=phi2b}
C {mux/analogMux.sym} 1630 750 0 0 {name=x4}
C {devices/lab_pin.sym} 1590 770 0 0 {name=l52 sig_type=std_logic lab=th1}
C {devices/lab_pin.sym} 1590 730 0 0 {name=l53 sig_type=std_logic lab=th2}
C {devices/lab_pin.sym} 470 -600 2 0 {name=l55 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 470 -560 0 1 {name=l56 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 470 -580 2 0 {name=l57 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 470 -540 0 1 {name=l58 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 470 -520 2 0 {name=l59 sig_type=std_logic lab=cclk_ana}
C {devices/lab_pin.sym} 470 -500 2 0 {name=l60 sig_type=std_logic lab=cclkb_ana}
C {mux/analogMux.sym} -320 -220 0 0 {name=x5}
C {mux/analogMux.sym} -320 -70 0 0 {name=x6}
C {devices/lab_pin.sym} -340 -120 0 0 {name=l64 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -340 -270 0 0 {name=l65 sig_type=std_logic lab=vdda}
C {mux/analogMux.sym} -320 260 0 0 {name=x7}
C {mux/analogMux.sym} -320 410 0 0 {name=x8}
C {devices/lab_pin.sym} -340 360 0 0 {name=l68 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -340 210 0 0 {name=l69 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 440 -640 2 0 {name=l78 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 400 -640 0 0 {name=l79 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 2180 -70 0 1 {name=l80 sig_type=std_logic lab=high_buf}
C {devices/lab_pin.sym} 2050 -10 0 1 {name=l82 sig_type=std_logic lab=phi1b_dig}
C {devices/lab_pin.sym} 2050 -110 0 1 {name=l83 sig_type=std_logic lab=phi1_dig}
C {devices/lab_pin.sym} 180 280 0 0 {name=l86 sig_type=std_logic lab=fb}
C {devices/lab_pin.sym} 180 -290 0 0 {name=l87 sig_type=std_logic lab=fb_inv}
C {devices/lab_pin.sym} 1600 150 0 0 {name=l90 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1610 700 0 0 {name=l91 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 370 -600 0 0 {name=l94 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} 370 -580 0 0 {name=l95 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 370 -550 0 0 {name=l96 sig_type=std_logic lab=div2}
C {devices/lab_pin.sym} 370 -510 0 0 {name=l97 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 250 -330 2 0 {name=l100 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 540 -330 2 0 {name=l102 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 540 -120 2 0 {name=l104 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 250 240 2 0 {name=l106 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 540 240 2 0 {name=l108 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 540 450 2 0 {name=l110 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 810 450 2 0 {name=l112 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1100 450 2 0 {name=l114 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1330 450 2 0 {name=l116 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1620 450 2 0 {name=l118 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 810 -120 2 0 {name=l120 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1100 -120 2 0 {name=l122 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1330 -120 2 0 {name=l124 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1620 -120 2 0 {name=l126 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 250 -120 2 0 {name=l98 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 250 450 2 0 {name=l128 sig_type=std_logic lab=vdda}
C {transmission_gate/switch.sym} 230 -290 0 0 {name=x13 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} -320 210 2 0 {name=l74 sig_type=std_logic lab=ctrl}
C {devices/lab_pin.sym} -320 310 2 0 {name=l77 sig_type=std_logic lab=ctrl_}
C {devices/lab_pin.sym} 2010 -110 0 0 {name=l85 sig_type=std_logic lab=vccd}
C {Switched_Caps/mim_cap_stacked_12pF.sym} 490 50 0 0 {name=x9}
C {Switched_Caps/mim_cap_stacked_12pF.sym} 500 630 0 0 {name=x10}
C {Switched_Caps/mim_cap_stacked_6pF.sym} 1030 60 0 0 {name=x11}
C {Switched_Caps/mim_cap_stacked_3pF.sym} 1630 60 0 0 {name=x12}
C {Switched_Caps/mim_cap_stacked_6pF.sym} 1040 630 0 0 {name=x29}
C {Switched_Caps/mim_cap_stacked_3pF.sym} 1630 630 0 0 {name=x30}
C {devices/lab_pin.sym} 700 -580 0 0 {name=l7 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 870 -580 2 0 {name=l38 sig_type=std_logic lab=phi1_dig}
C {devices/lab_pin.sym} 840 -630 2 0 {name=l19 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 730 -630 0 0 {name=l20 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 870 -480 2 0 {name=l40 sig_type=std_logic lab=phi1b_dig}
C {devices/lab_pin.sym} 700 -480 0 0 {name=l43 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 840 -510 2 0 {name=l44 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 730 -510 0 0 {name=l45 sig_type=std_logic lab=vdda}
C {level_shifter/level_up_shifter_no_inv.sym} -200 -430 0 0 {name=x33}
C {clkgen/comp_clks_1stage.sym} -440 -450 0 0 {name=X34 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} -440 -410 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -440 -490 0 0 {name=l12 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} -50 -470 2 0 {name=l78 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -50 -390 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -50 -430 2 0 {name=l87 sig_type=std_logic lab=fb_inv}
C {devices/lab_pin.sym} -50 -410 2 0 {name=l87 sig_type=std_logic lab=fb}
C {xschem/comparator_latest/comparator_single_tail.sym} 1970 0 0 0 {name=x35 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {devices/ipin.sym} -560 -240 0 0 {name=p1 lab=inp}
C {devices/ipin.sym} -560 -150 0 0 {name=p1 lab=inm}
C {devices/iopin.sym} -560 -540 2 0 {name=p1 lab=vdda}
C {devices/lab_pin.sym} -320 360 2 0 {name=l74 sig_type=std_logic lab=ctrl}
C {devices/lab_pin.sym} -320 460 2 0 {name=l77 sig_type=std_logic lab=ctrl_}
C {devices/iopin.sym} -560 -750 2 0 {name=p1 lab=vccd}
C {devices/ipin.sym} -560 -450 0 0 {name=p1 lab=fb1}
C {devices/iopin.sym} -560 -560 2 0 {name=p1 lab=vssd}
C {devices/ipin.sym} -440 -640 0 0 {name=p1 lab=div2}
C {devices/ipin.sym} -440 -620 0 0 {name=p1 lab=cclk}
C {devices/lab_pin.sym} 1620 150 2 0 {name=l59 sig_type=std_logic lab=cclk_ana}
C {devices/lab_pin.sym} 1620 250 2 0 {name=l60 sig_type=std_logic lab=cclkb_ana}
C {devices/lab_pin.sym} 1630 700 2 0 {name=l59 sig_type=std_logic lab=cclk_ana}
C {devices/lab_pin.sym} 1630 800 2 0 {name=l60 sig_type=std_logic lab=cclkb_ana}
C {devices/opin.sym} 2100 -560 0 0 {name=p1 lab=phi1b_dig}
C {devices/opin.sym} 2100 -520 0 0 {name=p1 lab=high_buf}
C {devices/lab_pin.sym} -320 -270 2 0 {name=l74 sig_type=std_logic lab=ctrl}
C {devices/lab_pin.sym} -320 -170 2 0 {name=l77 sig_type=std_logic lab=ctrl_}
C {devices/lab_pin.sym} -320 -120 2 0 {name=l74 sig_type=std_logic lab=ctrl}
C {devices/lab_pin.sym} -320 -20 2 0 {name=l77 sig_type=std_logic lab=ctrl_}
C {devices/noconn.sym} -260 -70 2 0 {name=l1}
C {devices/noconn.sym} -260 260 2 0 {name=l2}
C {devices/noconn.sym} 2180 -50 2 0 {name=l3}
C {xschem/level_shifter/level_down_shifter.sym} 780 -570 0 0 {name=x3}
C {xschem/level_shifter/level_down_shifter.sym} 780 -470 0 0 {name=x31}
C {devices/lab_pin.sym} -340 -170 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -340 -20 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -340 310 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} -340 460 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 540 -20 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 540 -230 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 420 -440 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 1100 -20 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 780 -530 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 780 -430 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 640 60 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 1180 70 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 1620 -20 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 1600 250 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 2010 -10 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 540 340 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 540 550 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 650 640 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 1190 640 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 1610 800 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 1100 550 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 1620 550 2 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/code.sym} -400 -820 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/lab_pin.sym} 1890 -80 3 1 {name=l80 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 1940 -40 2 1 {name=l80 sig_type=std_logic lab=low}
C {transmission_gate/switch.sym} 520 -290 0 0 {name=x14 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 230 -80 0 0 {name=x15 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 520 -80 0 0 {name=x16 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 790 -80 0 0 {name=x17 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 1080 -80 0 0 {name=x18 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 1310 -80 0 0 {name=x19 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 1600 -80 0 0 {name=x20 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 230 280 0 0 {name=x21 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 520 280 0 0 {name=x22 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 230 490 0 0 {name=x23 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 520 490 0 0 {name=x24 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 790 490 0 0 {name=x25 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 1080 490 0 0 {name=x26 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 1310 490 0 0 {name=x27 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/switch.sym} 1600 490 0 0 {name=x28 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/iopin.sym} -560 -730 2 0 {name=p1 lab=th1}
C {devices/iopin.sym} -560 -710 2 0 {name=p2 lab=th2}
C {level_shifter/level_up_shifter_no_inv.sym} 1460 -530 0 0 {name=x32}
C {clkgen/comp_clks_1stage.sym} 1220 -550 0 0 {name=X36 Wpmos=1.26 Lpmos=0.18 Wnmos=0.42 Lnmos=0.18}
C {devices/lab_pin.sym} 1220 -510 0 0 {name=l25 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 1220 -590 0 0 {name=l12 sig_type=std_logic lab=vccd}
C {devices/lab_pin.sym} 1610 -570 2 0 {name=l78 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1610 -490 2 0 {name=l4 sig_type=std_logic lab=vssd}
C {devices/lab_pin.sym} 1610 -530 2 0 {name=l87 sig_type=std_logic lab=ctrl_}
C {devices/lab_pin.sym} 1610 -510 2 0 {name=l5 sig_type=std_logic lab=ctrl}
C {devices/iopin.sym} -560 -690 2 0 {name=p1 lab=vpb}
C {devices/iopin.sym} -560 -670 2 0 {name=p2 lab=vnb}
C {devices/ipin.sym} -560 -420 0 0 {name=p1 lab=lo}
C {devices/lab_pin.sym} 1100 -550 0 0 {name=l12 sig_type=std_logic lab=lo}
