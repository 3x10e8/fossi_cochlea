v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 21 0 -1400 0 -280 {}
T {to be synthesized in openlane 
as hd device} 280 -410 0 0 0.4 0.4 {}
T {<--- RISC/PADS} -420 -1310 0 0 1 1 {}
T {MPRJ --->} 40 -1310 0 0 1 1 {}
T {only use vssd1 (shared ground)} 960 -1110 0 0 0.4 0.4 {}
T {use as proxy for mgmt 1.8V supply in user space
(user for level shifting back to 1.8V)} 960 -1070 0 0 0.4 0.4 {}
T {not accessible in prj space?} -770 -510 0 0 0.4 0.4 {}
T {short mgmt vssd to gnd} -490 -390 0 0 0.4 0.4 {}
N 170 -530 300 -530 {
lab=clk_ext}
N 220 -730 300 -730 {
lab=clk_ext}
N 300 -490 300 -430 {
lab=rstb}
N 170 -430 300 -430 {
lab=rstb}
N 400 -530 600 -530 {
lab=div2out[0]}
N 220 -730 220 -530 {
lab=clk_ext}
N 300 -430 600 -430 {
lab=rstb}
N 600 -490 600 -430 {
lab=rstb}
N 510 -730 600 -730 {
lab=div2out[0]}
N 510 -730 510 -530 {
lab=div2out[0]}
N -400 -420 -400 -400 {
lab=vssd_mgmt}
C {devices/opin.sym} 880 -960 0 0 {name=p3 lab=thresh1}
C {devices/opin.sym} 880 -920 0 0 {name=p4 lab=thresh2}
C {devices/lab_pin.sym} -340 -780 2 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -340 -420 2 0 {name=l2 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -320 -740 2 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -320 -720 2 0 {name=l22 sig_type=std_logic lab=inm}
C {devices/opin.sym} 880 -880 0 0 {name=p5 lab=inp}
C {devices/opin.sym} 880 -840 0 0 {name=p6 lab=inm}
C {devices/lab_pin.sym} -320 -640 2 0 {name=l6 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -320 -620 2 0 {name=l7 sig_type=std_logic lab=vnb}
C {devices/opin.sym} 880 -760 0 0 {name=p7 lab=phi1[1:0]}
C {devices/opin.sym} 880 -720 0 0 {name=p8 lab=phi1b[1:0]}
C {devices/lab_pin.sym} -460 -780 0 0 {name=l17 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -460 -420 0 0 {name=l18 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} -480 -740 0 0 {name=l21 sig_type=std_logic lab=la_rstb}
C {devices/opin.sym} 880 -400 0 0 {name=p11 lab=div2out[1:0]}
C {devices/opin.sym} 880 -320 0 0 {name=p12 lab=rstb}
C {devices/lab_pin.sym} 370 -820 2 0 {name=l24 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 330 -820 0 0 {name=l25 sig_type=std_logic lab=vccd1}
C {devices/opin.sym} 880 -680 0 0 {name=p13 lab=phi2[1:0]}
C {devices/opin.sym} 880 -640 0 0 {name=p14 lab=phi2b[1:0]}
C {devices/opin.sym} 880 -600 0 0 {name=p15 lab=cclk_ana[1:0]}
C {devices/opin.sym} 880 -560 0 0 {name=p16 lab=cclkb_ana[1:0]}
C {devices/lab_pin.sym} 400 -780 2 0 {name=l28 sig_type=std_logic lab=phi1[0]}
C {devices/lab_pin.sym} 400 -760 2 0 {name=l29 sig_type=std_logic lab=phi1b[0]}
C {devices/lab_pin.sym} 400 -740 2 0 {name=l30 sig_type=std_logic lab=phi2[0]}
C {devices/lab_pin.sym} 400 -720 2 0 {name=l31 sig_type=std_logic lab=phi2b[0]}
C {devices/lab_pin.sym} 400 -700 2 0 {name=l32 sig_type=std_logic lab=cclk_ana[0]}
C {devices/lab_pin.sym} 400 -680 2 0 {name=l33 sig_type=std_logic lab=cclkb_ana[0]}
C {devices/lab_pin.sym} 450 -530 1 0 {name=l34 sig_type=std_logic lab=div2out[0]}
C {clkgen/filter_clkgen.sym} 350 -720 0 0 {name=x2}
C {devices/lab_pin.sym} -480 -720 0 0 {name=l35 sig_type=std_logic lab=la_clk_ext}
C {devices/lab_pin.sym} 350 -570 0 0 {name=l36 sig_type=std_logic lab=vccd1}
C {devices/opin.sym} 880 -360 0 0 {name=p17 lab=clk_ext}
C {devices/lab_pin.sym} 670 -820 2 0 {name=l26 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 630 -820 0 0 {name=l38 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 700 -780 2 0 {name=l40 sig_type=std_logic lab=phi1[1]}
C {devices/lab_pin.sym} 700 -760 2 0 {name=l41 sig_type=std_logic lab=phi1b[1]}
C {devices/lab_pin.sym} 700 -740 2 0 {name=l42 sig_type=std_logic lab=phi2[1]}
C {devices/lab_pin.sym} 700 -720 2 0 {name=l43 sig_type=std_logic lab=phi2b[1]}
C {devices/lab_pin.sym} 700 -700 2 0 {name=l44 sig_type=std_logic lab=cclk_ana[1]}
C {devices/lab_pin.sym} 700 -680 2 0 {name=l45 sig_type=std_logic lab=cclkb_ana[1]}
C {clkgen/filter_clkgen.sym} 650 -720 0 0 {name=x4}
C {devices/lab_pin.sym} 650 -570 0 0 {name=l47 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 700 -530 2 0 {name=l48 sig_type=std_logic lab=div2out[1]}
C {devices/lab_pin.sym} 400 -490 2 0 {name=l49 sig_type=std_logic lab=cclk[0]}
C {devices/lab_pin.sym} 300 -690 0 0 {name=l50 sig_type=std_logic lab=cclk[0]}
C {devices/lab_pin.sym} 600 -690 0 0 {name=l51 sig_type=std_logic lab=cclk[1]}
C {devices/lab_pin.sym} 700 -490 2 0 {name=l52 sig_type=std_logic lab=cclk[1]}
C {devices/lab_pin.sym} 300 -780 0 0 {name=l53 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} 300 -760 0 0 {name=l54 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 600 -780 0 0 {name=l55 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} 600 -760 0 0 {name=l56 sig_type=std_logic lab=vnb}
C {devices/opin.sym} 880 -440 0 0 {name=p18 lab=cclk[1:0]}
C {test_bench/pad_frame.sym} -400 -600 0 0 {name=x6
+ p_vdda1=p_vdda1
+ p_vdda2=p_vdda2
+ p_vccd1=p_vccd1
+ p_vccd2=p_vccd2
+ p_vccd_mgmt=p_vccd_mgmt
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
C {devices/lab_pin.sym} 270 -430 1 0 {name=l19 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 220 -620 0 0 {name=l20 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -320 -580 2 0 {name=l3 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -320 -560 2 0 {name=l4 sig_type=std_logic lab=thresh2}
C {digital/dig_div2.sym} 350 -510 0 0 {name=x1}
C {digital/dig_div2.sym} 650 -510 0 0 {name=x3}
C {devices/lab_pin.sym} 350 -620 0 0 {name=l5 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 650 -620 0 0 {name=l8 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 650 -450 2 0 {name=l9 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 350 -450 2 0 {name=l10 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} -320 -760 2 0 {name=l11 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -480 -760 0 0 {name=l12 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} -480 -480 0 0 {name=l13 sig_type=std_logic lab=vccd_mgmt}
C {devices/lab_pin.sym} -480 -440 0 0 {name=l14 sig_type=std_logic lab=vssd2}
C {devices/lab_pin.sym} -320 -440 2 0 {name=l15 sig_type=std_logic lab=vssa2}
C {devices/iopin.sym} 880 -1120 0 0 {name=p1 lab=vccd1}
C {devices/iopin.sym} 880 -1100 0 0 {name=p2 lab=vssd1}
C {devices/iopin.sym} 880 -1240 0 0 {name=p9 lab=vdda1}
C {devices/iopin.sym} 880 -1220 0 0 {name=p10 lab=vssa1}
C {devices/iopin.sym} 880 -1180 0 0 {name=p19 lab=vdda2}
C {devices/iopin.sym} 880 -1160 0 0 {name=p20 lab=vssa2}
C {devices/iopin.sym} 880 -1060 0 0 {name=p21 lab=vccd2}
C {devices/iopin.sym} 880 -1040 0 0 {name=p22 lab=vssd2}
C {level_shifter/level_down_shifter.sym} 80 -420 0 0 {name=x5}
C {devices/lab_pin.sym} 30 -460 0 0 {name=l23 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 140 -460 2 0 {name=l27 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 80 -380 2 0 {name=l37 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 0 -430 0 0 {name=l39 sig_type=std_logic lab=la_rstb}
C {level_shifter/level_down_shifter.sym} 80 -520 0 0 {name=x7}
C {devices/lab_pin.sym} 30 -560 0 0 {name=l46 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 140 -560 2 0 {name=l57 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 80 -480 2 0 {name=l58 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 0 -530 0 0 {name=l60 sig_type=std_logic lab=la_clk_ext}
C {devices/lab_pin.sym} -400 -400 2 0 {name=l16 sig_type=std_logic lab=vssd_mgmt}
C {devices/iopin.sym} 880 -1000 0 0 {name=p23 lab=vssd_mgmt}
