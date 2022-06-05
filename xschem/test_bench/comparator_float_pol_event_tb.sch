v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {comparator is clocked on phi1} 80 -140 0 0 0.4 0.4 {}
T {comparator can error at 0.8V supply} 100 80 0 0 0.4 0.4 {}
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
N -160 -120 0 -120 { lab=#net1}
N -160 100 0 100 { lab=#net2}
N 0 -120 0 -40 { lab=#net1}
N 0 0 0 100 { lab=#net2}
C {devices/netlist.sym} -450 -480 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.options abstol=1e-14 reltol=1e-4

.control
  tran 10n 40u
  plot high \\"phi1b[0]\\" comp_out+1 \\"cclk[0]\\"+2
  plot net1-net2 \\"phi1_dig[0]\\"/4 high+1 \\"phi1b_dig[0]\\"/2+1 comp_out+2 \\"cclk[0]\\"/2+2 x2.pol/2+3 event+3 polxevent+4
  plot \\"cclk_ana[0]\\" outp+1.2 outm+1.2
.endc
.save all
"}
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
C {devices/lab_pin.sym} -170 280 0 0 {name=l7 sig_type=std_logic lab=phi1[0]}
C {devices/lab_pin.sym} 0 280 2 0 {name=l38 sig_type=std_logic lab=phi1_dig[0]}
C {level_shifter/level_down_shifter.sym} -90 290 0 0 {name=x10}
C {devices/lab_pin.sym} -30 250 2 0 {name=l19 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -140 250 0 0 {name=l20 sig_type=std_logic lab=vdda1}
C {devices/gnd.sym} -90 330 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} -520 -180 2 0 {name=l23 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -680 -180 0 0 {name=l39 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 0 380 2 0 {name=l40 sig_type=std_logic lab=phi1b_dig[0]}
C {devices/lab_pin.sym} -170 380 0 0 {name=l43 sig_type=std_logic lab=phi1b[0]}
C {level_shifter/level_down_shifter.sym} -90 390 0 0 {name=x4}
C {devices/lab_pin.sym} -30 350 2 0 {name=l44 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -140 350 0 0 {name=l45 sig_type=std_logic lab=vdda1}
C {devices/gnd.sym} -90 430 0 0 {name=l46 lab=GND}
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
+ p_thresh1=0.725
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
C {devices/vsource.sym} -160 -90 0 0 {name=V1 value="DC 0.6 TRNOISE(10u 10n 0 0)"}
C {devices/gnd.sym} -160 -60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -160 130 0 0 {name=V2 value="DC 0.6 TRNOISE(10u 10n 0 0)"}
C {devices/gnd.sym} -160 160 0 0 {name=l4 lab=GND}
