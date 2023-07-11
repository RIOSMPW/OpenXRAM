v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -20 40 20 {
lab=OUT}
N 0 -50 0 50 {
lab=IN}
N 40 0 180 -0 {
lab=OUT}
N -100 0 -0 0 {
lab=IN}
N 40 80 40 120 {
lab=GND}
N 40 120 60 120 {
lab=GND}
N 40 -120 40 -80 {
lab=VDD}
N 40 -120 60 -120 {
lab=VDD}
N 40 -50 60 -50 {}
N 60 -90 60 -50 {}
N 40 -90 60 -90 {}
N 40 50 60 50 {}
N 60 50 60 100 {}
N 40 100 60 100 {}
C {symbols/nmos_3p3.sym} 20 50 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {symbols/pmos_3p3.sym} 20 -50 0 0 {name=M2
L=0.28u
W=0.44u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pmos_3p3
spiceprefix=X
}
C {devices/iopin.sym} 170 0 0 0 {name=p1 lab=OUT}
C {devices/iopin.sym} 50 -120 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 50 120 0 0 {name=p3 lab=GND}
C {devices/iopin.sym} -90 0 2 0 {name=p4 lab=IN}
