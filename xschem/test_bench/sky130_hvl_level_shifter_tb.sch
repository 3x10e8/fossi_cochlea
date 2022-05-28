v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {can't use vssa itself, 
spice needs a gnd node (0) defined} -230 230 0 0 0.4 0.4 {}
N 80 100 100 100 {
lab=thresh1}
N 80 120 100 120 {
lab=thresh2}
N -60 -200 -60 -180 {
lab=vccd1}
N -60 180 -60 200 {
lab=GND}
N 80 -140 100 -140 {
lab=inp}
N 80 -120 100 -120 {
lab=inm}
N 60 180 60 200 {
lab=GND}
N 60 -200 60 -180 {
lab=vdda1}
N 80 -80 100 -80 {
lab=clk_ext}
N 80 -60 100 -60 {
lab=rstb}
N 80 60 100 60 {
lab=cclkb}
N 80 -40 100 -40 {
lab=phi1}
N 80 -20 100 -20 {
lab=phi1b}
N 80 0 100 0 {
lab=phi2}
N 80 20 100 20 {
lab=phi2b}
N 80 80 100 80 {
lab=div2out}
N -60 200 60 200 {
lab=GND}
N 350 40 350 90 {
lab=cclk_dig[0]}
N 370 90 390 90 {
lab=#net1}
N 450 60 470 60 {
lab=vccd1}
N 80 40 100 40 {
lab=cclk_dig[1:0]}
N 350 40 470 40 {
lab=cclk_dig[0]}
C {devices/netlist.sym} -360 -480 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /usr/local/share/pdk/sky130B/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.include /local_disk/sky/pdk/sky130A/libs.ref/sky130_fd_sc_ls/spice/sky130_fd_sc_ls.spice
.options abstol=1e-14 reltol=1e-4
.param VDDA1=1.2
.param VCCD1=0.8
.param fmax=\{256*10k\}
.param Tmin=\{1/fmax\}
.csparam tstep=\{1/fmax/20\}
.csparam tend=\{10*Tmin\}
.control
  tran $&tstep $&tend
  plot rstb/2+3 clk_ext/2+3 \\"cclk_dig[0]\\" cclk_ana
.endc
"}
C {devices/lab_pin.sym} 60 -200 2 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 100 100 2 0 {name=l2 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 100 120 2 0 {name=l3 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} 100 -140 2 0 {name=l5 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 100 -120 2 0 {name=l6 sig_type=std_logic lab=inm}
C {devices/gnd.sym} 0 200 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -60 -200 0 0 {name=l10 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 100 -80 2 0 {name=l11 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 100 -60 2 0 {name=l12 sig_type=std_logic lab=rstb}
C {risc_signals.sym} 0 0 0 0 {name=x1
+ p_vdda1=\{VDDA1\}
+ p_vccd1=\{VCCD1\}
+ p_fclk=\{256*10k\}
+ p_duty_cycle=0.5
+ p_rstb_delay=\{1.5/p_fclk\}
+ p_rstb_tr=5n
+ p_thresh1=0.7
+ p_thresh2=0.65
+ p_vpb=0
+ p_vnb=1.2
+ p_vcm=0.6
+ p_amp1=100m
+ p_f1=\{256*10k\}
+ p_amp2=0
+ p_f2=0
+ p_amp3=0
+ p_f3=0}
C {devices/lab_pin.sym} 100 -40 2 0 {name=l7 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 100 -20 2 0 {name=l8 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 100 0 2 0 {name=l13 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 100 20 2 0 {name=l14 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 350 40 0 0 {name=l15 sig_type=std_logic lab=cclk_dig[0]}
C {devices/lab_pin.sym} 100 60 2 0 {name=l16 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 100 80 2 0 {name=l17 sig_type=std_logic lab=div2out}
C {xschem_verilog_import/sky130_fd_sc_hvl__lsbuflv2hv_1.sym} 360 240 3 0 {name=x2 LVPWR=vccd1 VGND=GND VNB=GND VPB=vdda1 VPWR=vdda1 prefix=sky130_fd_pr__ }
C {devices/lab_pin.sym} 650 40 2 0 {name=l4 sig_type=std_logic lab=cclk_ana}
C {sky130_stdcells/lpflow_lsbuf_lh_hl_isowell_tap_1.sym} 560 50 0 0 {name=x3 VGND=GND VPB=vdda1 VPWR=vdda1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 450 60 0 0 {name=l18 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 100 40 2 0 {name=l20 sig_type=std_logic lab=cclk_dig[1:0]}
