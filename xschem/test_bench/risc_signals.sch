v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 21 0 -1400 0 -280 {}
T {to be synthesized in openlane 
as hd device} 20 -400 0 0 0.4 0.4 {}
T {<--- RISC/PADS} -420 -1310 0 0 1 1 {}
T {MPRJ --->} 40 -1310 0 0 1 1 {}
N -120 -520 40 -520 {
lab=clk_ext}
N -40 -720 40 -720 {
lab=clk_ext}
N 40 -480 40 -420 {
lab=rstb}
N -120 -420 40 -420 {
lab=rstb}
N 140 -520 340 -520 {
lab=div2out[0]}
N -40 -720 -40 -520 {
lab=clk_ext}
N 40 -420 340 -420 {
lab=rstb}
N 340 -480 340 -420 {
lab=rstb}
N 250 -720 340 -720 {
lab=div2out[0]}
N 250 -720 250 -520 {
lab=div2out[0]}
C {devices/opin.sym} 680 -1000 0 0 {name=p3 lab=thresh1}
C {devices/opin.sym} 680 -960 0 0 {name=p4 lab=thresh2}
C {devices/lab_pin.sym} -340 -780 2 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/opin.sym} 680 -1200 0 0 {name=p1 lab=vdda1}
C {devices/lab_pin.sym} -340 -420 2 0 {name=l2 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 680 -1160 0 0 {name=p2 lab=vssa1}
C {devices/lab_pin.sym} -320 -740 2 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -320 -720 2 0 {name=l22 sig_type=std_logic lab=inm}
C {devices/opin.sym} 680 -880 0 0 {name=p5 lab=inp}
C {devices/opin.sym} 680 -840 0 0 {name=p6 lab=inm}
C {devices/lab_pin.sym} -320 -640 2 0 {name=l6 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -320 -620 2 0 {name=l7 sig_type=std_logic lab=vnb}
C {devices/opin.sym} 680 -760 0 0 {name=p7 lab=phi1[1:0]}
C {devices/opin.sym} 680 -720 0 0 {name=p8 lab=phi1b[1:0]}
C {devices/lab_pin.sym} -460 -780 0 0 {name=l17 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -460 -420 0 0 {name=l18 sig_type=std_logic lab=vssd1}
C {devices/opin.sym} 680 -1100 0 0 {name=p9 lab=vccd1}
C {devices/opin.sym} 680 -1060 0 0 {name=p10 lab=vssd1}
C {devices/lab_pin.sym} -480 -740 0 0 {name=l21 sig_type=std_logic lab=rstb}
C {devices/opin.sym} 680 -400 0 0 {name=p11 lab=div2out[1:0]}
C {devices/opin.sym} 680 -320 0 0 {name=p12 lab=rstb}
C {devices/lab_pin.sym} 110 -810 2 0 {name=l24 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 70 -810 0 0 {name=l25 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 90 -610 2 0 {name=l27 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 680 -680 0 0 {name=p13 lab=phi2[1:0]}
C {devices/opin.sym} 680 -640 0 0 {name=p14 lab=phi2b[1:0]}
C {devices/opin.sym} 680 -600 0 0 {name=p15 lab=cclk_ana[1:0]}
C {devices/opin.sym} 680 -560 0 0 {name=p16 lab=cclkb_ana[1:0]}
C {devices/lab_pin.sym} 140 -770 2 0 {name=l28 sig_type=std_logic lab=phi1[0]}
C {devices/lab_pin.sym} 140 -750 2 0 {name=l29 sig_type=std_logic lab=phi1b[0]}
C {devices/lab_pin.sym} 140 -730 2 0 {name=l30 sig_type=std_logic lab=phi2[0]}
C {devices/lab_pin.sym} 140 -710 2 0 {name=l31 sig_type=std_logic lab=phi2b[0]}
C {devices/lab_pin.sym} 140 -690 2 0 {name=l32 sig_type=std_logic lab=cclk_ana[0]}
C {devices/lab_pin.sym} 140 -670 2 0 {name=l33 sig_type=std_logic lab=cclkb_ana[0]}
C {devices/lab_pin.sym} 190 -520 1 0 {name=l34 sig_type=std_logic lab=div2out[0]}
C {clkgen/filter_clkgen.sym} 90 -710 0 0 {name=x2}
C {devices/lab_pin.sym} -480 -720 0 0 {name=l35 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 90 -560 0 0 {name=l36 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 90 -440 2 0 {name=l37 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 680 -360 0 0 {name=p17 lab=clk_ext}
C {devices/lab_pin.sym} 410 -810 2 0 {name=l26 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 370 -810 0 0 {name=l38 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 390 -610 2 0 {name=l39 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 440 -770 2 0 {name=l40 sig_type=std_logic lab=phi1[1]}
C {devices/lab_pin.sym} 440 -750 2 0 {name=l41 sig_type=std_logic lab=phi1b[1]}
C {devices/lab_pin.sym} 440 -730 2 0 {name=l42 sig_type=std_logic lab=phi2[1]}
C {devices/lab_pin.sym} 440 -710 2 0 {name=l43 sig_type=std_logic lab=phi2b[1]}
C {devices/lab_pin.sym} 440 -690 2 0 {name=l44 sig_type=std_logic lab=cclk_ana[1]}
C {devices/lab_pin.sym} 440 -670 2 0 {name=l45 sig_type=std_logic lab=cclkb_ana[1]}
C {clkgen/filter_clkgen.sym} 390 -710 0 0 {name=x4}
C {devices/lab_pin.sym} 390 -440 2 0 {name=l46 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 390 -560 0 0 {name=l47 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 440 -520 2 0 {name=l48 sig_type=std_logic lab=div2out[1]}
C {devices/lab_pin.sym} 140 -480 2 0 {name=l49 sig_type=std_logic lab=cclk[0]}
C {devices/lab_pin.sym} 40 -680 0 0 {name=l50 sig_type=std_logic lab=cclk[0]}
C {devices/lab_pin.sym} 340 -680 0 0 {name=l51 sig_type=std_logic lab=cclk[1]}
C {devices/lab_pin.sym} 440 -480 2 0 {name=l52 sig_type=std_logic lab=cclk[1]}
C {devices/lab_pin.sym} 40 -770 0 0 {name=l53 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} 40 -750 0 0 {name=l54 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 340 -770 0 0 {name=l55 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} 340 -750 0 0 {name=l56 sig_type=std_logic lab=vnb}
C {devices/opin.sym} 680 -440 0 0 {name=p18 lab=cclk[1:0]}
C {test_bench/pad_frame.sym} -400 -600 0 0 {name=x6
+ p_vdda1=p_vdda1
+ p_vccd1=p_vccd1
+ p_fclk=p_fclk
+ p_duty_cycle=p_duty_cycle
+ p_rstb_delay=p_rstb_delay
+ p_rstb_tr=p_rstb_tr
+ p_thresh1=p_thresh1
+ p_thresh2=p_thresh2
+ p_vpb=p_vpb
+ p_vnb=p_vnb
+ p_vcm=p_vcm
+ p_amp1=p_amp1
+ p_f1=p_f1
+ p_amp2=p_amp2
+ p_f2=p_f2
+ p_amp3=p_amp3
+ p_f3=p_f3}
C {devices/lab_pin.sym} -120 -420 0 0 {name=l19 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -120 -520 0 0 {name=l20 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -320 -580 2 0 {name=l3 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -320 -560 2 0 {name=l4 sig_type=std_logic lab=thresh2}
C {digital/dig_div2.sym} 90 -500 0 0 {name=x1}
C {digital/dig_div2.sym} 390 -500 0 0 {name=x3}
