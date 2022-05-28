v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 110 -250 180 -250 {
lab=in1}
N 110 -390 180 -390 {
lab=in0}
N 480 -390 540 -390 {
lab=vdda1}
N 480 -250 540 -250 {
lab=vdda1}
N 540 -390 540 -250 {
lab=vdda1}
N 540 -470 540 -390 {
lab=vdda1}
N 480 -370 520 -370 {
lab=vccd1}
N 520 -460 520 -370 {
lab=vccd1}
N 520 -370 520 -230 {
lab=vccd1}
N 480 -230 520 -230 {
lab=vccd1}
N 480 -210 600 -210 {
lab=outb1}
N 480 -350 590 -350 {
lab=outb0}
N 480 -330 580 -330 {
lab=out0}
N 480 -310 500 -310 {
lab=vssd1}
N 500 -460 500 -310 {
lab=vssd1}
N 500 -310 500 -170 {
lab=vssd1}
N 480 -170 500 -170 {
lab=vssd1}
N 480 -190 590 -190 {
lab=out1}
C {/home/soumil/Desktop/cmos_reram/level_up_shifter.sym} 330 -350 0 0 {name=x1}
C {/home/soumil/Desktop/cmos_reram/level_up_shifter.sym} 330 -210 0 0 {name=x2}
C {devices/iopin.sym} 500 -460 3 0 {name=p1 lab=vssd1}
C {devices/iopin.sym} 520 -460 3 0 {name=p2 lab=vccd1}
C {devices/iopin.sym} 540 -460 3 0 {name=p3 lab=vdda1}
C {devices/iopin.sym} 120 -390 2 0 {name=p4 lab=in0}
C {devices/iopin.sym} 120 -250 2 0 {name=p5 lab=in1}
C {devices/iopin.sym} 580 -350 2 1 {name=p6 lab=outb0}
C {devices/iopin.sym} 590 -210 2 1 {name=p7 lab=outb1}
C {devices/iopin.sym} 580 -330 2 1 {name=p8 lab=out0}
C {devices/iopin.sym} 590 -190 2 1 {name=p9 lab=out1}
