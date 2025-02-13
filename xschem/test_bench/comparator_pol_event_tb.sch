v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {comparator is clocked on phi1} 80 -140 0 0 0.4 0.4 {}
T {comparator can error at 0.8V supply} 100 80 0 0 0.4 0.4 {}
T {cclk is flipped} -150 100 0 0 0.4 0.4 {}
T {thresh order is same} -150 230 0 0 0.4 0.4 {}
N -520 80 -500 80 {
lab=thresh1}
N -520 100 -500 100 {
lab=thresh2}
N -660 -220 -660 -200 {
lab=vccd1}
N -660 160 -660 180 {
lab=GND}
N -520 -160 -500 -160 {
lab=inp}
N -520 -140 -500 -140 {
lab=inm}
N -540 160 -540 180 {
lab=GND}
N -540 -220 -540 -200 {
lab=vdda1}
N -700 -140 -680 -140 {
lab=clk_ext}
N -700 -160 -680 -160 {
lab=rstb}
N -700 -100 -680 -100 {
lab=cclk[1:0]}
N -520 40 -500 40 {
lab=cclkb_ana[1:0]}
N -520 -60 -500 -60 {
lab=phi1[1:0]}
N -520 -40 -500 -40 {
lab=phi1b[1:0]}
N -520 -20 -500 -20 {
lab=phi2[1:0]}
N -520 0 -500 0 {
lab=phi2b[1:0]}
N -700 -120 -680 -120 {
lab=div2out[1:0]}
N -660 180 -540 180 {
lab=GND}
N -520 20 -500 20 {
lab=cclk_ana[1:0]}
N 250 -30 540 -30 {
lab=high}
N 60 30 540 30 {
lab=phi1b_dig[0]}
N 540 10 540 30 {
lab=phi1b_dig[0]}
N -680 140 -680 180 {
lab=GND}
N -680 180 -660 180 {
lab=GND}
N -520 140 -520 180 {
lab=GND}
N -540 180 -520 180 {
lab=GND}
N -600 160 -600 180 {
lab=GND}
N -160 -260 0 -260 { lab=outp}
N -160 180 0 180 { lab=outm}
N 0 -260 0 -40 { lab=outp}
N 0 0 0 180 { lab=outm}
C {devices/netlist.sym} -460 -690 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.options abstol=1e-14 reltol=1e-4

.control
  tran 10n 60u
  plot high \\"phi1b[0]\\" comp_out+1 \\"cclk[0]\\"+2
  plot inp-inm \\"phi1_dig[0]\\"/4 high+1 \\"phi1b_dig[0]\\"/2+1 comp_out+2 \\"cclk[0]\\"/2+2 x2.pol/2+3 event+3 polxevent+4
  plot \\"cclk_ana[0]\\" outp+1.2 outm+1.2
  plot inp-inm 2*(thresh1-thresh2) high
.endc
.save all
"}
C {devices/lab_pin.sym} -300 -260 0 0 {name=l1 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -300 180 0 0 {name=l2 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 280 -30 3 1 {name=l5 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 90 -10 0 1 {name=l6 sig_type=std_logic lab=low}
C {comparator_latest/comparator_single_tail.sym} -20 40 0 0 {name=x1 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {devices/lab_pin.sym} -540 -220 2 0 {name=l17 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -500 80 2 0 {name=l18 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -500 100 2 0 {name=l22 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -500 -160 2 0 {name=l24 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -500 -140 2 0 {name=l25 sig_type=std_logic lab=inm}
C {devices/gnd.sym} -600 180 0 0 {name=l26 lab=GND}
C {devices/lab_pin.sym} -660 -220 0 0 {name=l27 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -700 -140 0 0 {name=l28 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -700 -160 0 0 {name=l29 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -500 -60 2 0 {name=l30 sig_type=std_logic lab=phi1[1:0]}
C {devices/lab_pin.sym} -500 -40 2 0 {name=l31 sig_type=std_logic lab=phi1b[1:0]}
C {devices/lab_pin.sym} -500 -20 2 0 {name=l32 sig_type=std_logic lab=phi2[1:0]}
C {devices/lab_pin.sym} -500 0 2 0 {name=l33 sig_type=std_logic lab=phi2b[1:0]}
C {devices/lab_pin.sym} -700 -100 0 0 {name=l34 sig_type=std_logic lab=cclk[1:0]}
C {devices/lab_pin.sym} -500 40 2 0 {name=l35 sig_type=std_logic lab=cclkb_ana[1:0]}
C {devices/lab_pin.sym} -700 -120 0 0 {name=l36 sig_type=std_logic lab=div2out[1:0]}
C {devices/lab_pin.sym} -500 20 2 0 {name=l37 sig_type=std_logic lab=cclk_ana[1:0]}
C {devices/lab_pin.sym} 20 -70 1 0 {name=l10 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} 20 30 0 0 {name=l11 lab=GND}
C {sky130_stdcells/buf_1.sym} 130 -30 0 0 {name=x6 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 210 -30 0 0 {name=x7 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {digital/dig_evegen.sym} 610 -10 0 0 {name=x2}
C {devices/lab_pin.sym} 610 -70 1 0 {name=l8 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} 610 50 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 680 -10 0 1 {name=l12 sig_type=std_logic lab=polxevent}
C {devices/lab_pin.sym} 680 10 0 1 {name=l13 sig_type=std_logic lab=event}
C {devices/lab_pin.sym} 680 -30 0 1 {name=l14 sig_type=std_logic lab=comp_out}
C {devices/lab_pin.sym} 60 30 3 0 {name=l16 sig_type=std_logic lab=phi1b_dig[0]}
C {devices/lab_pin.sym} 60 -70 1 0 {name=l3 sig_type=std_logic lab=phi1_dig[0]}
C {devices/lab_pin.sym} -170 440 0 0 {name=l7 sig_type=std_logic lab=phi1[0]}
C {devices/lab_pin.sym} 0 440 2 0 {name=l38 sig_type=std_logic lab=phi1_dig[0]}
C {level_shifter/level_down_shifter.sym} -90 450 0 0 {name=x10}
C {devices/lab_pin.sym} -30 410 2 0 {name=l19 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -140 410 0 0 {name=l20 sig_type=std_logic lab=vdda1}
C {devices/gnd.sym} -90 490 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} -520 -180 2 0 {name=l23 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -680 -180 0 0 {name=l39 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 0 540 2 0 {name=l40 sig_type=std_logic lab=phi1b_dig[0]}
C {devices/lab_pin.sym} -170 540 0 0 {name=l43 sig_type=std_logic lab=phi1b[0]}
C {level_shifter/level_down_shifter.sym} -90 550 0 0 {name=x4}
C {devices/lab_pin.sym} -30 510 2 0 {name=l44 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -140 510 0 0 {name=l45 sig_type=std_logic lab=vdda1}
C {devices/gnd.sym} -90 590 0 0 {name=l46 lab=GND}
C {test_bench/risc_signals.sym} -600 -20 0 0 {name=x3
+ p_vdda1=1.2
+ p_vdda2=1.2
+ p_vccd1=1.2
+ p_vccd2=1.8
+ p_vccd_mgmt=1.8
+ p_fclk=\{250*10k\}
+ p_duty_cycle=0.5
+ p_rstb_delay=\{1.5/p_fclk\}
+ p_rstb_tr=5n
+ p_thresh1=0.3
+ p_thresh2=0.1
+ p_vpb=0
+ p_vnb=1.2
+ p_vcm=0.6
+ p_amp1=0
+ p_f1=\{20k\}
+ p_amp2=0
+ p_f2=0
+ p_amp3=0
+ p_f3=0}
C {devices/lab_pin.sym} 0 -260 2 0 {name=l4 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} -250 -320 1 0 {name=l15 sig_type=std_logic lab=phi1b[0]}
C {devices/lab_pin.sym} -210 -320 1 0 {name=l41 sig_type=std_logic lab=phi2b[0]}
C {devices/lab_pin.sym} -160 -220 2 0 {name=l42 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -160 -240 2 0 {name=l47 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -250 -180 3 0 {name=l48 sig_type=std_logic lab=phi1[0]}
C {devices/lab_pin.sym} -210 -180 3 0 {name=l49 sig_type=std_logic lab=phi2[0]}
C {devices/lab_pin.sym} 0 180 2 0 {name=l51 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} -170 -180 3 0 {name=l50 sig_type=std_logic lab=cclk_ana[0]}
C {devices/lab_pin.sym} -170 -320 1 0 {name=l58 sig_type=std_logic lab=cclkb_ana[0]}
C {devices/lab_pin.sym} -250 120 1 0 {name=l52 sig_type=std_logic lab=phi1b[0]}
C {devices/lab_pin.sym} -210 120 1 0 {name=l53 sig_type=std_logic lab=phi2b[0]}
C {devices/lab_pin.sym} -250 260 3 0 {name=l54 sig_type=std_logic lab=phi1[0]}
C {devices/lab_pin.sym} -210 260 3 0 {name=l55 sig_type=std_logic lab=phi2[0]}
C {devices/lab_pin.sym} -170 120 1 0 {name=l56 sig_type=std_logic lab=cclk_ana[0]}
C {devices/lab_pin.sym} -170 260 3 0 {name=l57 sig_type=std_logic lab=cclkb_ana[0]}
C {devices/gnd.sym} -290 -180 0 0 {name=l61 lab=GND}
C {devices/gnd.sym} -290 260 0 0 {name=l62 lab=GND}
C {Switched_Caps/2switchcaps_thresh.sym} -230 -260 0 0 {name=X1 Wcap1=4 Lcap1=2.5 Wcap2=28 Lcap2=56}
C {Switched_Caps/2switchcaps_thresh.sym} -230 180 0 0 {name=X2 Wcap1=4 Lcap1=2.5 Wcap2=4 Lcap2=25}
C {devices/lab_pin.sym} -290 -320 1 0 {name=l59 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -290 120 1 0 {name=l60 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -160 220 2 0 {name=l63 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -160 200 2 0 {name=l64 sig_type=std_logic lab=thresh1}
