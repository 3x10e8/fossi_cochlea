v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {comparator is clocked on phi1} 140 -110 0 0 0.4 0.4 {}
T {comparator can error at 0.8V supply} 160 110 0 0 0.4 0.4 {}
N -190 100 -170 100 {
lab=thresh1}
N -190 120 -170 120 {
lab=thresh2}
N -330 -200 -330 -180 {
lab=vccd1}
N -330 180 -330 200 {
lab=GND}
N -190 -140 -170 -140 {
lab=inp}
N -190 -120 -170 -120 {
lab=inm}
N -210 180 -210 200 {
lab=GND}
N -210 -200 -210 -180 {
lab=vdda1}
N -370 -120 -350 -120 {
lab=clk_ext}
N -370 -140 -350 -140 {
lab=rstb}
N -370 -80 -350 -80 {
lab=cclk[1:0]}
N -190 60 -170 60 {
lab=cclkb_ana[1:0]}
N -190 -40 -170 -40 {
lab=phi1[1:0]}
N -190 -20 -170 -20 {
lab=phi1b[1:0]}
N -190 0 -170 0 {
lab=phi2[1:0]}
N -190 20 -170 20 {
lab=phi2b[1:0]}
N -370 -100 -350 -100 {
lab=div2out[1:0]}
N -330 200 -210 200 {
lab=GND}
N -190 40 -170 40 {
lab=cclk_ana[1:0]}
N 310 0 600 0 {
lab=high}
N 120 60 600 60 {
lab=phi1b_dig[0]}
N 600 40 600 60 {
lab=phi1b_dig[0]}
N -350 160 -350 200 {
lab=GND}
N -350 200 -330 200 {
lab=GND}
N -190 160 -190 200 {
lab=GND}
N -210 200 -190 200 {
lab=GND}
N -270 180 -270 200 {
lab=GND}
C {devices/netlist.sym} -100 -330 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.options abstol=1e-14 reltol=1e-4

.control
  tran 10n 40u
  plot high \\"phi1b[0]\\" comp_out+1 \\"cclk[0]\\"+2
  plot inp-inm \\"phi1_dig[0]\\"/4 high+1 \\"phi1b_dig[0]\\"/2+1 comp_out+2 \\"cclk[0]\\"/2+2 x2.pol/2+3 event+3 polxevent+4
.endc
.save all
"}
C {devices/lab_pin.sym} 60 -10 0 0 {name=l1 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 60 30 0 0 {name=l2 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 340 0 3 1 {name=l5 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 150 20 0 1 {name=l6 sig_type=std_logic lab=low}
C {comparator_latest/comparator_single_tail.sym} 40 70 0 0 {name=x1 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {devices/lab_pin.sym} -210 -200 2 0 {name=l17 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -170 100 2 0 {name=l18 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -170 120 2 0 {name=l22 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -170 -140 2 0 {name=l24 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -170 -120 2 0 {name=l25 sig_type=std_logic lab=inm}
C {devices/gnd.sym} -270 200 0 0 {name=l26 lab=GND}
C {devices/lab_pin.sym} -330 -200 0 0 {name=l27 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -370 -120 0 0 {name=l28 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -370 -140 0 0 {name=l29 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -170 -40 2 0 {name=l30 sig_type=std_logic lab=phi1[1:0]}
C {devices/lab_pin.sym} -170 -20 2 0 {name=l31 sig_type=std_logic lab=phi1b[1:0]}
C {devices/lab_pin.sym} -170 0 2 0 {name=l32 sig_type=std_logic lab=phi2[1:0]}
C {devices/lab_pin.sym} -170 20 2 0 {name=l33 sig_type=std_logic lab=phi2b[1:0]}
C {devices/lab_pin.sym} -370 -80 0 0 {name=l34 sig_type=std_logic lab=cclk[1:0]}
C {devices/lab_pin.sym} -170 60 2 0 {name=l35 sig_type=std_logic lab=cclkb_ana[1:0]}
C {devices/lab_pin.sym} -370 -100 0 0 {name=l36 sig_type=std_logic lab=div2out[1:0]}
C {devices/lab_pin.sym} -170 40 2 0 {name=l37 sig_type=std_logic lab=cclk_ana[1:0]}
C {devices/lab_pin.sym} 80 -40 0 0 {name=l10 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} 80 60 0 0 {name=l11 lab=GND}
C {sky130_stdcells/buf_1.sym} 190 0 0 0 {name=x6 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 270 0 0 0 {name=x7 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {digital/dig_evegen.sym} 670 20 0 0 {name=x2}
C {devices/lab_pin.sym} 670 -40 0 0 {name=l8 sig_type=std_logic lab=vccd1}
C {devices/gnd.sym} 670 80 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 740 20 0 1 {name=l12 sig_type=std_logic lab=polxevent}
C {devices/lab_pin.sym} 740 40 0 1 {name=l13 sig_type=std_logic lab=event}
C {devices/lab_pin.sym} 740 0 0 1 {name=l14 sig_type=std_logic lab=comp_out}
C {devices/lab_pin.sym} 120 60 3 0 {name=l16 sig_type=std_logic lab=phi1b_dig[0]}
C {devices/lab_pin.sym} 120 -40 1 0 {name=l3 sig_type=std_logic lab=phi1_dig[0]}
C {devices/lab_pin.sym} 60 260 0 0 {name=l7 sig_type=std_logic lab=phi1[0]}
C {devices/lab_pin.sym} 230 260 2 0 {name=l38 sig_type=std_logic lab=phi1_dig[0]}
C {level_shifter/level_down_shifter.sym} 140 270 0 0 {name=x10}
C {devices/lab_pin.sym} 200 230 2 0 {name=l19 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 90 230 0 0 {name=l20 sig_type=std_logic lab=vdda1}
C {devices/gnd.sym} 140 310 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} -190 -160 2 0 {name=l23 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -350 -160 0 0 {name=l39 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 230 360 2 0 {name=l40 sig_type=std_logic lab=phi1b_dig[0]}
C {devices/lab_pin.sym} 60 360 0 0 {name=l43 sig_type=std_logic lab=phi1b[0]}
C {level_shifter/level_down_shifter.sym} 140 370 0 0 {name=x4}
C {devices/lab_pin.sym} 200 330 2 0 {name=l44 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 90 330 0 0 {name=l45 sig_type=std_logic lab=vdda1}
C {devices/gnd.sym} 140 410 0 0 {name=l46 lab=GND}
C {test_bench/risc_signals.sym} -270 0 0 0 {name=x3
+ p_vdda1=1.2
+ p_vdda2=1.2
+ p_vccd1=0.9
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
+ p_f1=\{20k\}
+ p_amp2=0
+ p_f2=0
+ p_amp3=0
+ p_f3=0}
