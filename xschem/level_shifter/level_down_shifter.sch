v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {vhi} -60 -60 0 0 0.4 0.4 {}
T {vlo} 20 -60 0 0 0.4 0.4 {}
T {going smaller might work ok too} -160 80 0 0 0.4 0.4 {}
T {hi} -210 -140 0 0 0.2 0.2 {}
T {lo} -210 -120 0 0 0.2 0.2 {}
N -160 0 -80 0 {
lab=in}
N 80 0 160 0 {
lab=out}
C {devices/ipin.sym} -160 0 0 0 {name=p1 lab=in}
C {devices/iopin.sym} -230 -90 2 0 {name=p3 lab=vssd
}
C {devices/iopin.sym} -230 -130 2 0 {name=p4 lab=vdda}
C {devices/opin.sym} 160 0 0 0 {name=p5 lab=out}
C {devices/iopin.sym} -230 -110 2 0 {name=p2 lab=vccd}
C {dependencies/pdks/sky130B/libs.tech/xschem/sky130_stdcells/inv_8.sym} -40 0 0 0 {name=x1 VGND=vssd VNB=vssd VPB=vdda VPWR=vdda prefix=sky130_fd_sc_hd__ }
C {dependencies/pdks/sky130B/libs.tech/xschem/sky130_stdcells/inv_8.sym} 40 0 0 0 {name=x2 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
