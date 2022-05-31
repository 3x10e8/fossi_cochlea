v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {can't use vssa itself, spice needs a gnd node (0) defined} -230 230 0 0 0.4 0.4 {}
T {clk, rstb handoff from risc to digital} 250 -120 0 0 0.4 0.4 {}
N 80 20 100 20 {
lab=thresh1}
N 80 40 100 40 {
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
N -100 -120 -80 -120 {
lab=la_clk_ext}
N -100 -140 -80 -140 {
lab=la_rstb}
N 80 -40 100 -40 {
lab=vpb}
N 80 -20 100 -20 {
lab=vnb}
N -60 200 60 200 {
lab=GND}
N 80 160 80 200 {
lab=GND}
N 60 200 80 200 {
lab=GND}
N -80 160 -80 200 {
lab=GND}
N -80 200 -60 200 {
lab=GND}
N 0 180 0 200 {
lab=GND}
C {devices/netlist.sym} -360 -480 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.options abstol=1e-14 reltol=1e-4
.param fmax=\{300*10k\}
.param Tmin=\{1/fmax\}
.csparam tstep=\{1/fmax/20\}
.csparam tend=\{30*Tmin\}
.csparam n=0
.control
  tran $&tstep $&tend
  plot la_clk_ext vccd_stress clk_ext+1.8 vccd_stress+4 la_rstb+4 rstb+4
.endc
"}
C {devices/lab_pin.sym} 60 -200 2 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 100 20 2 0 {name=l2 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 100 40 2 0 {name=l3 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} 100 -140 2 0 {name=l5 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 100 -120 2 0 {name=l6 sig_type=std_logic lab=inm}
C {devices/gnd.sym} 0 200 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -60 -200 0 0 {name=l10 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -100 -120 0 0 {name=l11 sig_type=std_logic lab=la_clk_ext}
C {devices/lab_pin.sym} -100 -140 0 0 {name=l12 sig_type=std_logic lab=la_rstb}
C {devices/lab_pin.sym} 100 -40 2 0 {name=l7 sig_type=std_logic lab=vpb}
C {devices/lab_pin.sym} 100 -20 2 0 {name=l8 sig_type=std_logic lab=vnb}
C {devices/lab_pin.sym} 80 -160 2 0 {name=l4 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -80 -160 0 0 {name=l13 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} -80 120 0 0 {name=l14 sig_type=std_logic lab=vccd_mgmt}
C {test_bench/pad_frame.sym} 0 0 0 0 {name=x1
+ p_vdda1=1.2
+ p_vdda2=1.2
+ p_vccd1=0.8
+ p_vccd2=1.8
+ p_vccd_mgmt=1.8
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
C {level_shifter/level_down_shifter.sym} 420 -20 0 0 {name=x3}
C {devices/lab_pin.sym} 480 -60 2 0 {name=l28 sig_type=std_logic lab=vccd_stress}
C {devices/gnd.sym} 420 20 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 340 -30 0 0 {name=l21 sig_type=std_logic lab=la_clk_ext}
C {level_shifter/level_down_shifter.sym} 420 110 0 0 {name=x5}
C {devices/gnd.sym} 420 150 0 0 {name=l32 lab=GND}
C {devices/lab_pin.sym} 340 100 0 0 {name=l34 sig_type=std_logic lab=la_rstb}
C {devices/lab_pin.sym} 510 100 2 0 {name=l36 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 510 -30 2 0 {name=l39 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 370 -60 0 0 {name=l40 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 370 70 0 0 {name=l23 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 480 70 2 0 {name=l15 sig_type=std_logic lab=vccd_stress}
C {devices/gnd.sym} 420 -200 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 420 -230 0 0 {name=V1 value="PWL (0 1.8 \{10*Tmin\} 0.8 \{20*Tmin\} 0.8 \{30*Tmin\} 0)"}
C {devices/lab_pin.sym} 420 -260 2 0 {name=l17 sig_type=std_logic lab=vccd_stress}
