![image](https://user-images.githubusercontent.com/109063674/212876112-e7674927-b8ba-4c86-bb95-bc63abd8f3a8.png)


High Performance Single Port SRAM Embedded Memory Macro
=======================================================

Introduction
============
![image](https://user-images.githubusercontent.com/109063674/212876578-ef763627-a0bf-4ba3-b32c-4724484f109e.png)

**High performance Single Port SRAM Macro**


-   100 MHz operation

-   1-Clock cycle time

-   Pipelined read access timing

-   32/64Bit wide data buses

-   Byte write enables

-   Simple standard SRAM interface

**High Yield and Reliability**

-   Built-in redundancy for enhanced yield

**Standard Logic Process**

-   Skywater 0.13µm process with open PDK

-   Logic design rules

-   Uses 4 metal layers

-   Routing over macro possible in layers 5 or more

**Power**

-   Single VDD voltage supply

-   Low power consumption

General Description
===================

This high performance embedded SRAM macro access is synchronous and is triggered
by the rising-edge of the clock. Input address, data, (global) write enable, and
chip enable are latched by the rising-edge of the clock, respecting individual
setup and hold times.

**Wirte**: Data input bus is partitioned to the write enable bus WENb[nWEN:0].
Each WENb pin has a distinct latched value and each partition is individually
selectable. When the latched value of a write enable pin, WENb[i], is LOW, the
corresponding data partition is selected and its data is written to the memory
location specified on the address bus. There is also a Global Write Enable pin
(GWENb). If any of the WEN[i] signals is LOW, the GWEN signal must also be LOW
to enable a write operation.

**Standby**:A standby mode is provided for periods of non-operation, that is
when CEN=1. In standby mode, address and data inputs are disabled. Data stored
in the memory is retained but the memory cannot be accessed for reads or writes.

Architecture
============

Core architecture
-----------------

![image](https://user-images.githubusercontent.com/109063674/212876789-048e96a1-9d37-4b6c-9dc0-38d0d2b9d145.png)

Bank organization 
------------------

![image](https://user-images.githubusercontent.com/109063674/212876879-babf7ccb-1b52-458f-8736-f0534254fe6c.png)

PIN definition
==============

Basic pins
----------

| **Name**           | **Valid**         | **Type** | **Description**                                  |
|--------------------|-------------------|----------|--------------------------------------------------|
| **A[mA-1:0]**      | positive CLK edge | Input    | addresses (**A[0]** = LSB)                       |
| **D[nD-1:0]**      | positive CLK edge | Input    | data inputs (**D[0]** = LSB)                     |
| **CENb**           | positive CLK edge | Input    | chip enable, active LOW                          |
| **CLK**            | clock             | Input    | clock                                            |
| **Q[nD-1:0]**      | positive CLK edge | Output   | data outputs, **Q[0]** = LSB                     |
| **WENb[nWEN-1:0]** | positive CLK edge | Input    | byte write enable, active LOW                    |
| **GWENb**          | positive CLK edge | Input    | global write enable, active LOW                  |
| **VDDPE**          |                   | Input    | periphery power supply pin                       |
| **VDDCE**          |                   | Input    | core array power supply pin                      |
| **VSSPE**          |                   | Input    | periphery power ground pin                       |
| **VSSCE**          |                   | Input    | core array power ground pin                      |
| **EMA[2:0]**       | positive CLK edge | Input    | extra margin adjustment, **EMA[0]** = LSB        |
| **EMAW[1:0]**      | positive CLK edge | Input    | extra margin adjustment write, **EMAW[0]** = LSB |

AC parameters
=============

Memory macro implements a synchronous reset to force state machines into a known
state after power-up. This reset does not clear the memory contents. The clock
must be running for at least two cycles before the CEb signal will be correctly
sampled. Independent of the CEb signal, after power has stabilized to a voltage
within the operating specification and the clock is operating within its timing
specifications, there should be at least 128 clock cycles before any read or
write access.

Address and command clocked in by rising clock edge. Read data transfers occur
in the clock cycle following the next clock rising edge. Write data transfers
occur in the following clock cycle.

Read timing
-----------

![image](https://user-images.githubusercontent.com/109063674/212876957-5c6ed26e-61f7-42d0-8d52-f0c035c69863.png)

Write timing
------------

![image](https://user-images.githubusercontent.com/109063674/212876999-85237aba-dc0e-4c95-8317-415a575c3d4f.png)
