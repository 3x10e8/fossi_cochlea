v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 190 -130 270 -130 {
lab=#net1}
N 270 -130 270 -110 {
lab=#net1}
N 190 -60 270 -60 {
lab=#net2}
N 270 -70 270 -60 {
lab=#net2}
N 10 -110 10 -80 {
lab=data}
N -10 -110 10 -110 {
lab=data}
N -10 -130 10 -130 {
lab=clk}
N -10 -60 10 -60 {
lab=#net3}
N 350 -90 380 -90 {
lab=q}
C {sky130_stdcells/dfxtp_1.sym} 100 -120 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfxtp_1.sym} 100 -70 2 1 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/ipin.sym} 0 -200 0 0 {name=p1 lab=clk}
C {devices/ipin.sym} 0 -170 0 0 {name=p2 lab=data}
C {sky130_stdcells/mux2_1.sym} 310 -90 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} -50 -60 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} -10 -130 0 0 {name=l21 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -90 -60 0 0 {name=l1 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -10 -110 0 0 {name=l2 sig_type=std_logic lab=data}
C {devices/lab_pin.sym} 270 -30 0 0 {name=l3 sig_type=std_logic lab=clk}
C {devices/opin.sym} 380 -90 0 0 {name=p7 lab=q}
