v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {no_ones_below[j-1] & ~q[j-1] => no_ones_below[j]} -920 210 0 0 0.4 0.4 {}
T {binary clk on top} 1160 350 0 0 0.4 0.4 {}
T {8th bit} 1380 280 0 0 0.2 0.2 {}
N -650 -360 -630 -360 {
lab=thresh1}
N -650 -340 -630 -340 {
lab=thresh2}
N -790 -280 -790 -260 {
lab=GND}
N -650 -600 -630 -600 {
lab=inp}
N -650 -580 -630 -580 {
lab=inm}
N -670 -660 -670 -640 {
lab=vdda1}
N -830 -580 -810 -580 {
lab=clk_ext}
N -830 -600 -810 -600 {
lab=rstb}
N -650 -420 -630 -420 {
lab=cclk_ana}
N -650 -400 -630 -400 {
lab=cclkb_ana}
N -650 -500 -630 -500 {
lab=phi1}
N -650 -480 -630 -480 {
lab=phi1b}
N -650 -460 -630 -460 {
lab=phi2}
N -650 -440 -630 -440 {
lab=phi2b}
N -830 -560 -810 -560 {
lab=clkdiv2}
N -810 -300 -810 -260 {
lab=GND}
N -810 -260 -670 -260 {
lab=GND}
N -650 -300 -650 -260 {
lab=GND}
N -830 -540 -810 -540 {
lab=cclk}
N -730 -280 -730 -260 {
lab=GND}
N -670 -280 -670 -260 {
lab=GND}
N -670 -260 -650 -260 {
lab=GND}
N -1040 0 -940 0 {
lab=no_ones_below_-1}
N -760 0 -640 0 {
lab=no_ones_below[0]}
N -1040 -40 -940 -40 {
lab=q_-1}
N -1040 -20 -940 -20 {
lab=q[0]}
N -1000 -140 -1000 -20 {
lab=q[0]}
N -760 -20 -640 -20 {
lab=q[1]}
N -720 -140 -720 -20 {
lab=q[1]}
N -1000 -140 -960 -140 {
lab=q[0]}
N -720 -140 -680 -140 {
lab=q[1]}
N -460 0 -340 0 {
lab=no_ones_below[1]}
N -460 -20 -340 -20 {
lab=q[2]}
N -420 -140 -420 -20 {
lab=q[2]}
N -420 -140 -380 -140 {
lab=q[2]}
N -160 0 -40 0 {
lab=no_ones_below[2]}
N -160 -20 -40 -20 {
lab=q[3]}
N -120 -140 -120 -20 {
lab=q[3]}
N -120 -140 -80 -140 {
lab=q[3]}
N 140 0 260 0 {
lab=no_ones_below[3]}
N 140 -20 260 -20 {
lab=q[4]}
N 180 -140 180 -20 {
lab=q[4]}
N 180 -140 220 -140 {
lab=q[4]}
N 440 0 560 0 {
lab=no_ones_below[4]}
N 440 -20 560 -20 {
lab=q[5]}
N 480 -140 480 -20 {
lab=q[5]}
N 480 -140 520 -140 {
lab=q[5]}
N 740 0 860 0 {
lab=no_ones_below[5]}
N 740 -20 860 -20 {
lab=q[6]}
N 780 -140 780 -20 {
lab=q[6]}
N 780 -140 820 -140 {
lab=q[6]}
N 1040 -20 1160 -20 {
lab=q[7]}
N 1080 -140 1080 -20 {
lab=q[7]}
N 1080 -140 1120 -140 {
lab=q[7]}
N 1040 0 1160 0 {
lab=no_ones_below[6]}
N 1340 -20 1460 -20 {
lab=q[8]}
N 1380 -140 1380 -20 {
lab=q[8]}
N 1380 -140 1420 -140 {
lab=q[8]}
N 1340 0 1460 0 {
lab=no_ones_below[7]}
N 1640 -20 1760 -20 {
lab=q[9]}
N 1680 -140 1680 -20 {
lab=q[9]}
N 1680 -140 1720 -140 {
lab=q[9]}
N 1640 0 1760 0 {
lab=no_ones_below[8]}
N 1940 -20 2060 -20 {
lab=q[10]}
N 1980 -140 1980 -20 {
lab=q[10]}
N 1980 -140 2020 -140 {
lab=q[10]}
C {devices/lab_pin.sym} -670 -660 2 0 {name=l36 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -630 -360 2 0 {name=l37 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -630 -340 2 0 {name=l38 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -630 -600 2 0 {name=l39 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -630 -580 2 0 {name=l40 sig_type=std_logic lab=inm}
C {devices/gnd.sym} -790 -260 0 0 {name=l41 lab=GND}
C {devices/lab_pin.sym} -830 -580 0 0 {name=l44 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -830 -600 0 0 {name=l45 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -630 -500 2 0 {name=l46 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -630 -480 2 0 {name=l47 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} -630 -460 2 0 {name=l48 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} -630 -440 2 0 {name=l49 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} -630 -420 2 0 {name=l50 sig_type=std_logic lab=cclk_ana}
C {devices/lab_pin.sym} -630 -400 2 0 {name=l51 sig_type=std_logic lab=cclkb_ana}
C {devices/lab_pin.sym} -830 -560 0 0 {name=l52 sig_type=std_logic lab=clkdiv2}
C {devices/lab_pin.sym} -810 -620 0 0 {name=l12 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} -650 -620 2 0 {name=l14 sig_type=std_logic lab=vdda2}
C {test_bench/risc_signals.sym} -730 -460 0 0 {name=x11
+ p_vdda1=1.2
+ p_vdda2=1.2
+ p_vccd1=1.2
+ p_vccd2=1.8
+ p_vccd_mgmt=1.8
+ p_fclk=\{250*10k\}
+ p_duty_cycle=0.5
+ p_rstb_delay=\{1.5/p_fclk\}
+ p_rstb_tr=5n
+ p_thresh1=0.7
+ p_thresh2=0.65
+ p_vpb=0
+ p_vnb=1.2
+ p_vcm=0.6
+ p_amp1=100m
+ p_f1=\{100k\}
+ p_amp2=0
+ p_f2=0
+ p_amp3=0
+ p_f3=0}
C {devices/lab_pin.sym} -830 -540 0 0 {name=l1 sig_type=std_logic lab=cclk}
C {devices/netlist.sym} -410 -660 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /usr/local/lib/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param fmax=\{256*10k\}
.param Tmin=\{1/fmax\}
.csparam tstep=\{1/fmax/20\}
.csparam tend=\{200*Tmin\}
.csparam n=0
.control
  tran $&tstep $&tend
  plot \\"q_-1\\" \\"no_ones_below[0]\\" \\"q[0]\\"+1 \\"no_ones_below[1]\\"+1
  plot clk_ext \\"q_-1\\"+1 \\"q[0]\\"+2 \\"q[1]\\"+3
  plot clk_ext/2 \\"q_-1\\" \\"no_ones_below[0]\\"+1 \\"q[0]\\"+2 \\"q[1]\\"+3
  plot clk_ext/2 \\"q_-1\\" \\"q[0]\\"+1 \\"q[1]\\"+2 \\"q[2]\\"+3 \\"q[3]\\"+4 \\"q[4]\\"+5 \\"q[5]\\"+6 \\"q[6]\\"+7
  plot X1.net3/2 X1.net1 X1.net2+1.2 \\"q[0]\\"+2.4 X2.net1+3.6 X2.net2+4.8 \\"q[1]\\"+6
.endc
"}
C {devices/lab_pin.sym} -1040 0 3 0 {name=l10 sig_type=std_logic lab=no_ones_below_-1}
C {devices/lab_pin.sym} -760 0 3 0 {name=l16 sig_type=std_logic lab=no_ones_below[0]}
C {devices/lab_pin.sym} -680 -140 2 0 {name=l26 sig_type=std_logic lab=q[1]}
C {devices/lab_pin.sym} -790 -640 0 0 {name=l31 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -1220 0 0 0 {name=l7 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -1200 -80 0 0 {name=l32 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -1060 40 0 0 {name=l35 sig_type=std_logic lab=clk_ext}
C {devices/gnd.sym} -1200 40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -960 -140 2 0 {name=l5 sig_type=std_logic lab=q[0]}
C {devices/lab_pin.sym} -1040 -40 1 0 {name=l6 sig_type=std_logic lab=q_-1}
C {devices/lab_pin.sym} -920 -80 0 0 {name=l100 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} -920 40 0 0 {name=l101 lab=GND}
C {devices/lab_pin.sym} -780 40 0 0 {name=l102 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -780 -80 0 0 {name=l103 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -1060 -80 0 0 {name=l104 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -460 0 3 0 {name=l9 sig_type=std_logic lab=no_ones_below[1]}
C {devices/lab_pin.sym} -340 -40 0 0 {name=l13 sig_type=std_logic lab=q[1]}
C {devices/lab_pin.sym} -640 -40 0 0 {name=l15 sig_type=std_logic lab=q[0]}
C {devices/lab_pin.sym} -620 -80 0 0 {name=l17 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} -620 40 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} -480 40 0 0 {name=l19 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -480 -80 0 0 {name=l20 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -380 -140 2 0 {name=l2 sig_type=std_logic lab=q[2]}
C {devices/lab_pin.sym} -160 0 3 0 {name=l4 sig_type=std_logic lab=no_ones_below[2]}
C {devices/lab_pin.sym} -320 -80 0 0 {name=l21 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} -320 40 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} -180 40 0 0 {name=l23 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -180 -80 0 0 {name=l24 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -80 -140 2 0 {name=l11 sig_type=std_logic lab=q[3]}
C {devices/lab_pin.sym} 140 0 3 0 {name=l25 sig_type=std_logic lab=no_ones_below[3]}
C {devices/lab_pin.sym} -20 -80 0 0 {name=l27 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} -20 40 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} 120 40 0 0 {name=l29 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 120 -80 0 0 {name=l30 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 220 -140 2 0 {name=l34 sig_type=std_logic lab=q[4]}
C {devices/lab_pin.sym} 440 0 3 0 {name=l42 sig_type=std_logic lab=no_ones_below[4]}
C {devices/lab_pin.sym} 280 -80 0 0 {name=l43 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} 280 40 0 0 {name=l53 lab=GND}
C {devices/lab_pin.sym} 420 40 0 0 {name=l54 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 420 -80 0 0 {name=l55 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 520 -140 2 0 {name=l57 sig_type=std_logic lab=q[5]}
C {devices/lab_pin.sym} 740 0 3 0 {name=l58 sig_type=std_logic lab=no_ones_below[5]}
C {devices/lab_pin.sym} 580 -80 0 0 {name=l59 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} 580 40 0 0 {name=l60 lab=GND}
C {devices/lab_pin.sym} 720 40 0 0 {name=l61 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 720 -80 0 0 {name=l62 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -40 -40 0 0 {name=l8 sig_type=std_logic lab=q[2]}
C {devices/lab_pin.sym} 260 -40 0 0 {name=l33 sig_type=std_logic lab=q[3]}
C {devices/lab_pin.sym} 560 -40 0 0 {name=l56 sig_type=std_logic lab=q[4]}
C {devices/lab_pin.sym} 820 -140 2 0 {name=l64 sig_type=std_logic lab=q[6]}
C {devices/lab_pin.sym} 1180 200 0 0 {name=l65 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 1320 200 0 0 {name=l66 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 1320 320 0 0 {name=l67 sig_type=std_logic lab=clk_ext}
C {devices/gnd.sym} 1180 320 0 0 {name=l68 lab=GND}
C {devices/lab_pin.sym} 1340 260 2 0 {name=l69 sig_type=std_logic lab=q_sine}
C {devices/lab_pin.sym} 880 -80 0 0 {name=l72 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} 880 40 0 0 {name=l73 lab=GND}
C {devices/lab_pin.sym} 1020 40 0 0 {name=l74 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 1020 -80 0 0 {name=l75 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 860 -40 0 0 {name=l76 sig_type=std_logic lab=q[5]}
C {devices/lab_pin.sym} 1120 -140 2 0 {name=l77 sig_type=std_logic lab=q[7]}
C {devices/lab_pin.sym} 1040 0 3 0 {name=l78 sig_type=std_logic lab=no_ones_below[6]}
C {devices/lab_pin.sym} 1180 -80 0 0 {name=l79 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} 1180 40 0 0 {name=l80 lab=GND}
C {devices/lab_pin.sym} 1320 40 0 0 {name=l81 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 1320 -80 0 0 {name=l82 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 1340 0 3 0 {name=l83 sig_type=std_logic lab=no_ones_below[7]}
C {devices/lab_pin.sym} 1480 -80 0 0 {name=l84 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} 1480 40 0 0 {name=l85 lab=GND}
C {devices/lab_pin.sym} 1620 40 0 0 {name=l86 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 1620 -80 0 0 {name=l87 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 1640 0 3 0 {name=l88 sig_type=std_logic lab=no_ones_below[8]}
C {devices/lab_pin.sym} 1420 -140 2 0 {name=l89 sig_type=std_logic lab=q[8]}
C {devices/lab_pin.sym} 1720 -140 2 0 {name=l90 sig_type=std_logic lab=q[9]}
C {devices/lab_pin.sym} 1780 -80 0 0 {name=l91 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} 1780 40 0 0 {name=l92 lab=GND}
C {devices/lab_pin.sym} 1920 40 0 0 {name=l93 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 1920 -80 0 0 {name=l94 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 1940 0 3 0 {name=l95 sig_type=std_logic lab=no_ones_below[9]}
C {devices/lab_pin.sym} 2020 -140 2 0 {name=l96 sig_type=std_logic lab=q[10]}
C {devices/lab_pin.sym} 1160 -40 0 0 {name=l97 sig_type=std_logic lab=q[6]}
C {devices/lab_pin.sym} 1460 -40 0 0 {name=l98 sig_type=std_logic lab=q[7]}
C {devices/lab_pin.sym} 1760 -40 0 0 {name=l99 sig_type=std_logic lab=q[8]}
C {devices/lab_pin.sym} 1160 240 0 0 {name=l63 sig_type=std_logic lab=q[6]}
C {devices/lab_pin.sym} 1160 260 0 0 {name=l70 sig_type=std_logic lab=q[7]}
C {devices/lab_pin.sym} 1160 280 0 0 {name=l71 sig_type=std_logic lab=no_ones_below[6]}
C {digital/gray_first_cell.sym} -1140 -20 0 0 {name=x0}
C {digital/gray_cell.sym} -860 -20 0 0 {name=x1}
C {digital/gray_cell.sym} -560 -20 0 0 {name=x2}
C {digital/gray_cell.sym} -260 -20 0 0 {name=x3}
C {digital/gray_cell.sym} 40 -20 0 0 {name=x4}
C {digital/gray_cell.sym} 340 -20 0 0 {name=x5}
C {digital/gray_cell.sym} 640 -20 0 0 {name=x6}
C {digital/gray_cell.sym} 940 -20 0 0 {name=x7}
C {digital/gray_cell.sym} 1240 -20 0 0 {name=x8}
C {digital/gray_cell.sym} 1540 -20 0 0 {name=x9}
C {digital/gray_cell.sym} 1840 -20 0 0 {name=x10}
C {digital/gray_sine_cell.sym} 1240 260 0 0 {name=x12}
