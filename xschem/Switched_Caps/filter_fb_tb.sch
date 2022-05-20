v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 170 0 200 0 {
lab=outp}
N 170 260 200 260 {
lab=outm}
N -420 240 -400 240 {
lab=thresh1}
N -420 260 -400 260 {
lab=thresh2}
N -560 -60 -560 -40 {
lab=vdda1}
N -560 320 -560 340 {
lab=GND}
N -420 0 -400 0 {
lab=inp}
N -420 20 -400 20 {
lab=inm}
N -440 320 -440 340 {
lab=GND}
N -440 -60 -440 -40 {
lab=vccd1}
N -420 60 -400 60 {
lab=clk}
N -420 80 -400 80 {
lab=rstb}
N -420 180 -400 180 {
lab=cclk}
N -420 200 -400 200 {
lab=cclkb}
N -420 100 -400 100 {
lab=phi1}
N -420 120 -400 120 {
lab=phi1b}
N -420 140 -400 140 {
lab=phi2}
N -420 160 -400 160 {
lab=phi2b}
N -420 220 -400 220 {
lab=clkdiv2}
N -220 -120 -190 -120 {
lab=fbp}
N -190 -120 -190 -100 {
lab=fbp}
N -190 -40 -190 -20 {
lab=#net1}
N -190 -20 -150 -20 {
lab=#net1}
N -210 420 -180 420 {
lab=fbm}
N -180 400 -180 420 {
lab=fbm}
N -230 340 -180 340 {
lab=#net2}
N -230 240 -230 340 {
lab=#net2}
N -230 240 -150 240 {
lab=#net2}
C {devices/lab_pin.sym} 0 -50 1 0 {name=l1 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 40 -50 3 1 {name=l2 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 0 80 3 0 {name=l3 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 40 80 1 1 {name=l4 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} -150 0 0 0 {name=l5 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 200 0 0 1 {name=l6 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} -40 -50 1 0 {name=l7 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} -40 80 3 0 {name=l8 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} -150 20 0 0 {name=l18 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -150 40 0 0 {name=l19 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} 0 210 1 0 {name=l26 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 40 210 3 1 {name=l27 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 0 340 3 0 {name=l28 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 40 340 1 1 {name=l29 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} -150 260 0 0 {name=l30 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 200 260 0 1 {name=l31 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} -40 210 1 0 {name=l32 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} -40 340 3 0 {name=l33 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} -150 300 0 0 {name=l34 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -150 280 0 0 {name=l35 sig_type=std_logic lab=thresh2}
C {devices/netlist.sym} -500 -810 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/share/pdk/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.options abstol=1e-14 reltol=1e-4
.param fmax=\{256*10k\}
.param Tmin=\{1/fmax\}
.csparam tstep=\{1/fmax/20\}
.csparam tend=\{5*Tmin\}
.control
  tran $&tstep $&tend
  *let vin=v(inp)-v(inm)
  *let vout=v(outp)-v(outm)

  plot inp outp phi1/10+0.6
  plot inm outm phi1/10+0.6
  plot i(V1) i(V2)
  *set gnuplot_terminal=png/quit
  *gnuplot filter_t vin vout
  *+ title 'Time domain filter output' 
  *+ xlabel 'time' ylabel 'V'

  *linearize vin vout
  *fft vin vout
  *plot xlog xlimit 1 10e3 ylimit -100 0 vdb(vin) vdb(vout)
  *wrdata fft vdb(vin) vdb(vout)

  *gnuplot filter_f xlog xlimit 1 10e3 ylimit -100 0 vdb(vin) vdb(vout)
  *+ title 'Freq domain filter input/output' 
  *+ xlabel 'Frequency (Hz)' ylabel 'dB'
.endc
"}
C {devices/lab_pin.sym} -560 -60 2 0 {name=l36 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -400 240 2 0 {name=l37 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -400 260 2 0 {name=l38 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -400 0 2 0 {name=l39 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -400 20 2 0 {name=l40 sig_type=std_logic lab=inm}
C {devices/gnd.sym} -560 340 0 0 {name=l41 lab=GND}
C {devices/gnd.sym} -440 340 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} -440 -60 2 0 {name=l43 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -400 60 2 0 {name=l44 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -400 80 2 0 {name=l45 sig_type=std_logic lab=rstb}
C {risc_signals.sym} -500 140 0 0 {name=x1
+ p_vdda1=1.2
+ p_vccd1=1.2
+ p_fclk=\{256*10k\}
+ p_duty_cycle=0.5
+ p_rstb_delay=\{1.5/p_fclk\}
+ p_rstb_tr=5n
+ p_thresh1=0.6
+ p_thresh2=0.6
+ p_vpb=0
+ p_vnb=1.2
+ p_vcm=0.6
+ p_amp1=100m
+ p_f1=0
+ p_amp2=100m
+ p_f2=500
+ p_amp3=100m
+ p_f3=10k}
C {devices/lab_pin.sym} -400 100 2 0 {name=l46 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -400 120 2 0 {name=l47 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} -400 140 2 0 {name=l48 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} -400 160 2 0 {name=l49 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} -400 180 2 0 {name=l50 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} -400 200 2 0 {name=l51 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} -400 220 2 0 {name=l52 sig_type=std_logic lab=clkdiv2}
C {devices/lab_pin.sym} -140 -50 1 0 {name=l9 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -140 210 1 0 {name=l13 sig_type=std_logic lab=vdda1}
C {devices/gnd.sym} -140 80 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} -140 340 0 0 {name=l11 lab=GND}
C {Switched_Caps/filter.sym} -160 90 0 0 {name=X1 WC1=20 LC1=30 WC1B=15 LC1B=20 WC2=30 LC2=25 WC3=25 LC3=30 WCS1=5 LCS1=4 WCS2=5 LCS2=2 WCS3=2.5 LCS3=2}
C {Switched_Caps/filter.sym} -160 350 0 0 {name=X2 WC1=20 LC1=30 WC1B=15 LC1B=20 WC2=30 LC2=25 WC3=25 LC3=30 WCS1=5 LCS1=4 WCS2=5 LCS2=2 WCS3=2.5 LCS3=2}
C {Switched_Caps/1switchcap.sym} -290 -120 0 0 {name=X3 Wcap1=0.42 Lcap1=0.15}
C {devices/lab_pin.sym} -310 -180 1 0 {name=l16 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -270 -180 3 1 {name=l17 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} -310 -40 3 0 {name=l20 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} -270 -40 1 1 {name=l21 sig_type=std_logic lab=phi2b}
C {devices/gnd.sym} -360 -120 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} -180 420 2 0 {name=l23 sig_type=std_logic lab=fbm}
C {devices/lab_pin.sym} -300 360 1 0 {name=l24 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} -260 360 3 1 {name=l25 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} -300 500 3 0 {name=l53 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} -260 500 1 1 {name=l54 sig_type=std_logic lab=phi2b}
C {Switched_Caps/1switchcap.sym} -280 420 0 0 {name=X4 Wcap1=0.42 Lcap1=0.15}
C {devices/gnd.sym} -350 420 0 0 {name=l55 lab=GND}
C {devices/lab_pin.sym} -350 -180 1 0 {name=l56 sig_type=std_logic lab=vdda1}
C {devices/gnd.sym} -350 -40 0 0 {name=l57 lab=GND}
C {devices/lab_pin.sym} -340 360 1 0 {name=l58 sig_type=std_logic lab=vdda1}
C {devices/gnd.sym} -340 500 0 0 {name=l59 lab=GND}
C {devices/vsource.sym} -190 -70 0 0 {name=V1 value=0}
C {devices/lab_pin.sym} -190 -120 2 0 {name=l12 sig_type=std_logic lab=fbp}
C {devices/vsource.sym} -180 370 2 0 {name=V2 value=0}
