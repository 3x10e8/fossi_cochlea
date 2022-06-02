v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 170 0 200 0 {
lab=outp}
N 170 410 200 410 {
lab=outm}
N -360 320 -340 320 {
lab=thresh1}
N -360 340 -340 340 {
lab=thresh2}
N -500 20 -500 40 {
lab=vccd1}
N -500 400 -500 420 {
lab=GND}
N -360 80 -340 80 {
lab=inp}
N -360 100 -340 100 {
lab=inm}
N -380 400 -380 420 {
lab=GND}
N -380 20 -380 40 {
lab=vdda1}
N -540 100 -520 100 {
lab=clk_ext}
N -540 80 -520 80 {
lab=rstb}
N -540 140 -520 140 {
lab=cclk[1:0]}
N -360 280 -340 280 {
lab=cclkb_ana[1:0]}
N -360 180 -340 180 {
lab=phi1[1:0]}
N -360 200 -340 200 {
lab=phi1b[1:0]}
N -360 220 -340 220 {
lab=phi2[1:0]}
N -360 240 -340 240 {
lab=phi2b[1:0]}
N -540 120 -520 120 {
lab=div2out[1:0]}
N -500 420 -380 420 {
lab=GND}
N -360 260 -340 260 {
lab=cclk_ana[1:0]}
N -520 380 -520 420 {
lab=GND}
N -520 420 -500 420 {
lab=GND}
N -360 380 -360 420 {
lab=GND}
N -380 420 -360 420 {
lab=GND}
N -440 400 -440 420 {
lab=GND}
C {devices/lab_pin.sym} 0 -50 1 0 {name=l1 sig_type=std_logic lab=phi1[0]}
C {devices/lab_pin.sym} 40 -50 3 1 {name=l2 sig_type=std_logic lab=phi2[0]}
C {devices/lab_pin.sym} 0 80 3 0 {name=l3 sig_type=std_logic lab=phi1b[0]}
C {devices/lab_pin.sym} 40 80 1 1 {name=l4 sig_type=std_logic lab=phi2b[0]}
C {devices/lab_pin.sym} -150 0 0 0 {name=l5 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 200 0 0 1 {name=l6 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} -150 20 0 0 {name=l18 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -150 40 0 0 {name=l19 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -150 410 0 0 {name=l30 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 200 410 0 1 {name=l31 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} -150 450 0 0 {name=l34 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -150 430 0 0 {name=l35 sig_type=std_logic lab=thresh2}
C {devices/netlist.sym} -400 -590 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.options abstol=1e-14 reltol=1e-4
.param fmax=\{256*10k\}
.param Tmin=\{1/fmax\}
.csparam tstep=\{1/fmax/20\}
.csparam tend=\{50000*Tmin\}
.control
  tran $&tstep $&tend
  let vin=v(inp)-v(inm)
  let vout=v(outp)-v(outm)

  plot vin vout
  set gnuplot_terminal=png/quit
  gnuplot filter_t vin vout
  + title 'Time domain filter output' 
  + xlabel 'time' ylabel 'V'

  linearize vin vout
  fft vin vout
  plot xlog xlimit 1 10e3 ylimit -100 0 vdb(vin) vdb(vout)
  wrdata fft vdb(vin) vdb(vout)

  gnuplot filter_f xlog xlimit 1 10e3 ylimit -100 0 vdb(vin) vdb(vout)
  + title 'Freq domain filter input/output' 
  + xlabel 'Frequency (Hz)' ylabel 'dB'
.endc
"}
C {devices/lab_pin.sym} -140 -50 1 0 {name=l9 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -140 360 1 0 {name=l13 sig_type=std_logic lab=vdda1}
C {devices/gnd.sym} -140 80 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} -140 490 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -150 -20 0 0 {name=l36 sig_type=std_logic lab=fb}
C {devices/lab_pin.sym} -150 390 0 0 {name=l37 sig_type=std_logic lab=fbb}
C {devices/lab_pin.sym} -40 -50 1 0 {name=l7 sig_type=std_logic lab=cclk_ana[0]}
C {devices/lab_pin.sym} -40 80 3 0 {name=l33 sig_type=std_logic lab=cclkb_ana[0]}
C {Switched_Caps/filter.sym} -160 90 0 0 {name=X1 
+WC1=14 LC1=56
+WC2=14 LC2=56 
+WC3=14 LC3=56 
+WCS1=5 LCS1=4 
+WCS2=5 LCS2=2 
+WCS3=2.5 LCS3=2}
C {Switched_Caps/filter.sym} -160 500 0 0 {name=X2 
+WC1=14 LC1=56
+WC2=14 LC2=56 
+WC3=14 LC3=56 
+WCS1=5 LCS1=4 
+WCS2=5 LCS2=2 
+WCS3=2.5 LCS3=2}
C {devices/lab_pin.sym} -380 20 2 0 {name=l17 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} -340 320 2 0 {name=l12 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -340 340 2 0 {name=l22 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -340 80 2 0 {name=l24 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -340 100 2 0 {name=l25 sig_type=std_logic lab=inm}
C {devices/gnd.sym} -440 420 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -500 20 0 0 {name=l15 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -540 100 0 0 {name=l16 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -540 80 0 0 {name=l20 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -340 180 2 0 {name=l21 sig_type=std_logic lab=phi1[1:0]}
C {devices/lab_pin.sym} -340 200 2 0 {name=l23 sig_type=std_logic lab=phi1b[1:0]}
C {devices/lab_pin.sym} -340 220 2 0 {name=l38 sig_type=std_logic lab=phi2[1:0]}
C {devices/lab_pin.sym} -340 240 2 0 {name=l39 sig_type=std_logic lab=phi2b[1:0]}
C {devices/lab_pin.sym} -540 140 0 0 {name=l40 sig_type=std_logic lab=cclk[1:0]}
C {devices/lab_pin.sym} -340 280 2 0 {name=l41 sig_type=std_logic lab=cclkb_ana[1:0]}
C {devices/lab_pin.sym} -540 120 0 0 {name=l42 sig_type=std_logic lab=div2out[1:0]}
C {devices/lab_pin.sym} -340 260 2 0 {name=l43 sig_type=std_logic lab=cclk_ana[1:0]}
C {devices/lab_pin.sym} -360 60 2 0 {name=l44 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -520 60 0 0 {name=l45 sig_type=std_logic lab=vccd2}
C {test_bench/risc_signals.sym} -440 220 0 0 {name=x3
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
+ p_thresh2=0.5
+ p_vpb=0
+ p_vnb=1.2
+ p_vcm=0.6
+ p_amp1=100m
+ p_f1=100
+ p_amp2=100m
+ p_f2=500
+ p_amp3=100m
+ p_f3=1k}
C {devices/lab_pin.sym} 0 360 1 0 {name=l8 sig_type=std_logic lab=phi1[0]}
C {devices/lab_pin.sym} 40 360 3 1 {name=l26 sig_type=std_logic lab=phi2[0]}
C {devices/lab_pin.sym} -40 360 1 0 {name=l29 sig_type=std_logic lab=cclk_ana[0]}
C {devices/lab_pin.sym} -40 490 3 0 {name=l32 sig_type=std_logic lab=cclkb_ana[0]}
C {devices/lab_pin.sym} 0 490 3 0 {name=l27 sig_type=std_logic lab=phi1b[0]}
C {devices/lab_pin.sym} 40 490 1 1 {name=l28 sig_type=std_logic lab=phi2b[0]}
