v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {always 1} -600 60 0 0 0.4 0.4 {}
T {q[-1]} 120 -230 0 0 0.4 0.4 {}
N 140 20 240 20 {
lab=#net1}
N -20 0 20 0 {
lab=#net2}
N 420 0 480 0 {
lab=q_j}
N -440 20 -140 20 {
lab=always1}
N -360 -80 -360 20 {
lab=always1}
N 120 -200 480 -200 {
lab=q_jm1}
N -280 -80 480 -80 {
lab=no_ones_below_jm1}
C {devices/lab_pin.sym} 240 40 0 0 {name=l28 sig_type=std_logic lab=rstb}
C {sky130_stdcells/xor2_1.sym} 80 20 0 0 {name=x10 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_0.sym} -80 0 0 0 {name=x12 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 20 40 0 0 {name=l4 sig_type=std_logic lab=q_j}
C {devices/lab_pin.sym} 330 -30 0 0 {name=l86 sig_type=std_logic lab=vccd1}
C {digital/deff_rst_vccd.sym} 330 20 0 0 {name=X2}
C {devices/lab_pin.sym} 330 70 0 0 {name=l3 sig_type=std_logic lab=vssd1}
C {devices/iopin.sym} -440 -240 2 0 {name=p6 lab=vccd1}
C {devices/iopin.sym} -440 -220 2 0 {name=p4 lab=vssd1}
C {devices/opin.sym} 480 0 0 0 {name=p7 lab=q_j}
C {devices/opin.sym} 480 -80 0 0 {name=p5 lab=no_ones_below_jm1}
C {devices/ipin.sym} -440 -180 0 0 {name=p8 lab=clk_ext}
C {devices/ipin.sym} -440 -150 0 0 {name=p9 lab=rstb}
C {devices/ipin.sym} -440 20 0 0 {name=p10 lab=always1}
C {devices/lab_pin.sym} -60 -280 0 0 {name=l32 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -100 -220 0 0 {name=l33 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 10 -160 2 0 {name=l35 sig_type=std_logic lab=clk_ext}
C {digital/asyn_rst_t_ff_vccd.sym} 10 -220 0 0 {name=X9}
C {devices/lab_pin.sym} -140 -20 0 0 {name=l2 sig_type=std_logic lab=q_jm1}
C {devices/lab_pin.sym} -60 -160 0 0 {name=l1 sig_type=std_logic lab=vssd1}
C {devices/opin.sym} 480 -200 0 0 {name=p1 lab=q_jm1}
C {devices/lab_pin.sym} 240 0 0 0 {name=l5 sig_type=std_logic lab=clk_ext}
C {sky130_stdcells/buf_1.sym} -320 -80 0 0 {name=x1 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -100 -240 0 0 {name=l6 sig_type=std_logic lab=always1}
