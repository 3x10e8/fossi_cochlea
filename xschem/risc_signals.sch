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
N -320 -770 210 -770 {
lab=vpb}
N -190 -750 210 -750 {
lab=vnb}
N -540 -520 -300 -520 {
lab=clk}
N -300 -500 -300 -420 {
lab=rstb}
N -540 -420 -300 -420 {
lab=rstb}
N -120 -520 40 -520 {
lab=clk_ext}
N 180 -680 210 -680 {
lab=#net1}
N 160 -720 210 -720 {
lab=div2out}
N 40 -480 40 -420 {
lab=rstb}
N -300 -420 40 -420 {
lab=rstb}
N 180 -680 180 -480 {
lab=#net1}
N 140 -480 180 -480 {
lab=#net1}
N 140 -520 160 -520 {
lab=div2out}
N 160 -720 160 -520 {
lab=div2out}
C {devices/vsource.sym} -560 -1330 0 0 {name=vdda1 value="DC \{p_vdda1\}"}
C {devices/vsource.sym} -560 -1210 0 0 {name=vthresh1 value="DC \{p_thresh1\}"}
C {devices/vsource.sym} -400 -1210 0 0 {name=vthresh2 value="DC \{p_thresh2\}"}
C {devices/lab_pin.sym} -560 -1240 2 0 {name=l12 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -400 -1240 2 0 {name=l14 sig_type=std_logic lab=thresh2}
C {devices/opin.sym} 400 -1120 0 0 {name=p3 lab=thresh1}
C {devices/opin.sym} 400 -1080 0 0 {name=p4 lab=thresh2}
C {devices/lab_pin.sym} -560 -1360 2 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/opin.sym} 400 -1320 0 0 {name=p1 lab=vdda1}
C {devices/lab_pin.sym} -560 -1300 2 0 {name=l2 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -560 -1180 2 0 {name=l3 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -400 -1180 2 0 {name=l4 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 400 -1280 0 0 {name=p2 lab=vssa1}
C {devices/lab_pin.sym} -580 -1040 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/vsource.sym} -580 -1010 0 0 {name=vinp1 value="DC 0 SIN(0 \{p_amp1\} \{p_f1\})"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} -380 -1040 2 0 {name=l22 sig_type=std_logic lab=inm}
C {devices/vsource.sym} -380 -1010 0 0 {name=vinm1 value="DC 0 SIN(0 \{-p_amp1\} \{p_f1\})"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} -520 -860 3 0 {name=l5 sig_type=std_logic lab=vcm}
C {devices/opin.sym} 400 -1000 0 0 {name=p5 lab=inp}
C {devices/opin.sym} 400 -960 0 0 {name=p6 lab=inm}
C {devices/vsource.sym} -320 -740 0 0 {name=vpb value="DC \{p_vpb\}"}
C {devices/vsource.sym} -190 -720 0 0 {name=vnb value="DC \{p_vnb\}"}
C {devices/lab_pin.sym} -320 -770 0 0 {name=l6 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -190 -750 0 0 {name=l7 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} -320 -710 2 0 {name=l8 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -190 -690 2 0 {name=l9 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 400 -800 0 0 {name=p7 lab=phi1}
C {devices/opin.sym} 400 -760 0 0 {name=p8 lab=phi1b}
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
C {devices/opin.sym} 400 -1220 0 0 {name=p9 lab=vccd1}
C {devices/opin.sym} 400 -1180 0 0 {name=p10 lab=vssd1}
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
C {devices/opin.sym} 400 -520 0 0 {name=p11 lab=div2out}
C {devices/opin.sym} 400 -440 0 0 {name=p12 lab=rstb}
C {devices/lab_pin.sym} 280 -810 2 0 {name=l24 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 240 -810 0 0 {name=l25 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 260 -610 2 0 {name=l27 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 400 -720 0 0 {name=p13 lab=phi2}
C {devices/opin.sym} 400 -680 0 0 {name=p14 lab=phi2b}
C {devices/opin.sym} 400 -640 0 0 {name=p15 lab=cclk}
C {devices/opin.sym} 400 -600 0 0 {name=p16 lab=cclkb}
C {devices/lab_pin.sym} 310 -770 2 0 {name=l28 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 310 -750 2 0 {name=l29 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 310 -730 2 0 {name=l30 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 310 -710 2 0 {name=l31 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 310 -690 2 0 {name=l32 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 310 -670 2 0 {name=l33 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 160 -720 0 0 {name=l34 sig_type=std_logic lab=div2out}
C {sky130_stdcells/dlclkp_1.sym} -210 -510 0 0 {name=x1 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {clkgen/filter_clkgen.sym} 260 -710 0 0 {name=x2}
C {devices/lab_pin.sym} -40 -520 1 0 {name=l35 sig_type=std_logic lab=clk_ext}
C {clkgen/dig_div2.sym} 90 -500 0 0 {name=x3}
C {devices/lab_pin.sym} 90 -560 0 0 {name=l36 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 90 -440 2 0 {name=l37 sig_type=std_logic lab=vssa1}
C {devices/opin.sym} 400 -480 0 0 {name=p17 lab=clk_ext}
