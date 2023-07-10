v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 750 -1770 2120 -1770 {
lab=vddc}
N 740 -1750 2120 -1750 {
lab=vnwc}
N 740 -1690 2110 -1690 {
lab=wl}
N 820 -1830 820 -910 {
lab=bl}
N 2190 -1850 2190 -910 {
lab=nbl}
N 750 -1020 2060 -1020 {
lab=vpw}
N 750 -990 2060 -990 {
lab=vsse}
N 930 -1690 930 -1370 {
lab=wl}
N 2110 -1690 2170 -1690 {
lab=wl}
N 2080 -1370 2170 -1370 {
lab=wl}
N 2170 -1690 2170 -1370 {
lab=wl}
N 1210 -1510 1210 -870 {
lab=cored}
N 1210 -1510 1330 -1510 {
lab=cored}
N 1210 -1190 1330 -1190 {
lab=cored}
N 1730 -1480 1730 -1220 {
lab=cored}
N 1210 -1350 1730 -1350 {
lab=cored}
N 1880 -1510 1880 -870 {
lab=ncored}
N 1770 -1510 1880 -1510 {
lab=ncored}
N 1770 -1190 1880 -1190 {
lab=ncored}
N 1370 -1480 1370 -1220 {
lab=ncored}
N 1370 -1280 1880 -1280 {
lab=ncored}
N 820 -1510 1090 -1510 {
lab=bl}
N 2040 -1500 2040 -1400 {
lab=nbl}
N 2040 -1500 2190 -1500 {
lab=nbl}
N 1100 -1350 1210 -1350 {
lab=cored}
N 1100 -1510 1100 -1410 {
lab=bl}
N 1090 -1510 1100 -1510 {
lab=bl}
N 930 -1380 1060 -1380 {
lab=wl}
N 2040 -1340 2040 -1280 {
lab=ncored}
N 1880 -1280 2040 -1280 {
lab=ncored}
N 1370 -1190 1540 -1190 {
lab=vpw}
N 1540 -1190 1540 -1020 {
lab=vpw}
N 1540 -1190 1730 -1190 {
lab=vpw}
N 1930 -1370 2040 -1370 {
lab=vpw}
N 1930 -1370 1930 -1020 {
lab=vpw}
N 1370 -1160 1370 -990 {
lab=vsse}
N 1730 -1160 1730 -990 {
lab=vsse}
N 1370 -1770 1370 -1540 {
lab=vddc}
N 1730 -1770 1730 -1540 {
lab=vddc}
N 1100 -1380 1180 -1380 {
lab=vpw}
N 1180 -1380 1180 -1020 {
lab=vpw}
N 1370 -1510 1470 -1510 {
lab=vnwc}
N 1470 -1750 1470 -1510 {
lab=vnwc}
N 1640 -1510 1730 -1510 {
lab=vnwc}
N 1640 -1750 1640 -1510 {
lab=vnwc}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1350 -1190 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1350 -1190 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1080 -1380 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1750 -1190 0 1 {name=M4
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 2060 -1370 0 1 {name=M3
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1350 -1510 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1750 -1510 0 1 {name=M7
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
C {devices/ipin.sym} 750 -1770 0 0 {name=p1 lab=vddc}
C {devices/ipin.sym} 760 -1020 0 0 {name=p4 lab=vpw}
C {devices/ipin.sym} 760 -990 0 0 {name=p2 lab=vsse}
C {devices/ipin.sym} 750 -1750 0 0 {name=p3 lab=vnwc
}
C {devices/ipin.sym} 750 -1690 0 0 {name=p5 lab=wl

}
C {devices/ipin.sym} 820 -920 3 0 {name=p7 lab=bl}
C {devices/ipin.sym} 2190 -920 1 1 {name=p8 lab=nbl}
C {devices/opin.sym} 1210 -880 1 0 {name=p9 lab=cored}
C {devices/opin.sym} 1880 -880 1 0 {name=p10 lab=ncored}
C {sky130_fd_pr/corner.sym} 620 -920 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/title.sym} 960 -720 0 0 {name=l1 author="Stefan Schippers"}
C {devices/code.sym} 620 -1170 0 0 {name=STIMULI
only_toplevel=false 
value="
.OP
.TRAN 1ps 148ps
.OPTIONS POST

.save all
"}
