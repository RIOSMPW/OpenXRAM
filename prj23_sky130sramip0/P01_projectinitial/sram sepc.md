 
High Performance Single Port SRAM Embedded Memory Macro
Introduction
High  performance Single Port SRAM Macro
• 100 MHz operation
• 1-Clock cycle time
• Pipelined read access timing
• 32/64Bit wide data buses
• Byte write enables
• Simple standard SRAM interface    
High  Yield and Reliability
• Built-in redundancy for enhanced yield
Standard  Logic Process
• Skywater 0.13µm process with open PDK
• Logic design rules
• Uses 4 metal layers
• Routing over macro possible in layers 5 or more
Power
• Single VDD voltage supply
• Low power consumption
 
General Description
This high performance embedded SRAM macroaccess is synchronous and is triggered by the rising-edge of the clock. Inputaddress, data, (global) write enable, and chip enable are latched by therising-edge of the clock, respecting individual setup and hold times.
 
Wirte: Datainput bus is partitioned to the write enable bus WENb[nWEN:0]. Each WENb pinhas a distinct latched value and each partition is individually selectable.When the latched value of a write enable pin, WENb[i], is LOW, thecorresponding data partition is selected and its data is written to the memorylocation specified on the address bus. There is also a Global Write Enable pin(GWENb). If any of the WEN[i] signals is LOW, the GWEN signal must also be LOWto enable a write operation.
 
Standby:Astandby mode is provided for periods of non-operation, that is when CEN=1. Instandby mode, address and data inputs are disabled. Data stored in the memoryis retained but the memory cannot be accessed for reads or writes.
 
Architecture
Core architecture
Bank organization 
 
PIN definition
 
Basic pins
 
 
Name
Valid
Type
Description
A[mA-1:0]
positive CLK edge
Input
addresses (A[0] = LSB)
D[nD-1:0]
positive CLK edge
Input
data inputs (D[0] = LSB)
CENb
positive CLK edge
Input
chip enable, active LOW
CLK
clock
Input
clock
Q[nD-1:0]
positive CLK edge
Output
data outputs, Q[0] = LSB
WENb[nWEN-1:0]
positive CLK edge
Input
byte write enable, active  LOW
GWENb
positive CLK edge
Input
global write enable, active  LOW
VDDPE
 
Input
periphery power supply pin
VDDCE
 
Input
core array power supply pin
VSSPE
 
Input
periphery power ground pin
VSSCE
 
Input
core array power ground pin
EMA[2:0]
positive CLK edge
Input
extra margin adjustment, EMA[0] = LSB
EMAW[1:0]
positive CLK edge
Input
extra margin adjustment write, EMAW[0] = LSB
AC parameters
Memory macro implements a synchronous resetto force state machines into a known state after power-up. This reset does notclear the memory contents. The clock must be running for at least two cyclesbefore the CEb signal will be correctly sampled. Independent of the CEb signal,after power has stabilized to a voltage within the operating specification andthe clock is operating within its timing specifications, there should be atleast 128 clock cycles before any read or write access.
 
Address and command clocked in by risingclock edge. Read data transfers occur in the clock cycle following the nextclock rising edge. Write data transfers occur in the following clock cycle. 
Read timing
 
 
Write timing
 
 
 
 
