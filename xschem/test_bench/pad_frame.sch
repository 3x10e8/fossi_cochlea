v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {audio inputs 
(three tones)} -780 -1050 0 0 0.4 0.4 {}
T {filter cap 
thresholds} -590 -1190 2 0 0.4 0.4 {}
T {current-starved inv biases 
(clkgen)} -50 -780 2 0 0.4 0.4 {}
T {power supplies
(short to gnd 
in parent circuit)} -760 -1370 0 0 0.4 0.4 {}
T {gate clk with resetb 
on RISC LA} -330 -590 0 0 0.4 0.4 {}
T {<--- RISC} -250 -450 0 0 1 1 {}
T {gpio_analog} -480 -1120 0 0 1 1 {}
T {user supplies} -490 -1460 0 0 1 1 {}
T {mgmt core supplies} -960 -730 0 0 1 1 {}
N -580 -860 -380 -860 {
lab=vcm}
N -540 -520 -300 -520 {
lab=clk}
N -300 -500 -300 -420 {
lab=rstb}
N -540 -420 -300 -420 {
lab=rstb}
C {devices/vsource.sym} -560 -1330 0 0 {name=vdda1 value="DC \{p_vdda1\}"}
C {devices/vsource.sym} -560 -1210 0 0 {name=vthresh1 value="DC \{p_thresh1\}"}
C {devices/vsource.sym} -400 -1210 0 0 {name=vthresh2 value="DC \{p_thresh2\}"}
C {devices/lab_pin.sym} -560 -1240 2 0 {name=l12 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -400 -1240 2 0 {name=l14 sig_type=std_logic lab=thresh2}
C {devices/opin.sym} 140 -1140 0 0 {name=p3 lab=thresh1}
C {devices/opin.sym} 140 -1100 0 0 {name=p4 lab=thresh2}
C {devices/lab_pin.sym} -560 -1360 2 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -560 -1300 2 0 {name=l2 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -560 -1180 2 0 {name=l3 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -400 -1180 2 0 {name=l4 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -580 -1040 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/vsource.sym} -580 -1010 0 0 {name=vinp1 value="DC 0 SIN(0 \{p_amp1\} \{p_f1\})"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} -380 -1040 2 0 {name=l22 sig_type=std_logic lab=inm}
C {devices/vsource.sym} -380 -1010 0 0 {name=vinm1 value="DC 0 SIN(0 \{-p_amp1\} \{p_f1\})"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} -520 -860 3 0 {name=l5 sig_type=std_logic lab=vcm}
C {devices/opin.sym} 140 -1040 0 0 {name=p5 lab=inp}
C {devices/opin.sym} 140 -1000 0 0 {name=p6 lab=inm}
C {devices/vsource.sym} -320 -740 0 0 {name=vpb value="DC \{p_vpb\}"}
C {devices/vsource.sym} -190 -720 0 0 {name=vnb value="DC \{p_vnb\}"}
C {devices/lab_pin.sym} -320 -770 0 0 {name=l6 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -190 -750 0 0 {name=l7 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} -320 -710 2 0 {name=l8 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} -190 -690 2 0 {name=l9 sig_type=std_logic lab=vssa1}
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
C {devices/vsource.sym} -240 -1330 0 0 {name=vccd1 value="DC \{p_vccd1\}"}
C {devices/lab_pin.sym} -240 -1360 2 0 {name=l17 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -240 -1300 2 0 {name=l18 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} -540 -520 0 0 {name=l19 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -540 -420 0 0 {name=l21 sig_type=std_logic lab=rstb}
C {devices/vsource.sym} -540 -490 0 0 {name=Vclk value="DC 0 PULSE (0 p_vccd_mgmt 1n 1n 1n 
+\{p_duty_cycle*1/p_fclk\} \{1/p_fclk\} 0"}
C {devices/vsource.sym} -540 -390 0 0 {name=Vrstb value="DC 0 PWL (
+ 0 0
+ p_rstb_delay 0
+ \{p_rstb_delay + p_rstb_tr\} p_vccd_mgmt)"
*reset goes high 5ns after 1.5 periods (before next rising edge of clk)}
C {devices/opin.sym} 140 -480 0 0 {name=p12 lab=rstb}
C {sky130_stdcells/dlclkp_1.sym} -210 -510 0 0 {name=x1 VGND=vssd_mgmt VNB=vssd_mgmt VPB=vccd_mgmt VPWR=vccd_mgmt prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -120 -520 2 0 {name=l35 sig_type=std_logic lab=clk_ext}
C {devices/opin.sym} 140 -520 0 0 {name=p17 lab=clk_ext}
C {devices/opin.sym} 140 -780 0 0 {name=p7 lab=vpb}
C {devices/opin.sym} 140 -740 0 0 {name=p8 lab=vnb}
C {devices/iopin.sym} 140 -1320 0 0 {name=p13 lab=vccd1}
C {devices/iopin.sym} 140 -1300 0 0 {name=p11 lab=vssd1}
C {devices/iopin.sym} 140 -1440 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} 140 -1420 0 0 {name=p2 lab=vssa1}
C {devices/vsource.sym} -540 -610 0 0 {name=vccd_mgmt value="DC \{p_vccd_mgmt\}"}
C {devices/lab_pin.sym} -540 -640 2 0 {name=l24 sig_type=std_logic lab=vccd_mgmt}
C {devices/lab_pin.sym} -540 -580 2 0 {name=l25 sig_type=std_logic lab=vssd_mgmt}
C {devices/vsource.sym} -120 -1330 0 0 {name=vccd2 value="DC \{p_vccd2\}"}
C {devices/lab_pin.sym} -120 -1360 2 0 {name=l26 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} -120 -1300 2 0 {name=l27 sig_type=std_logic lab=vssd2}
C {devices/vsource.sym} -440 -1330 0 0 {name=vdda5 value="DC \{p_vdda2\}"}
C {devices/lab_pin.sym} -440 -1360 2 0 {name=l28 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -440 -1300 2 0 {name=l29 sig_type=std_logic lab=vssa2}
C {devices/iopin.sym} 140 -1380 0 0 {name=p9 lab=vdda2}
C {devices/iopin.sym} 140 -1360 0 0 {name=p10 lab=vssa2}
C {devices/iopin.sym} 140 -1260 0 0 {name=p14 lab=vccd2}
C {devices/iopin.sym} 140 -1240 0 0 {name=p15 lab=vssd2}
C {devices/iopin.sym} 140 -1200 0 0 {name=p16 lab=vccd_mgmt}
C {devices/iopin.sym} 140 -1180 0 0 {name=p18 lab=vssd_mgmt}
C {devices/lab_pin.sym} -540 -460 0 0 {name=l20 sig_type=std_logic lab=vssd_mgmt}
C {devices/lab_pin.sym} -540 -360 0 0 {name=l23 sig_type=std_logic lab=vssd_mgmt}
