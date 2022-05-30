v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {used with digital cells} -460 -70 0 0 0.4 0.4 {}
T {using hd cells for synthesis} -90 150 0 0 0.4 0.4 {}
N 360 0 360 20 { lab=pol}
N 0 0 0 40 { lab=pol}
N 0 0 40 0 { lab=pol}
N 360 -50 360 0 { lab=pol}
N 360 -50 470 -50 { lab=pol}
N 480 30 480 60 { lab=event}
N 480 -10 480 30 { lab=event}
N 40 0 360 0 { lab=pol}
N 470 -50 480 -50 { lab=pol}
N 360 20 360 40 { lab=pol}
N 480 60 660 60 {
lab=event}
N -360 80 180 80 {
lab=phi1b_dig}
N -180 40 -180 80 {
lab=phi1b_dig}
N 0 60 0 80 {
lab=phi1b_dig}
N -360 20 -360 80 {
lab=phi1b_dig}
N -460 80 -360 80 {
lab=phi1b_dig}
N -460 0 -360 0 {
lab=comp_high}
N 600 -30 660 -30 {
lab=polxevent}
C {devices/ipin.sym} -460 80 0 0 {name=p2 lab=phi1b_dig}
C {devices/opin.sym} 660 60 0 0 {name=p7 lab=event}
C {sky130_stdcells/xor2_1.sym} 420 60 2 1 {name=x4 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} -270 10 2 1 {name=x1 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_0.sym} 540 -30 2 1 {name=x6 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 110 0 3 1 {name=l20 sig_type=std_logic lab=pol}
C {devices/lab_pin.sym} -180 20 3 1 {name=l21 sig_type=std_logic lab=comp_out}
C {devices/opin.sym} 660 -120 0 0 {name=p3 lab=comp_out}
C {devices/opin.sym} 660 -30 0 0 {name=p4 lab=polxevent}
C {devices/ipin.sym} -460 0 0 0 {name=p5 lab=comp_high}
C {sky130_stdcells/dfxtp_1.sym} -90 30 2 1 {name=x2 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 90 50 2 1 {name=x3 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxtp_1.sym} 270 70 2 1 {name=x5 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {devices/iopin.sym} -460 -80 2 0 {name=p13 lab=vccd}
C {devices/iopin.sym} -460 -40 2 0 {name=p12 lab=vssd}
