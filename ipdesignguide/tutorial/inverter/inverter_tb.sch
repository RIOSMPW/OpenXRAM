v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -50 -60 -50 -30 {
lab=VDD}
N -50 30 -50 50 {
lab=GND}
N 220 -90 220 -40 {
lab=VDD}
N 60 80 220 80 {
lab=GND}
N 60 0 160 0 {
lab=IN}
N 60 60 60 80 {
lab=GND}
N 220 40 220 100 {
lab=GND}
N 300 0 360 0 {
lab=OUT}
C {devices/vsource.sym} -50 0 0 0 {name=V1 value=3.3}
C {devices/vdd.sym} -50 -60 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -50 50 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 60 30 0 0 {name=V2 value=pulse(0 3.3 100p 50p 50p 100p 500p)}
C {devices/vdd.sym} 220 -90 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 220 100 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -90 140 0 0 {name=MODELS only_toplevel=false value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 420 -50 0 0 {name=NGSPICE only_toplevel=false value="

.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical

save all
tran 3p 600p
plot IN OUT
.endc
"}
C {/work/stu/hzhang/project/OpenXRAM/ipdesignguide/tutorial/inverter/inverter.sym} 260 0 0 0 {name=x1}
C {devices/lab_wire.sym} 350 0 0 0 {name=l5 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 110 0 0 0 {name=l6 sig_type=std_logic lab=IN}
