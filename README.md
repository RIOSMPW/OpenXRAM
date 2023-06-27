![image](https://github.com/riosmpw/OpenXRAM/assets/100336131/a3743ed1-5b94-4bf9-90f9-9ee7519c3d30)

# OpenXRAM
OpenXRAM is an open-source SRAM(/RRAM/MRAM).. compiler developed by RIOS Lab.

Which could generate high performance SRAM IP with open-source technology.SRAM is a type of memory that is commonly used in microprocessors, digital signal processors, and other integrated circuits.

As part of its commitment to the open-source community, RIOS Lab will make the OpenXRAM project completely open-source. This means that anyone can access the code, contribute to the project, and even use the chip in their own products. RIOS Lab believes that by making the project open-source, it will encourage innovation and collaboration in the OpenXRAM, leading to even more exciting and groundbreaking developments in the future.

![image](https://user-images.githubusercontent.com/109063674/212647474-19261a5a-8632-4d89-a81d-55edf5e494e2.png)

The framework provides a set of tools and libraries that enable designers to develop custom SRAM circuits that meet their specific requirements. This includes the ability to customize the layout, bitcell design, and other key parameters of the circuit.

OpenXRAM will be complete industrial level compilers that consist of various open-source generators to satisfy the requirements of the circuit desgin. Each of the final building block, the physical layout, will be implemented as a stand-alone, densely packed, pitch-matched array. 

One of the key benefits of OpeXRAM is that it is open-source, meaning that the code is freely available for anyone to download, modify, and distribute. This allows designers to collaborate and build upon each other's work, which can lead to faster innovation and better designs.

Another benefit of OpenXRAM is that it is highly customizable. The framework provides a wide range of options for designing different types of SRAM circuits, including single-port, dual-port, and multi-port designs. This allows designers to tailor their circuits to specific applications, such as high-performance computing, embedded systems, and mobile devices.

In addition to its customization options, OpenXRAM is also designed to be highly efficient. The framework is optimized for power consumption, area usage, and performance, which can help designers to create circuits that are both energy-efficient and high-performing.

With this memory design lib and layout generator,these memory cells(SRAM now, and RRAM/MRAM in the feature) can realize extreme density and performance. In each layout
generator, we added an option which makes the aspect ratio of the physical layout selectable so that the processor or ASIC designers can choose the aspect ratio according to the convenience of the chip level layout.



## Generators of Compiler
OpenXRAM memory compiler is a set of various, parameterized lib generators. These generators are:

• Layout Generator(LEF/GDS)
  
  Generates an array of custom, pitch-matched lef cells and final GDSII file.
  
• Schematic Generator & Netlister(CDL)
  
  Generates a spice or CDL netlist which can be used for both LVS and functional verification.
  
• Function & Timing Model Generators(Lib/V)
  
  Generates behavior simulation, dynamic/static timing analysis and synthesis models.

To customize the configuration of memory macro, designer could setup certain numbers to following four generator parameters:

• Number of words (w)

• Number of bits per word (b)

• Lower address decoder type (y)

• Number of banks (ba).

The valid range of these parameters is specified in :

![image](https://user-images.githubusercontent.com/109063674/212657810-57f95adf-3e58-4e13-a83a-2b8c58382af1.png)


## Design Stage
This project has 6 developing stages. And we would present all SRAM tech to the open-source comunity. 
![image](https://user-images.githubusercontent.com/109063674/212635930-cc9b00ad-45dc-404a-9506-e68b9092bbb2.png)

## Roadmap
![image](https://user-images.githubusercontent.com/109063674/212635997-13877596-63b8-48b2-87b0-e80fa63825a7.png)

Memory Compiler（AI based）Roadmap

## EDA Tool Flow
![image](https://user-images.githubusercontent.com/109063674/212636017-53386803-91be-44c0-9cb3-1798460082cb.png)

EDA Design Flow

## Useful Link
### Tutorial

ECE 5745 Tutorial 8: SRAM Generators https://cornell-ece5745.github.io/ece5745-tut8-sram/

Ultra-Low-Power SRAM Design In High Variability Advanced CMOS https://core.ac.uk/download/pdf/4417879.pdf

SRAM MEMORY ARCHITECTURE https://repository.iiitd.edu.in/jspui/bitstream/handle/123456789/579/Purnima%20Singh_2012151.pdf

Skywater-digital-flow SRAM Unit design https://code.stanford.edu/ee272/skywater-digital-flow/-/tree/master/SramUnit/design

Open EDA design flow https://priyanka-raina.github.io/ee372-spring2022/
### Open Source RAM

OpenRAM https://github.com/VLSIDA/OpenRAM

OpenSRAM https://github.com/iamkrvikash/OpenSRAM

Design of 1024x32 SRAM (32Kbits) using OpenRAM and SKY130 PDKs https://github.com/vsdip/vsdsram_sky130

vsdSRAM   https://github.com/ReuelReuben/vsdSRAM

# About RIOS Lab

![image](https://github.com/riosmpw/OpenRPDK28/assets/109063674/6aae13c6-50a5-40c3-9a4e-ed4c79d41c20)


**Ecosystem Wants to be Free**

By David A. Patterson · Director of RIOS Lab

**RISC-V International Open Source Laboratory** (RIOS Lab) is a Shenzhen-based research facility focused on computer system architecture, supported by the Tsinghua-Berkeley Shenzhen Research Institute. As an Open Source and Nobel Prize Laboratory, Rios Lab promotes open-source innovation and collaboration. Our philosophy is that the computer architecture ecosystem should be free for all to access and build upon.

In November 2019, the RISC-V International Open Source Laboratory (RIOS Lab) was officially unveiled. Under the leadership of 2017 A.M. Turing Award winner Prof. David A. Patterson and operational support from TBSI,  RIOS Lab will conduct cutting-edge research in RISC-V hardware and software technology. Patterson first proposed the Reduced Instruction Set Computer (RISC), an open and free instruction set architecture enabling a new era of processor innovation through open standard collaboration. Released in 2010, the latest Fifth Generation RISC has gained worldwide attention.

The name for the lab RIOS is also inspired by the Spanish word for “rivers.” It symbolizes the flow of information from many sources, coming together to create a whole that is greater than the sum of its parts.



