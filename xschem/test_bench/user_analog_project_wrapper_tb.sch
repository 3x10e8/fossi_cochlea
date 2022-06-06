v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {can't use vssa itself, spice needs a gnd node (0) defined} -780 240 0 0 0.4 0.4 {}
T {1.8V for level shifter} 240 -90 0 0 0.4 0.4 {}
T {1.2V for digital} 240 -110 0 0 0.4 0.4 {}
T {1.2V for analog} 230 -200 0 0 0.4 0.4 {}
T {1.2V for mux} 230 -170 0 0 0.4 0.4 {}
T {mprj_io[25]} -580 -140 0 0 0.2 0.2 {}
T {mprj_io[26]} -580 -120 0 0 0.2 0.2 {}
N -630 30 -610 30 {
lab=thresh1}
N -630 50 -610 50 {
lab=thresh2}
N -770 -190 -770 -170 {
lab=vccd1}
N -770 190 -770 210 {
lab=GND}
N -630 -130 -520 -130 {
lab=gpio_analog[7]}
N -630 -110 -520 -110 {
lab=gpio_analog[7]}
N -650 190 -650 210 {
lab=GND}
N -650 -190 -650 -170 {
lab=vdda1}
N -810 -110 -790 -110 {
lab=clk_ext}
N -810 -130 -790 -130 {
lab=rstb}
N -630 -30 -610 -30 {
lab=vpb}
N -630 -10 -610 -10 {
lab=vnb}
N -770 210 -650 210 {
lab=GND}
N -710 190 -710 210 {
lab=GND}
N -790 170 -790 210 {
lab=GND}
N -790 210 -770 210 {
lab=GND}
N -630 170 -630 210 {
lab=GND}
N -650 210 -630 210 {
lab=GND}
N -160 -180 -150 -180 {
lab=#net1}
N -160 -160 -150 -160 {
lab=#net2}
N -160 -140 -150 -140 {
lab=#net3}
N -160 -120 -150 -120 {
lab=#net4}
N -160 -100 -150 -100 {
lab=#net5}
N -160 -80 -150 -80 {
lab=#net6}
N -160 -60 -150 -60 {
lab=#net7}
N -160 -40 -150 -40 {
lab=#net8}
N -180 -20 -150 -20 {
lab=la_data_in[127:0]}
N -180 0 -150 0 {
lab=la_data_oeb[127:0]}
N -160 20 -150 20 {
lab=#net9}
N -160 40 -150 40 {
lab=#net10}
N -160 60 -150 60 {
lab=#net11}
N 150 -140 260 -140 {
lab=GND}
N 150 -120 260 -120 {
lab=GND}
N 150 -60 260 -60 {
lab=GND}
N 150 -40 260 -40 {
lab=GND}
N 260 -60 260 -40 {
lab=GND}
N 260 -140 260 -120 {
lab=GND}
N 150 -20 160 -20 {
lab=#net12}
N 150 0 160 0 {
lab=#net13}
N 150 20 180 20 {
lab=la_data_out[127:0]}
N 150 40 160 40 {
lab=#net14}
N 150 60 160 60 {
lab=#net15}
N 150 80 180 80 {
lab=gpio_analog[17:0]}
N 150 100 160 100 {
lab=#net16}
N 150 140 160 140 {
lab=#net17}
N 150 160 160 160 {
lab=#net18}
N 150 180 160 180 {
lab=#net19}
N 150 120 160 120 {
lab=#net20}
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
C {devices/lab_pin.sym} -650 -190 1 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -610 30 2 0 {name=l2 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -610 50 2 0 {name=l3 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -610 -130 1 0 {name=l5 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -610 -110 3 0 {name=l6 sig_type=std_logic lab=inm}
C {devices/gnd.sym} -710 210 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -770 -190 0 0 {name=l10 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -810 -110 0 0 {name=l11 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -810 -130 0 0 {name=l12 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -610 -30 2 0 {name=l7 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} -610 -10 2 0 {name=l8 sig_type=std_logic lab=vnb}
C {test_bench/pad_frame.sym} -710 10 0 0 {name=x3
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
C {devices/lab_pin.sym} -790 -150 0 0 {name=l18 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} -630 -150 1 0 {name=l19 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -790 130 0 0 {name=l20 sig_type=std_logic lab=vccd_mgmt}
C {devices/lab_pin.sym} 150 -180 2 0 {name=l4 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 150 -160 2 0 {name=l13 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -180 -20 0 0 {name=l14 sig_type=std_logic lab=la_data_in[127:0]}
C {devices/lab_pin.sym} -180 0 0 0 {name=l15 sig_type=std_logic lab=la_data_oeb[127:0]}
C {devices/lab_pin.sym} 150 -100 2 0 {name=l16 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 150 -80 2 0 {name=l17 sig_type=std_logic lab=vccd2}
C {devices/gnd.sym} 260 -40 0 0 {name=l21 lab=GND}
C {devices/gnd.sym} 260 -120 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 180 20 2 0 {name=l23 sig_type=std_logic lab=la_data_out[127:0]}
C {devices/lab_pin.sym} 180 80 2 0 {name=l24 sig_type=std_logic lab=gpio_analog[17:0]}
C {devices/lab_pin.sym} -520 -130 2 0 {name=l25 sig_type=std_logic lab=gpio_analog[7]}
C {devices/lab_pin.sym} -520 -110 2 0 {name=l26 sig_type=std_logic lab=gpio_analog[8]}
