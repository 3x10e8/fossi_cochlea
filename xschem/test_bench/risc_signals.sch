v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 21 0 -1400 0 -280 {}
T {audio inputs 
(three tones)} -780 -1050 0 0 0.4 0.4 {}
T {filter cap 
thresholds} -590 -1190 2 0 0.4 0.4 {}
T {current-starved inv biases 
(clkgen)} -50 -780 2 0 0.4 0.4 {}
T {power supplies
(short to gnd 
in parent circuit)} -760 -1370 0 0 0.4 0.4 {}
T {to be synthesized in openlane 
as hd device} 20 -400 0 0 0.4 0.4 {}
T {gate clk with resetb 
on RISC LA} -330 -590 0 0 0.4 0.4 {}
T {<--- RISC} -280 -1310 0 0 1 1 {}
T {MPRJ --->} 40 -1310 0 0 1 1 {}
N -580 -860 -380 -860 {
lab=vcm}
N -540 -520 -300 -520 {
lab=clk}
N -300 -500 -300 -420 {
lab=rstb}
N -540 -420 -300 -420 {
lab=rstb}
N -120 -520 40 -520 {
lab=clk_ext}
N -40 -720 40 -720 {
lab=clk_ext}
N 40 -480 40 -420 {
lab=rstb}
N -300 -420 40 -420 {
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
C {devices/vsource.sym} -560 -1330 0 0 {name=vdda1 value="DC \{p_vdda1\}"}
C {devices/vsource.sym} -560 -1210 0 0 {name=vthresh1 value="DC \{p_thresh1\}"}
C {devices/vsource.sym} -400 -1210 0 0 {name=vthresh2 value="DC \{p_thresh2\}"}
C {devices/lab_pin.sym} -560 -1240 2 0 {name=l12 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -400 -1240 2 0 {name=l14 sig_type=std_logic lab=thresh2}
C {devices/opin.sym} 680 -1000 0 0 {name=p3 lab=thresh1}
C {devices/opin.sym} 680 -960 0 0 {name=p4 lab=thresh2}
C {devices/lab_pin.sym} -560 -1360 2 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/opin.sym} 680 -1200 0 0 {name=p1 lab=vdda1}
C {devices/lab_pin.sym} -560 -1300 2 0 {name=l2 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -560 -1180 2 0 {name=l3 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -400 -1180 2 0 {name=l4 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 680 -1160 0 0 {name=p2 lab=vssa1}
C {devices/lab_pin.sym} -580 -1040 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/vsource.sym} -580 -1010 0 0 {name=vinp1 value="DC 0 SIN(0 \{p_amp1\} \{p_f1\})"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} -380 -1040 2 0 {name=l22 sig_type=std_logic lab=inm}
C {devices/vsource.sym} -380 -1010 0 0 {name=vinm1 value="DC 0 SIN(0 \{-p_amp1\} \{p_f1\})"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} -520 -860 3 0 {name=l5 sig_type=std_logic lab=vcm}
C {devices/opin.sym} 680 -880 0 0 {name=p5 lab=inp}
C {devices/opin.sym} 680 -840 0 0 {name=p6 lab=inm}
C {devices/vsource.sym} -320 -740 0 0 {name=vpb value="DC \{p_vpb\}"}
C {devices/vsource.sym} -190 -720 0 0 {name=vnb value="DC \{p_vnb\}"}
C {devices/lab_pin.sym} -320 -770 0 0 {name=l6 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -190 -750 0 0 {name=l7 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} -320 -710 2 0 {name=l8 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -190 -690 2 0 {name=l9 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 680 -760 0 0 {name=p7 lab=phi1[1:0]}
C {devices/opin.sym} 680 -720 0 0 {name=p8 lab=phi1b[1:0]}
C {devices/vsource.sym} -580 -950 0 0 {name=vinp2 value="DC 0 SIN(0 \{p_amp2\} \{p_f2\})"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} -580 -890 0 0 {name=vinp3 value="DC 0 SIN(0 \{p_amp3\} \{p_f3\})"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} -380 -950 0 0 {name=vinm2 value="DC 0 SIN(0 \{-p_amp2\} \{p_f2\})"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} -380 -890 0 0 {name=vinm3 value="DC 0 SIN(0 \{-p_amp3\} \{p_f3\})"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} -480 -830 0 0 {name=vcm value="DC \{p_vcm\}"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} -480 -800 2 0 {name=l10 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -580 -980 0 0 {name=l11 sig_type=std_logic lab=inp2}
C {devices/lab_pin.sym} -580 -920 0 0 {name=l13 sig_type=std_logic lab=inp3}
C {devices/lab_pin.sym} -380 -980 2 0 {name=l15 sig_type=std_logic lab=inm2}
C {devices/lab_pin.sym} -380 -920 2 0 {name=l16 sig_type=std_logic lab=inm3}
C {devices/vsource.sym} -400 -1330 0 0 {name=vdda2 value="DC \{p_vccd1\}"}
C {devices/lab_pin.sym} -400 -1360 2 0 {name=l17 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -400 -1300 2 0 {name=l18 sig_type=std_logic lab=vssd1}
C {devices/opin.sym} 680 -1100 0 0 {name=p9 lab=vccd1}
C {devices/opin.sym} 680 -1060 0 0 {name=p10 lab=vssd1}
C {devices/lab_pin.sym} -540 -520 0 0 {name=l19 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -540 -420 0 0 {name=l21 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -540 -360 0 0 {name=l23 sig_type=std_logic lab=vssd1}
C {devices/vsource.sym} -540 -490 0 0 {name=Vclk value="DC 0 PULSE (0 p_vccd1 1n 1n 1n 
+\{p_duty_cycle*1/p_fclk\} \{1/p_fclk\} 0"}
C {devices/lab_pin.sym} -540 -460 2 0 {name=l20 sig_type=std_logic lab=vssd1}
C {devices/vsource.sym} -540 -390 0 0 {name=Vrstb value="DC 0 PWL (
+ 0 0
+ p_rstb_delay 0
+ \{p_rstb_delay + p_rstb_tr\} p_vccd1)"
*reset goes high 5ns after 1.5 periods (before next rising edge of clk)}
C {devices/opin.sym} 680 -480 0 0 {name=p11 lab=div2out[1:0]}
C {devices/opin.sym} 680 -400 0 0 {name=p12 lab=rstb}
C {devices/lab_pin.sym} 110 -810 2 0 {name=l24 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 70 -810 0 0 {name=l25 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 90 -610 2 0 {name=l27 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 680 -680 0 0 {name=p13 lab=phi2[1:0]}
C {devices/opin.sym} 680 -640 0 0 {name=p14 lab=phi2b[1:0]}
C {devices/opin.sym} 680 -600 0 0 {name=p15 lab=cclk[1:0]}
C {devices/opin.sym} 680 -560 0 0 {name=p16 lab=cclkb[1:0]}
C {devices/lab_pin.sym} 140 -770 2 0 {name=l28 sig_type=std_logic lab=phi1[0]}
C {devices/lab_pin.sym} 140 -750 2 0 {name=l29 sig_type=std_logic lab=phi1b[0]}
C {devices/lab_pin.sym} 140 -730 2 0 {name=l30 sig_type=std_logic lab=phi2[0]}
C {devices/lab_pin.sym} 140 -710 2 0 {name=l31 sig_type=std_logic lab=phi2b[0]}
C {devices/lab_pin.sym} 140 -690 2 0 {name=l32 sig_type=std_logic lab=cclk[0]}
C {devices/lab_pin.sym} 140 -670 2 0 {name=l33 sig_type=std_logic lab=cclkb[0]}
C {devices/lab_pin.sym} 160 -520 1 0 {name=l34 sig_type=std_logic lab=div2out[0]}
C {sky130_stdcells/dlclkp_1.sym} -210 -510 0 0 {name=x1 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {clkgen/filter_clkgen.sym} 90 -710 0 0 {name=x2}
C {devices/lab_pin.sym} -40 -720 0 0 {name=l35 sig_type=std_logic lab=clk_ext}
C {clkgen/dig_div2.sym} 90 -500 0 0 {name=x3}
C {devices/lab_pin.sym} 90 -560 0 0 {name=l36 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 90 -440 2 0 {name=l37 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 680 -440 0 0 {name=p17 lab=clk_ext}
C {devices/lab_pin.sym} 410 -810 2 0 {name=l26 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 370 -810 0 0 {name=l38 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 390 -610 2 0 {name=l39 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 440 -770 2 0 {name=l40 sig_type=std_logic lab=phi1[1]}
C {devices/lab_pin.sym} 440 -750 2 0 {name=l41 sig_type=std_logic lab=phi1b[1]}
C {devices/lab_pin.sym} 440 -730 2 0 {name=l42 sig_type=std_logic lab=phi2[1]}
C {devices/lab_pin.sym} 440 -710 2 0 {name=l43 sig_type=std_logic lab=phi2b[1]}
C {devices/lab_pin.sym} 440 -690 2 0 {name=l44 sig_type=std_logic lab=cclk[1]}
C {devices/lab_pin.sym} 440 -670 2 0 {name=l45 sig_type=std_logic lab=cclkb[1]}
C {clkgen/filter_clkgen.sym} 390 -710 0 0 {name=x4}
C {clkgen/dig_div2.sym} 390 -500 0 0 {name=x5}
C {devices/lab_pin.sym} 390 -440 2 0 {name=l46 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 390 -560 0 0 {name=l47 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 440 -520 2 0 {name=l48 sig_type=std_logic lab=div2out[1]}
C {devices/lab_pin.sym} 140 -480 2 0 {name=l49 sig_type=std_logic lab=cclk_dig[0]}
C {devices/lab_pin.sym} 40 -680 0 0 {name=l50 sig_type=std_logic lab=cclk_dig[0]}
C {devices/lab_pin.sym} 340 -680 0 0 {name=l51 sig_type=std_logic lab=cclk_dig[1]}
C {devices/lab_pin.sym} 440 -480 2 0 {name=l52 sig_type=std_logic lab=cclk_dig[1]}
C {devices/lab_pin.sym} 40 -770 0 0 {name=l53 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} 40 -750 0 0 {name=l54 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 340 -770 0 0 {name=l55 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} 340 -750 0 0 {name=l56 sig_type=std_logic lab=vnb}
