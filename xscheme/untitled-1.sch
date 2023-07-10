v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1070 -1540 1140 -1540 {
lab=IN}
N 1070 -1410 1140 -1410 {
lab=IN}
N 1070 -1540 1070 -1410 {
lab=IN}
N 880 -1480 1070 -1480 {
lab=IN}
N 880 -1360 1180 -1360 {
lab=VSS}
N 1180 -1380 1180 -1360 {
lab=VSS}
N 880 -1590 1180 -1590 {
lab=VDD}
N 1180 -1590 1180 -1570 {
lab=VDD}
N 1180 -1570 1180 -1540 {
lab=VDD}
N 1180 -1410 1180 -1380 {
lab=VSS}
N 1180 -1510 1180 -1440 {
lab=#net1}
N 1180 -1480 1350 -1480 {}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1160 -1410 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1160 -1540 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/ipin.sym} 890 -1480 0 0 {name=p1 lab=IN
}
C {devices/ipin.sym} 890 -1360 0 0 {name=p2 lab=VSS

}
C {devices/ipin.sym} 890 -1590 0 0 {name=p3 lab=VDD}
C {devices/opin.sym} 1340 -1480 0 0 {name=p4 lab=OUT}
