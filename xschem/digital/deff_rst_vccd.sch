v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Positive and negative clock triggered flops inserted. 
4 inverters added to make sure that there is no race 
condition between the reset and clock edge} -270 -30 0 0 0.2 0.2 {}
N 120 -150 140 -150 {
lab=CLK}
N 120 -40 140 -40 {
lab=CLK}
N 470 -100 500 -100 {
lab=Q}
N 120 -130 140 -130 {
lab=D}
N 120 -130 120 -60 {
lab=D}
N 120 -60 140 -60 {
lab=D}
N 320 -150 390 -150 {
lab=#net1}
N 390 -150 390 -120 {
lab=#net1}
N 320 -80 320 -40 {
lab=#net2}
N 320 -80 390 -80 {
lab=#net2}
N 140 -110 140 -80 {
lab=RSTB}
N 50 -150 120 -150 {
lab=CLK}
N 50 -150 50 -40 {
lab=CLK}
N 50 -40 120 -40 {
lab=CLK}
N 0 -90 50 -90 {
lab=CLK}
N 390 -40 390 20 {
lab=#net3}
C {devices/ipin.sym} 60 -310 0 0 {name=p1 lab=CLK}
C {devices/ipin.sym} 60 -280 0 0 {name=p2 lab=D}
C {sky130_stdcells/mux2_1.sym} 430 -100 0 0 {name=x3 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 120 -130 0 0 {name=l2 sig_type=std_logic lab=D}
C {devices/opin.sym} 500 -100 0 0 {name=p7 lab=Q}
C {devices/ipin.sym} 60 -250 0 0 {name=p3 lab=RSTB}
C {sky130_stdcells/dfrtn_1.sym} 230 -130 0 0 {name=x21 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 140 -110 0 0 {name=l3 sig_type=std_logic lab=RSTB}
C {sky130_stdcells/dfrtp_1.sym} 230 -60 2 1 {name=x1 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 0 -90 0 0 {name=l5 sig_type=std_logic lab=CLK}
C {devices/iopin.sym} 60 -360 2 0 {name=p6 lab=vccd1}
C {devices/iopin.sym} 60 -340 2 0 {name=p4 lab=vssd1}
C {sky130_stdcells/buf_1.sym} 270 20 0 0 {name=x17 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 350 20 0 0 {name=x2 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 70 20 0 0 {name=l1 sig_type=std_logic lab=CLK}
C {sky130_stdcells/buf_1.sym} 110 20 0 0 {name=x4 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 190 20 0 0 {name=x5 VGND=vssd1 VNB=vssd1 VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
