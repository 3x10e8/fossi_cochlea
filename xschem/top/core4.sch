v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"}
E {}
L 6 -80 160 80 160 {}
L 6 -72 138 -72 160 {}
L 6 72 138 72 160 {}
L 6 -80 -160 80 -160 {}
L 6 72 -160 72 -138 {}
L 6 -72 -160 -72 -138 {}
T {I} -5 -15 0 0 0.2 0.2 {}
T {Q} 0 5 0 0 0.2 0.2 {}
C {top/core.sym} 0 80 0 0 {}
C {top/core.sym} 0 -80 2 1 {}
