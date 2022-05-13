v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {audio inputs 
(three tones)} -300 -610 0 0 0.4 0.4 {}
T {filter cap 
thresholds} -190 -240 2 0 0.4 0.4 {}
T {current-starved 
inv biases 
(clkgen)} -560 -710 2 0 0.4 0.4 {}
T {power supplies
(short to gnd 
in parent circuit)} -200 -1150 0 0 0.4 0.4 {}
N -100 -420 100 -420 {
lab=vcm}
N -270 -740 -50 -740 {
lab=clk}
N -270 -860 -50 -860 {
lab=rstb}
N -510 -780 -50 -780 {
lab=vpb}
N -390 -760 -50 -760 {
lab=vnb}
C {devices/vsource.sym} 0 -1170 0 0 {name=vdda1 value="DC \{p_vdda1\}"}
C {devices/vsource.sym} -100 -250 0 0 {name=vthresh1 value="DC \{p_thresh1\}"}
C {devices/vsource.sym} 100 -250 0 0 {name=vthresh2 value="DC \{p_thresh2\}"}
C {devices/lab_pin.sym} -100 -280 2 0 {name=l12 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 100 -280 2 0 {name=l14 sig_type=std_logic lab=thresh2}
C {devices/opin.sym} 340 -280 0 0 {name=p3 lab=thresh1}
C {devices/opin.sym} 340 -240 0 0 {name=p4 lab=thresh2}
C {devices/lab_pin.sym} 0 -1200 2 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/opin.sym} 340 -1180 0 0 {name=p1 lab=vdda1}
C {devices/lab_pin.sym} 0 -1140 2 0 {name=l2 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -100 -220 2 0 {name=l3 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 100 -220 2 0 {name=l4 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 340 -1140 0 0 {name=p2 lab=vssa1}
C {devices/lab_pin.sym} -100 -600 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/vsource.sym} -100 -570 0 0 {name=vinp1 value="DC 0 SIN(0 \{p_amp1\} \{p_f1\})"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} 100 -600 2 0 {name=l22 sig_type=std_logic lab=inm}
C {devices/vsource.sym} 100 -570 0 0 {name=vinm1 value="DC 0 SIN(0 \{-p_amp1\} \{p_f1\})"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} -40 -420 3 0 {name=l5 sig_type=std_logic lab=vcm}
C {devices/opin.sym} 340 -520 0 0 {name=p5 lab=inp}
C {devices/opin.sym} 340 -480 0 0 {name=p6 lab=inm}
C {devices/vsource.sym} -510 -750 0 0 {name=vpb value="DC \{p_vpb\}"}
C {devices/vsource.sym} -390 -730 0 0 {name=vnb value="DC \{p_vnb\}"}
C {devices/lab_pin.sym} -510 -780 0 0 {name=l6 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -390 -760 0 0 {name=l7 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} -510 -720 2 0 {name=l8 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -390 -700 2 0 {name=l9 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 340 -860 0 0 {name=p7 lab=phi1}
C {devices/opin.sym} 340 -820 0 0 {name=p8 lab=phi1b}
C {devices/vsource.sym} -100 -510 0 0 {name=vinp2 value="DC 0 SIN(0 \{p_amp2\} \{p_f2\})"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} -100 -450 0 0 {name=vinp3 value="DC 0 SIN(0 \{p_amp3\} \{p_f3\})"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} 100 -510 0 0 {name=vinm2 value="DC 0 SIN(0 \{-p_amp2\} \{p_f2\})"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} 100 -450 0 0 {name=vinm3 value="DC 0 SIN(0 \{-p_amp3\} \{p_f3\})"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} 0 -390 0 0 {name=vcm value="DC \{p_vcm\}"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} 0 -360 2 0 {name=l10 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -100 -540 0 0 {name=l11 sig_type=std_logic lab=inp2}
C {devices/lab_pin.sym} -100 -480 0 0 {name=l13 sig_type=std_logic lab=inp3}
C {devices/lab_pin.sym} 100 -540 2 0 {name=l15 sig_type=std_logic lab=inm2}
C {devices/lab_pin.sym} 100 -480 2 0 {name=l16 sig_type=std_logic lab=inm3}
C {devices/vsource.sym} 0 -1050 0 0 {name=vdda2 value="DC \{p_vccd1\}"}
C {devices/lab_pin.sym} 0 -1080 2 0 {name=l17 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 0 -1020 2 0 {name=l18 sig_type=std_logic lab=vssd1}
C {devices/opin.sym} 340 -1080 0 0 {name=p9 lab=vccd1}
C {devices/opin.sym} 340 -1040 0 0 {name=p10 lab=vssd1}
C {devices/lab_pin.sym} -270 -740 0 0 {name=l19 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -270 -860 0 0 {name=l21 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -270 -800 0 0 {name=l23 sig_type=std_logic lab=vssd1}
C {devices/vsource.sym} -270 -710 0 0 {name=Vclk value="DC 0 PULSE (0 p_vccd1 1n 1n 1n 
+\{p_duty_cycle*1/p_fclk\} \{1/p_fclk\} 0"}
C {devices/lab_pin.sym} -270 -680 2 0 {name=l20 sig_type=std_logic lab=vssd1}
C {devices/vsource.sym} -270 -830 0 0 {name=Vrstb value="DC 0 PWL (
+ 0 0
+ p_rstb_delay 0
+ \{p_rstb_delay + p_rstb_tr\} p_vccd1)"
*reset goes high 5ns after 1.5 periods (before next rising edge of clk)}
C {devices/opin.sym} 340 -920 0 0 {name=p11 lab=clk}
C {devices/opin.sym} 340 -960 0 0 {name=p12 lab=rstb}
C {clkgen/filter_clkgen.sym} 0 -800 0 0 {name=X1}
C {devices/lab_pin.sym} 20 -900 2 0 {name=l24 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -20 -900 0 0 {name=l25 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -20 -700 3 0 {name=l26 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 20 -700 3 0 {name=l27 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 340 -780 0 0 {name=p13 lab=phi2}
C {devices/opin.sym} 340 -740 0 0 {name=p14 lab=phi2b}
C {devices/opin.sym} 340 -700 0 0 {name=p15 lab=cclk}
C {devices/opin.sym} 340 -660 0 0 {name=p16 lab=cclkb}
C {devices/opin.sym} 340 -620 0 0 {name=p17 lab=clkdiv2}
C {devices/lab_pin.sym} 50 -860 2 0 {name=l28 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 50 -840 2 0 {name=l29 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 50 -820 2 0 {name=l30 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 50 -800 2 0 {name=l31 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 50 -780 2 0 {name=l32 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 50 -760 2 0 {name=l33 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 50 -740 2 0 {name=l34 sig_type=std_logic lab=clkdiv2}
