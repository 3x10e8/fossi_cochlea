v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {can't use vssa itself, spice needs a gnd node (0) defined} -780 240 0 0 0.4 0.4 {}
N -470 30 -450 30 {
lab=thresh1}
N -470 50 -450 50 {
lab=thresh2}
N -610 -190 -610 -170 {
lab=vccd1}
N -610 190 -610 210 {
lab=GND}
N -470 -130 -450 -130 {
lab=inp}
N -470 -110 -450 -110 {
lab=inm}
N -490 190 -490 210 {
lab=GND}
N -490 -190 -490 -170 {
lab=vdda1}
N -650 -110 -630 -110 {
lab=clk_ext}
N -650 -130 -630 -130 {
lab=rstb}
N -470 -30 -450 -30 {
lab=vpb}
N -470 -10 -450 -10 {
lab=vnb}
N -610 210 -490 210 {
lab=GND}
N -550 190 -550 210 {
lab=GND}
N -630 170 -630 210 {
lab=GND}
N -630 210 -610 210 {
lab=GND}
N -470 170 -470 210 {
lab=GND}
N -490 210 -470 210 {
lab=GND}
N -160 -180 -150 -180 {}
N -160 -160 -150 -160 {}
N -160 -140 -150 -140 {}
N -160 -120 -150 -120 {}
N -160 -100 -150 -100 {}
N -160 -80 -150 -80 {}
N -160 -60 -150 -60 {}
N -160 -40 -150 -40 {}
N -240 -20 -150 -20 {}
N -260 -40 -240 -20 {}
C {top/user_analog_project_wrapper.sym} 0 0 0 0 {name=x1}
C {devices/netlist.sym} -430 -590 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/lib/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.include /usr/local/share/pdk/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.options abstol=1e-14 reltol=1e-4
.param fmax=\{256*10k\}
.param Tmin=\{1/fmax\}
.csparam tstep=\{1/fmax/20\}
.csparam tend=\{10*Tmin\}
.csparam n=0
.control
  tran $&tstep $&tend
  plot rstb/2 clk_ext/2 \\"div2out\\"/2+2 \\"cclk\\"/2+3
.endc
"}
C {devices/lab_pin.sym} -490 -190 2 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -450 30 2 0 {name=l2 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -450 50 2 0 {name=l3 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -450 -130 2 0 {name=l5 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -450 -110 2 0 {name=l6 sig_type=std_logic lab=inm}
C {devices/gnd.sym} -550 210 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -610 -190 0 0 {name=l10 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -650 -110 0 0 {name=l11 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -650 -130 0 0 {name=l12 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -450 -30 2 0 {name=l7 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -450 -10 2 0 {name=l8 sig_type=std_logic lab=vnb}
C {test_bench/pad_frame.sym} -550 10 0 0 {name=x3
+ p_vdda1=1.2
+ p_vccd1=1.2
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
C {devices/lab_pin.sym} -630 -150 0 0 {name=l18 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} -470 -150 2 0 {name=l19 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -630 130 0 0 {name=l20 sig_type=std_logic lab=vccd_mgmt}
C {devices/lab_pin.sym} 150 -180 2 0 {name=l4 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 150 -160 2 0 {name=l13 sig_type=std_logic lab=vdda2}
