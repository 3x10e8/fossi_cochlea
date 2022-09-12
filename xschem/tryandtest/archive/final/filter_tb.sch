v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 30 -480 80 -480 {
lab=rstb}
N 30 -440 30 -360 {
lab=fclk}
N 30 -360 80 -360 {
lab=fclk}
N -360 -440 -360 -300 {
lab=clk_ext}
N -360 -440 -240 -440 {
lab=clk_ext}
N -400 -480 -400 -220 {
lab=rst_ext}
N -400 -480 -240 -480 {
lab=rst_ext}
N -320 -400 -240 -400 {
lab=VDD}
N 60 -380 80 -380 {
lab=VDD}
N 60 -400 60 -380 {
lab=VDD}
N 170 0 200 0 {
lab=outp}
N 180 -360 220 -360 {
lab=#net1}
N -560 180 -380 180 {
lab=#net2}
N 170 260 200 260 {
lab=outm}
C {devices/netlist.sym} 250 -280 0 0 {name=SPICE2 only_toplevel=false value="
*.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.lib /home/sky/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param VDD=1.2 VCM=0.6
.param thresh1=0.6 thresh2=1.0
.param vamp=100m f1=10k f2=15k f3=20k
.param fclk=\{256*f1\}
.param tend=\{100/fclk\}
.tran 1n \{tend\}
*.save all
"}
C {devices/lab_pin.sym} -560 0 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/vsource.sym} -520 -290 0 0 {name=VDD1 value="DC \{VDD\}"}
C {devices/gnd.sym} -520 -260 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} -520 -320 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} -360 -270 0 0 {name=Vfclk value=PULSE(0,\{VDD\},0,1n,1n,\{1/2/fclk\},\{1/fclk\})}
C {devices/gnd.sym} -360 -240 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 180 -480 2 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} -400 -190 0 0 {name=Vrst value=PULSE(0,\{VDD\},0,1n,1n,\{2.25/fclk\},\{tend\},0)}
C {devices/gnd.sym} -400 -160 0 0 {name=l115 lab=GND}
C {devices/lab_pin.sym} 180 -440 2 0 {name=l116 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 180 -460 2 0 {name=l118 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 180 -420 2 0 {name=l120 sig_type=std_logic lab=phi2b}
C {devices/vsource.sym} -560 90 0 0 {name=Vinp2 value="DC 0 SIN(0 \{vamp\} \{f2\})"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} -560 30 0 0 {name=Vinp1 value="DC 0 SIN(0 \{vamp\} \{f1\})"
*SIN (0.6 0.6 1k)"}
C {devices/lab_pin.sym} 0 -50 1 0 {name=l1 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 40 -50 3 1 {name=l2 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 0 80 3 0 {name=l3 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 40 80 1 1 {name=l4 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} -150 0 0 0 {name=l5 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 200 0 0 1 {name=l6 sig_type=std_logic lab=outp}
C {devices/vsource.sym} -560 150 0 0 {name=Vinp3 value="DC 0 SIN(0 \{vamp\} \{f3\})"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} -470 240 0 0 {name=l23 lab=GND}
C {devices/vsource.sym} -470 210 0 0 {name=Vcm value="DC \{VCM\}"
*SIN (0.6 0.6 1k)"}
C {Clock Synchronizer/synchronizer.sym} -2900 940 0 0 {name=X3}
C {clkgen/filter_clkgen.sym} 130 -420 0 0 {name=X2}
C {devices/lab_pin.sym} -40 -50 1 0 {name=l7 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} -40 80 3 0 {name=l8 sig_type=std_logic lab=cclkb}
C {devices/lab_pin.sym} 180 -400 2 0 {name=l9 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 180 -380 2 0 {name=l10 sig_type=std_logic lab=cclkb}
C {devices/vsource.sym} -520 390 0 0 {name=Vthresh1 value="DC \{thresh1\}"}
C {devices/gnd.sym} -520 420 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} -420 390 0 0 {name=Vthresh2 value="DC \{thresh2\}"}
C {devices/gnd.sym} -420 420 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} 60 -400 0 0 {name=l16 lab=VDD}
C {devices/gnd.sym} 80 -400 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} -520 360 1 0 {name=l12 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -420 360 1 0 {name=l14 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -150 20 0 0 {name=l18 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} -150 40 0 0 {name=l19 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} -400 -480 0 0 {name=l20 sig_type=std_logic lab=rst_ext}
C {devices/lab_pin.sym} -360 -440 0 0 {name=l21 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 60 -480 1 0 {name=l24 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 30 -360 3 0 {name=l25 sig_type=std_logic lab=fclk}
C {tryandtest/final/filter.sym} -160 90 0 0 {name=X1 WC1=20 LC1=30 WC1B=15 LC1B=20 WC2=30 LC2=25 WC3=25 LC3=30 WCS1=5 LCS1=4 WCS2=5 LCS2=2 WCS3=2.5 LCS3=2}
C {devices/vdd.sym} -320 -400 0 0 {name=l15 lab=VDD}
C {devices/lab_pin.sym} -380 0 0 0 {name=l22 sig_type=std_logic lab=inm}
C {devices/vsource.sym} -380 90 0 0 {name=Vinp4 value="DC 0 SIN(0 \{-vamp\} \{f2\})"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} -380 30 0 0 {name=Vinp5 value="DC 0 SIN(0 \{-vamp\} \{f1\})"
*SIN (0.6 0.6 1k)"}
C {devices/vsource.sym} -380 150 0 0 {name=Vinp6 value="DC 0 SIN(0 \{-vamp\} \{f3\})"
*SIN (0.6 0.6 1k)"}
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
C {tryandtest/final/filter.sym} -160 350 0 0 {name=X4 WC1=20 LC1=30 WC1B=15 LC1B=20 WC2=30 LC2=25 WC3=25 LC3=30 WCS1=5 LCS1=4 WCS2=5 LCS2=2 WCS3=2.5 LCS3=2}
