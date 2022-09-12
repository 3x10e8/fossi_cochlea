v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {dfxtp is a flip flop} 690 -140 0 0 0.2 0.2 {}
T {dfxtp is a flip flop} 680 40 0 0 0.2 0.2 {}
N 1370 -160 1370 -140 { lab=pol_i}
N 1370 -180 1370 -160 { lab=pol_i}
N 1010 -180 1010 -140 { lab=pol_i}
N 1010 -180 1050 -180 { lab=pol_i}
N 1370 -230 1370 -180 { lab=pol_i}
N 1370 -230 1480 -230 { lab=pol_i}
N 1490 -150 1490 -120 { lab=event_i}
N 1490 -190 1490 -150 { lab=event_i}
N 1480 -230 1490 -230 { lab=pol_i}
N 1050 -180 1370 -180 { lab=pol_i}
N 1800 -730 1860 -730 { lab=#net1}
N 1860 -740 1860 -730 { lab=#net1}
N 1800 -710 1860 -710 { lab=#net2}
N 1860 -710 1860 -700 { lab=#net2}
N 1860 -530 1920 -530 { lab=#net3}
N 1920 -540 1920 -530 { lab=#net3}
N 1860 -510 1920 -510 { lab=#net4}
N 1920 -510 1920 -500 { lab=#net4}
N 1360 20 1360 40 { lab=pol_q}
N 1360 0 1360 20 { lab=pol_q}
N 1000 0 1000 40 { lab=pol_q}
N 1000 0 1040 0 { lab=pol_q}
N 1360 -50 1360 0 { lab=pol_q}
N 1360 -50 1470 -50 { lab=pol_q}
N 1480 30 1480 60 { lab=event_q}
N 1480 -10 1480 30 { lab=event_q}
N 1470 -50 1480 -50 { lab=pol_q}
N 1040 0 1360 0 { lab=pol_q}
N 200 -980 1520 -980 { lab=inp_i_mux}
N 200 -1020 1520 -1020 { lab=thresh2}
N 200 -1060 1520 -1060 { lab=thresh1}
N 200 -1100 1520 -1100 { lab=phi2b}
N 200 -940 1520 -940 { lab=cclk}
N 200 -900 1520 -900 { lab=cclkb}
N 200 -1140 1520 -1140 { lab=phi2}
N 200 -1180 1520 -1180 { lab=phi1b}
N 200 -1220 1520 -1220 { lab=phi1}
N 200 -1260 1520 -1260 {}
N 200 -1300 1520 -1300 {}
N 200 -1340 1520 -1340 {}
N 200 -1380 1520 -1380 {}
N -20 -1520 -20 -10 {}
N -60 -1500 -60 0 {}
N 120 -670 120 -640 {}
N -60 -640 80 -640 {}
N -20 -670 120 -670 {}
N 20 -1520 20 0 {}
N 20 -610 50 -610 {}
N -100 -1520 -100 0 {}
N -100 -590 50 -590 {}
N -140 -1520 -140 0 {}
N -140 -570 50 -570 {}
C {devices/ipin.sym} -390 -950 0 0 {name=p1 lab=rstb}
C {devices/opin.sym} 1850 -210 0 0 {name=p2 lab=latch_i}
C {devices/ipin.sym} -390 -920 0 0 {name=p3 lab=en}
C {devices/ipin.sym} -390 -890 0 0 {name=p4 lab=inp_i}
C {devices/ipin.sym} -390 -860 0 0 {name=p5 lab=inp_q}
C {devices/ipin.sym} -310 -890 0 0 {name=p6 lab=inm_i}
C {devices/ipin.sym} -310 -860 0 0 {name=p7 lab=inm_q}
C {devices/ipin.sym} -320 -920 0 0 {name=p8 lab=phi1}
C {devices/ipin.sym} -320 -950 0 0 {name=p9 lab=cclk}
C {devices/lab_pin.sym} 1490 -120 0 1 {name=l365 sig_type=std_logic lab=event_i}
C {sky130_stdcells/xor2_1.sym} 1430 -120 2 1 {name=x17 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 650 -160 3 0 {name=l366 sig_type=std_logic lab=phi1b}
C {sky130_stdcells/dfxtp_1.sym} 1100 -130 2 1 {name=x18 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1010 -120 3 0 {name=l367 sig_type=std_logic lab=phi1}
C {sky130_stdcells/dfxtp_1.sym} 1280 -110 2 1 {name=x19 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1190 -100 3 0 {name=l368 sig_type=std_logic lab=phi1}
C {sky130_stdcells/dfxtp_1.sym} 740 -170 2 1 {name=x20 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfxtp_1.sym} 920 -150 2 1 {name=x21 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 830 -140 3 0 {name=l369 sig_type=std_logic lab=phi1}
C {sky130_stdcells/and2_0.sym} 1550 -210 2 1 {name=x22 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1610 -210 0 1 {name=l370 sig_type=std_logic lab=polxevent_i}
C {devices/lab_pin.sym} 1120 -180 3 1 {name=l371 sig_type=std_logic lab=pol_i}
C {devices/lab_pin.sym} 830 -160 3 1 {name=l372 sig_type=std_logic lab=latch_i}
C {devices/lab_pin.sym} 650 -180 0 0 {name=l373 sig_type=std_logic lab=high_i}
C {devices/ipin.sym} -390 -1000 0 0 {name=p10 lab=thresh1}
C {devices/ipin.sym} -390 -970 0 0 {name=p11 lab=thresh2}
C {tryandtest/final/filter.sym} 700 -620 0 0 {name=X64}
C {devices/lab_pin.sym} 860 -760 1 0 {name=l363 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 900 -760 0 1 {name=l364 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 860 -630 3 0 {name=l516 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 900 -630 0 1 {name=l517 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 710 -710 0 0 {name=l522 sig_type=std_logic lab=inp_i_mux}
C {devices/lab_pin.sym} 1030 -710 0 1 {name=l523 sig_type=std_logic lab=inp_i_o}
C {devices/lab_pin.sym} 710 -690 0 0 {name=l528 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 710 -670 0 0 {name=l529 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} 820 -760 2 1 {name=l534 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 820 -630 2 1 {name=l535 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 1940 -740 0 1 {name=l546 sig_type=std_logic lab=high_i}
C {devices/lab_pin.sym} 1940 -700 0 1 {name=l547 sig_type=std_logic lab=low_i}
C {tryandtest/comparator_single_tail.sym} 1690 -660 0 0 {name=X65 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {sky130_stdcells/buf_1.sym} 1900 -740 0 0 {name=x35 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/buf_1.sym} 1900 -700 0 0 {name=x36 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1710 -740 0 0 {name=l548 sig_type=std_logic lab=inp_i_o}
C {devices/lab_pin.sym} 1710 -700 0 0 {name=l549 sig_type=std_logic lab=inm_i_o}
C {devices/lab_pin.sym} 1770 -670 0 1 {name=l550 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1770 -770 2 0 {name=l551 sig_type=std_logic lab=phi1}
C {tryandtest/final/filter.sym} 700 -340 0 0 {name=X66}
C {devices/lab_pin.sym} 710 -430 0 0 {name=l556 sig_type=std_logic lab=inm_i_mux}
C {devices/lab_pin.sym} 1030 -430 0 1 {name=l557 sig_type=std_logic lab=inm_i_o}
C {devices/lab_pin.sym} 710 -390 0 0 {name=l558 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 710 -410 0 0 {name=l559 sig_type=std_logic lab=thresh2}
C {mux/multiplier_differential.sym} 730 -550 0 0 {name=X67}
C {devices/lab_pin.sym} 680 -590 0 0 {name=l562 sig_type=std_logic lab=inp_i}
C {devices/lab_pin.sym} 680 -510 0 0 {name=l563 sig_type=std_logic lab=inm_i}
C {devices/lab_pin.sym} 780 -590 0 1 {name=l564 sig_type=std_logic lab=inp_i_mux}
C {devices/lab_pin.sym} 780 -510 0 1 {name=l565 sig_type=std_logic lab=inm_i_mux}
C {sky130_stdcells/inv_1.sym} 690 -620 0 0 {name=x37 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 730 -490 2 0 {name=l566 sig_type=std_logic lab=sin}
C {devices/lab_pin.sym} 650 -620 2 1 {name=l567 sig_type=std_logic lab=sin}
C {mux/multiplier_differential.sym} 380 -390 0 0 {name=X68}
C {devices/lab_pin.sym} 430 -430 0 1 {name=l568 sig_type=std_logic lab=inp_q_mux}
C {devices/lab_pin.sym} 430 -350 0 1 {name=l569 sig_type=std_logic lab=inm_q_mux}
C {sky130_stdcells/inv_1.sym} 340 -460 0 0 {name=x38 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 330 -430 0 0 {name=l570 sig_type=std_logic lab=inp_q}
C {devices/lab_pin.sym} 330 -350 0 0 {name=l571 sig_type=std_logic lab=inm_q}
C {devices/lab_pin.sym} 300 -460 2 1 {name=l572 sig_type=std_logic lab=cos}
C {devices/lab_pin.sym} 380 -330 2 0 {name=l573 sig_type=std_logic lab=cos}
C {tryandtest/final/filter.sym} 1200 -630 0 0 {name=X69}
C {devices/lab_pin.sym} 1210 -720 0 0 {name=l578 sig_type=std_logic lab=inp_q_mux}
C {devices/lab_pin.sym} 1530 -720 0 1 {name=l579 sig_type=std_logic lab=inp_q_o}
C {devices/lab_pin.sym} 1210 -700 0 0 {name=l580 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 1210 -680 0 0 {name=l581 sig_type=std_logic lab=thresh2}
C {tryandtest/final/filter.sym} 1200 -360 0 0 {name=X70}
C {devices/lab_pin.sym} 1210 -450 0 0 {name=l588 sig_type=std_logic lab=inm_q_mux}
C {devices/lab_pin.sym} 1530 -450 0 1 {name=l589 sig_type=std_logic lab=inm_q_o}
C {devices/lab_pin.sym} 1210 -410 0 0 {name=l590 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 1210 -430 0 0 {name=l591 sig_type=std_logic lab=thresh2}
C {Sinusoid_generator/sinusoid_generator_updated.sym} 50 -540 0 0 {name=X71}
C {devices/lab_pin.sym} 140 -610 2 0 {name=l597 sig_type=std_logic lab=sin}
C {devices/lab_pin.sym} 140 -570 2 0 {name=l598 sig_type=std_logic lab=cos}
C {devices/lab_pin.sym} 2000 -540 0 1 {name=l601 sig_type=std_logic lab=high_q}
C {devices/lab_pin.sym} 2000 -500 0 1 {name=l602 sig_type=std_logic lab=low_q}
C {tryandtest/comparator_single_tail.sym} 1750 -460 0 0 {name=X72 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {sky130_stdcells/buf_1.sym} 1960 -540 0 0 {name=x39 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/buf_1.sym} 1960 -500 0 0 {name=x40 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1770 -540 0 0 {name=l603 sig_type=std_logic lab=inp_q_o}
C {devices/lab_pin.sym} 1770 -500 0 0 {name=l604 sig_type=std_logic lab=inm_q_o}
C {devices/lab_pin.sym} 1830 -470 0 1 {name=l605 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1770 -600 2 0 {name=l606 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 860 -480 1 0 {name=l1 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 900 -480 0 1 {name=l2 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 860 -350 3 0 {name=l3 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 900 -350 0 1 {name=l4 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 820 -480 2 1 {name=l5 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 820 -350 2 1 {name=l6 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 1360 -770 1 0 {name=l7 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1400 -770 0 1 {name=l8 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1360 -640 3 0 {name=l9 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1400 -640 0 1 {name=l10 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1320 -770 2 1 {name=l11 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 1320 -640 2 1 {name=l12 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 1360 -500 1 0 {name=l13 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1400 -500 0 1 {name=l14 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1360 -370 3 0 {name=l15 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1400 -370 0 1 {name=l16 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1320 -500 2 1 {name=l17 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 1320 -370 2 1 {name=l18 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 1480 60 0 1 {name=l19 sig_type=std_logic lab=event_q}
C {sky130_stdcells/xor2_1.sym} 1420 60 2 1 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 640 20 3 0 {name=l20 sig_type=std_logic lab=phi1b}
C {sky130_stdcells/dfxtp_1.sym} 1090 50 2 1 {name=x2 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1000 60 3 0 {name=l21 sig_type=std_logic lab=phi1}
C {sky130_stdcells/dfxtp_1.sym} 1270 70 2 1 {name=x3 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1180 80 3 0 {name=l22 sig_type=std_logic lab=phi1}
C {sky130_stdcells/dfxtp_1.sym} 730 10 2 1 {name=x4 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfxtp_1.sym} 910 30 2 1 {name=x5 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 820 40 3 0 {name=l23 sig_type=std_logic lab=phi1}
C {sky130_stdcells/and2_0.sym} 1540 -30 2 1 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1600 -30 0 1 {name=l24 sig_type=std_logic lab=polxevent_q}
C {devices/lab_pin.sym} 1110 0 3 1 {name=l25 sig_type=std_logic lab=pol_q}
C {devices/lab_pin.sym} 820 20 3 1 {name=l26 sig_type=std_logic lab=latch_q}
C {devices/lab_pin.sym} 640 0 0 0 {name=l27 sig_type=std_logic lab=high_q}
C {devices/ipin.sym} -310 -980 0 0 {name=p12 lab=phi2}
C {devices/ipin.sym} -310 -1000 0 0 {name=p13 lab=phi1b}
C {devices/ipin.sym} -400 -830 0 0 {name=p14 lab=phi2b}
C {devices/ipin.sym} -320 -830 0 0 {name=p15 lab=cclkb}
C {devices/opin.sym} 1850 -190 0 0 {name=p16 lab=latch_q}
C {devices/opin.sym} 1850 -170 0 0 {name=p17 lab=high_i}
C {devices/opin.sym} 1850 -150 0 0 {name=p18 lab=high_q}
C {devices/opin.sym} 1850 -130 0 0 {name=p19 lab=pol_i}
C {devices/opin.sym} 1850 -110 0 0 {name=p20 lab=pol_q}
C {devices/opin.sym} 1850 -90 0 0 {name=p21 lab=event_i}
C {devices/opin.sym} 1850 -70 0 0 {name=p22 lab=event_q}
C {devices/opin.sym} 1850 -50 0 0 {name=p23 lab=polxevent_i}
C {devices/opin.sym} 1850 -30 0 0 {name=p24 lab=polxevent_q}
C {devices/lab_pin.sym} 200 -1060 0 0 {name=l28 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 200 -1020 0 0 {name=l29 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} 200 -980 0 0 {name=l30 sig_type=std_logic lab=inp_i_mux}
C {devices/lab_pin.sym} 200 -940 2 1 {name=l31 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 200 -900 2 1 {name=l32 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 200 -1140 0 0 {name=l33 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 200 -1100 0 0 {name=l34 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 200 -1220 2 1 {name=l35 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 200 -1180 0 0 {name=l36 sig_type=std_logic lab=phi1b}
C {devices/vdd.sym} -60 -1500 0 0 {name=l37 lab=VDD}
C {devices/gnd.sym} -20 -10 0 0 {name=l38 lab=GND}
C {devices/lab_pin.sym} 20 -1520 2 1 {name=l39 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 200 -1300 0 0 {name=l41 sig_type=std_logic lab=inp_i}
C {devices/lab_pin.sym} 200 -1260 0 0 {name=l42 sig_type=std_logic lab=inm_i}
C {devices/lab_pin.sym} 200 -1380 0 0 {name=l43 sig_type=std_logic lab=inp_q}
C {devices/lab_pin.sym} 200 -1340 0 0 {name=l44 sig_type=std_logic lab=inm_q}
C {devices/lab_pin.sym} -100 -1520 2 1 {name=l45 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -140 -1520 2 1 {name=l46 sig_type=std_logic lab=clk}
