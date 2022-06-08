v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 310 -230 330 -230 {
lab=thresh1}
N 310 -210 330 -210 {
lab=thresh2}
N 170 -530 170 -510 {
lab=vccd1}
N 170 -150 170 -130 {
lab=GND}
N 310 -470 330 -470 {
lab=inp}
N 310 -450 330 -450 {
lab=inm}
N 290 -150 290 -130 {
lab=GND}
N 290 -530 290 -510 {
lab=vdda1}
N 130 -450 150 -450 {
lab=clk_ext}
N 130 -470 150 -470 {
lab=rstb}
N 130 -410 150 -410 {
lab=cclk[1:0]}
N 310 -270 330 -270 {
lab=cclkb_ana[1:0]}
N 310 -370 330 -370 {
lab=phi1[1:0]}
N 310 -350 330 -350 {
lab=phi1b[1:0]}
N 310 -330 330 -330 {
lab=phi2[1:0]}
N 310 -310 330 -310 {
lab=phi2b[1:0]}
N 130 -430 150 -430 {
lab=div2out[1:0]}
N 170 -130 290 -130 {
lab=GND}
N 310 -290 330 -290 {
lab=cclk_ana[1:0]}
N 150 -170 150 -130 {
lab=GND}
N 150 -130 170 -130 {
lab=GND}
N 310 -170 310 -130 {
lab=GND}
N 290 -130 310 -130 {
lab=GND}
N 230 -150 230 -130 {
lab=GND}
C {devices/netlist.sym} 20 -830 0 0 {name=SPICE2 only_toplevel=false value="
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
C {devices/lab_pin.sym} 290 -530 2 0 {name=l54 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 330 -230 2 0 {name=l55 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 330 -210 2 0 {name=l56 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} 330 -470 2 0 {name=l59 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 330 -450 2 0 {name=l61 sig_type=std_logic lab=inm}
C {devices/gnd.sym} 230 -130 0 0 {name=l62 lab=GND}
C {devices/lab_pin.sym} 170 -530 0 0 {name=l63 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 130 -450 0 0 {name=l64 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 130 -470 0 0 {name=l65 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 330 -370 2 0 {name=l66 sig_type=std_logic lab=phi1[1:0]}
C {devices/lab_pin.sym} 330 -350 2 0 {name=l67 sig_type=std_logic lab=phi1b[1:0]}
C {devices/lab_pin.sym} 330 -330 2 0 {name=l68 sig_type=std_logic lab=phi2[1:0]}
C {devices/lab_pin.sym} 330 -310 2 0 {name=l69 sig_type=std_logic lab=phi2b[1:0]}
C {devices/lab_pin.sym} 130 -410 0 0 {name=l70 sig_type=std_logic lab=cclk[1:0]}
C {devices/lab_pin.sym} 330 -270 2 0 {name=l71 sig_type=std_logic lab=cclkb_ana[1:0]}
C {devices/lab_pin.sym} 130 -430 0 0 {name=l72 sig_type=std_logic lab=div2out[1:0]}
C {devices/lab_pin.sym} 330 -290 2 0 {name=l73 sig_type=std_logic lab=cclk_ana[1:0]}
C {devices/lab_pin.sym} 310 -490 2 0 {name=l74 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} 150 -490 0 0 {name=l75 sig_type=std_logic lab=vccd2}
C {test_bench/risc_signals.sym} 230 -330 0 0 {name=x4
+ p_vdda1=1.2
+ p_vdda2=1.2
+ p_vccd1=0.8
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
