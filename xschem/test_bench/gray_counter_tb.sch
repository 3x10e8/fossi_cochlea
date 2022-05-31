v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {q[-1]} -30 -90 0 0 0.4 0.4 {}
T {always 1} -350 370 0 0 0.4 0.4 {}
T {no_ones_below[j-1] & ~q[j-1] => no_ones_below[j]} -920 210 0 0 0.4 0.4 {}
T {binary clk on top} 530 1300 0 0 0.4 0.4 {}
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
N 240 340 340 340 {
lab=#net1}
N 240 500 340 500 {
lab=#net2}
N 60 320 120 320 {
lab=#net3}
N 60 480 120 480 {
lab=#net4}
N 240 660 340 660 {
lab=#net5}
N 60 640 120 640 {
lab=#net6}
N 240 820 340 820 {
lab=#net7}
N 60 800 120 800 {
lab=#net8}
N 240 980 340 980 {
lab=#net9}
N 60 960 120 960 {
lab=#net10}
N 240 1140 340 1140 {
lab=#net11}
N 60 1120 120 1120 {
lab=#net12}
N -260 340 -260 360 {
lab=no_ones_below_-1}
N -260 360 -60 360 {
lab=no_ones_below_-1}
N -60 340 -60 360 {
lab=no_ones_below_-1}
N -260 500 -260 520 {
lab=no_ones_below[0]}
N -260 520 -60 520 {
lab=no_ones_below[0]}
N -60 500 -60 520 {
lab=no_ones_below[0]}
N -260 660 -260 680 {
lab=no_ones_below[1]}
N -260 680 -60 680 {
lab=no_ones_below[1]}
N -60 660 -60 680 {
lab=no_ones_below[1]}
N -260 820 -260 840 {
lab=no_ones_below[2]}
N -260 840 -60 840 {
lab=no_ones_below[2]}
N -60 820 -60 840 {
lab=no_ones_below[2]}
N -260 980 -260 1000 {
lab=no_ones_below[3]}
N -260 1000 -60 1000 {
lab=no_ones_below[3]}
N -60 980 -60 1000 {
lab=no_ones_below[3]}
N -260 1140 -260 1160 {
lab=no_ones_below[4]}
N -260 1160 -60 1160 {
lab=no_ones_below[4]}
N -60 1140 -60 1160 {
lab=no_ones_below[4]}
N 240 1300 340 1300 {
lab=#net13}
N 60 1280 120 1280 {
lab=#net14}
N -260 1300 -260 1320 {
lab=no_ones_below[5]}
N -260 1320 -60 1320 {
lab=no_ones_below[5]}
N -60 1300 -60 1320 {
lab=no_ones_below[5]}
C {devices/lab_pin.sym} -380 520 0 0 {name=l2 sig_type=std_logic lab=q_-1}
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
C {test_bench/risc_signals.sym} -730 -460 0 0 {name=x2
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
  *plot "q_-1" "q[0]"+1 "q[1]"+2 "q[2]"+3 "q[3]"+4 "q[4]"+5 "q[5]"+6 "q[6]"+7
.endc
"}
C {sky130_stdcells/buf_1.sym} -300 340 0 0 {name=x3 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -260 340 2 0 {name=l10 sig_type=std_logic lab=no_ones_below_-1}
C {devices/lab_pin.sym} 120 360 0 0 {name=l8 sig_type=std_logic lab=q[0]}
C {sky130_stdcells/and2b_1.sym} -320 500 2 1 {name=x4 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -380 480 0 0 {name=l11 sig_type=std_logic lab=no_ones_below_-1}
C {devices/lab_pin.sym} -260 500 2 0 {name=l16 sig_type=std_logic lab=no_ones_below[0]}
C {devices/lab_pin.sym} 340 320 0 0 {name=l17 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 340 360 0 0 {name=l18 sig_type=std_logic lab=rstb}
C {sky130_stdcells/xor2_1.sym} 180 340 0 0 {name=x6 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -60 300 0 0 {name=l19 sig_type=std_logic lab=q_-1}
C {devices/lab_pin.sym} -260 660 2 0 {name=l24 sig_type=std_logic lab=no_ones_below[1]}
C {devices/lab_pin.sym} -380 680 0 0 {name=l21 sig_type=std_logic lab=q[0]}
C {devices/lab_pin.sym} -380 640 0 0 {name=l25 sig_type=std_logic lab=no_ones_below[0]}
C {devices/lab_pin.sym} 520 480 2 0 {name=l26 sig_type=std_logic lab=q[1]}
C {devices/lab_pin.sym} 340 480 0 0 {name=l27 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 340 520 0 0 {name=l28 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -60 460 0 0 {name=l29 sig_type=std_logic lab=q[0]}
C {sky130_stdcells/xor2_1.sym} 180 500 0 0 {name=x10 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2b_1.sym} -320 660 2 1 {name=x8 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -790 -640 0 0 {name=l31 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -110 -20 0 0 {name=l7 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -340 340 0 0 {name=l9 sig_type=std_logic lab=vccd1}
C {T_flip_flop/asyn_rst_t_ff_vccd.sym} 0 0 0 0 {name=X2}
C {devices/lab_pin.sym} -70 -60 0 0 {name=l32 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -110 0 0 0 {name=l33 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 110 -20 2 0 {name=l34 sig_type=std_logic lab=unused}
C {devices/lab_pin.sym} 0 60 3 0 {name=l35 sig_type=std_logic lab=clk_ext}
C {devices/gnd.sym} -70 60 0 0 {name=l3 lab=GND}
C {sky130_stdcells/and2_0.sym} 0 320 0 0 {name=x11 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_0.sym} 0 480 0 0 {name=x12 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 120 520 0 0 {name=l4 sig_type=std_logic lab=q[1]}
C {devices/lab_pin.sym} 520 320 2 0 {name=l5 sig_type=std_logic lab=q[0]}
C {devices/lab_pin.sym} 110 20 2 0 {name=l6 sig_type=std_logic lab=q_-1}
C {sky130_stdcells/dfrtp_1.sym} 430 340 0 0 {name=x5 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 430 500 0 0 {name=x7 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 520 640 2 0 {name=l15 sig_type=std_logic lab=q[2]}
C {devices/lab_pin.sym} 340 640 0 0 {name=l20 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 340 680 0 0 {name=l22 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -60 620 0 0 {name=l23 sig_type=std_logic lab=q[1]}
C {sky130_stdcells/xor2_1.sym} 180 660 0 0 {name=x1 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_0.sym} 0 640 0 0 {name=x9 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 120 680 0 0 {name=l30 sig_type=std_logic lab=q[2]}
C {sky130_stdcells/dfrtp_1.sym} 430 660 0 0 {name=x13 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -380 800 0 0 {name=l43 sig_type=std_logic lab=no_ones_below[1]}
C {devices/lab_pin.sym} 520 800 2 0 {name=l53 sig_type=std_logic lab=q[3]}
C {devices/lab_pin.sym} 340 800 0 0 {name=l54 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 340 840 0 0 {name=l55 sig_type=std_logic lab=rstb}
C {sky130_stdcells/xor2_1.sym} 180 820 0 0 {name=x15 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_0.sym} 0 800 0 0 {name=x16 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 430 820 0 0 {name=x17 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -380 960 0 0 {name=l60 sig_type=std_logic lab=no_ones_below[2]}
C {devices/lab_pin.sym} 520 960 2 0 {name=l61 sig_type=std_logic lab=q[4]}
C {devices/lab_pin.sym} 340 960 0 0 {name=l62 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 340 1000 0 0 {name=l63 sig_type=std_logic lab=rstb}
C {sky130_stdcells/xor2_1.sym} 180 980 0 0 {name=x19 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_0.sym} 0 960 0 0 {name=x20 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 430 980 0 0 {name=x21 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -380 1120 0 0 {name=l68 sig_type=std_logic lab=no_ones_below[3]}
C {devices/lab_pin.sym} 520 1120 2 0 {name=l69 sig_type=std_logic lab=q[5]}
C {devices/lab_pin.sym} 340 1120 0 0 {name=l70 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 340 1160 0 0 {name=l71 sig_type=std_logic lab=rstb}
C {sky130_stdcells/xor2_1.sym} 180 1140 0 0 {name=x23 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_0.sym} 0 1120 0 0 {name=x24 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 120 1160 0 0 {name=l73 sig_type=std_logic lab=q[5]}
C {sky130_stdcells/dfrtp_1.sym} 430 1140 0 0 {name=x25 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -380 840 0 0 {name=l42 sig_type=std_logic lab=q[1]}
C {devices/lab_pin.sym} -380 1000 0 0 {name=l59 sig_type=std_logic lab=q[2]}
C {devices/lab_pin.sym} -380 1160 0 0 {name=l67 sig_type=std_logic lab=q[3]}
C {devices/lab_pin.sym} -60 780 0 0 {name=l56 sig_type=std_logic lab=q[2]}
C {devices/lab_pin.sym} -60 940 0 0 {name=l64 sig_type=std_logic lab=q[3]}
C {devices/lab_pin.sym} -60 1100 0 0 {name=l72 sig_type=std_logic lab=q[4]}
C {devices/lab_pin.sym} 120 840 0 0 {name=l57 sig_type=std_logic lab=q[3]}
C {devices/lab_pin.sym} 120 1000 0 0 {name=l65 sig_type=std_logic lab=q[4]}
C {devices/lab_pin.sym} -260 820 2 0 {name=l13 sig_type=std_logic lab=no_ones_below[2]}
C {devices/lab_pin.sym} -260 980 2 0 {name=l58 sig_type=std_logic lab=no_ones_below[3]}
C {devices/lab_pin.sym} -260 1140 2 0 {name=l66 sig_type=std_logic lab=no_ones_below[4]}
C {sky130_stdcells/and2b_1.sym} -320 820 2 1 {name=x14 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2b_1.sym} -320 980 2 1 {name=x18 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2b_1.sym} -320 1140 2 1 {name=x22 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_0.sym} -180 1420 0 0 {name=x26 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -240 1400 0 0 {name=l74 sig_type=std_logic lab=q[6]}
C {devices/lab_pin.sym} -240 1440 0 0 {name=l75 sig_type=std_logic lab=q[5]}
C {sky130_stdcells/and2_0.sym} 0 1280 0 0 {name=x27 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/xor2_1.sym} 180 1300 0 0 {name=x28 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 120 1320 0 0 {name=l77 sig_type=std_logic lab=q[6]}
C {devices/lab_pin.sym} -60 1260 0 0 {name=l78 sig_type=std_logic lab=q_msb}
C {sky130_stdcells/dfrtp_1.sym} 430 1300 0 0 {name=x29 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 520 1280 2 0 {name=l79 sig_type=std_logic lab=q[6]}
C {devices/lab_pin.sym} -120 1420 2 0 {name=l80 sig_type=std_logic lab=q_msb}
C {devices/lab_pin.sym} 340 1280 0 0 {name=l81 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 340 1320 0 0 {name=l82 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -380 1280 0 0 {name=l83 sig_type=std_logic lab=no_ones_below[4]}
C {devices/lab_pin.sym} -380 1320 0 0 {name=l84 sig_type=std_logic lab=q[4]}
C {devices/lab_pin.sym} -260 1300 2 0 {name=l85 sig_type=std_logic lab=no_ones_below[5]}
C {sky130_stdcells/and2b_1.sym} -320 1300 2 1 {name=x30 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
