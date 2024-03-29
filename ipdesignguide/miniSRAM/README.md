# prj23-sram28项目设计报告


## 目录

	1 设计目标

	2 设计流程

	3 SRAM存储器介绍 

	    a. 1RW SRAM

	    b. 1R1W SRAM与2RW SRAM

	4 SRAM架构设计 

	    a.架构图

	    b.功能单元说明

	5 SRAM模块设计 

	     a.6T 单元

	     b.灵敏放大器

	     c.行/列译码器

	      d.存储阵列

	6 仿真 

	     a.模块仿真
	  
	     b.full IP 仿真

	7 小结

# 1 设计目标
设计一个2x2bit的SRAM

# 2 设计流程
电路绘制工具：virtuoso
仿真工具:spectre HSPICE

# 3 SRAM存储器介绍
SRAM(Static Random-Access Memory,SRAM)静态随机存取存储器。 “静态”是指这种存储器只要保持通电，里面储存的数据就可以一直保持。相对之下，动态随机存取存储器（DRAM）里面所储存的数据需要周期性地更新才能保持数据。然而，断电后SRAM储存的数据还是会消失，因此SRAM属于易失性存储器，这与在断电后还能储存资料的ROM或闪存是不同的。SRAM速度快，但是成本较高，因此常用作CPU与低速DRAM之间的高速缓存。

## a. 1RW SRAM
![6TSRAM](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/7a9a9297-0fa1-4050-add3-3a3785fb3c03)


常见的单端口SRAM主要由一对首尾相接的反相器加两个N管组成，如图所示。P1N1与P2N2组成反相器对主要用来锁住写入的数据。BL与BLB为数据写入端口，当BL为1时，BLB为0，写入1，当BL为0时，BLB为1，写入0。读取数据时，先将BL与BLB预充电至等电位，一般为VDD或VDD-Vth。此时令WL为1，因此N3 N4管开启，由于反相器对首尾相接，因此必有一边为高电平一边为低电平，低电平的一端连接到BL或BLB时会产生分压，因此会导致电压变化。通过观察哪一端有压降即可得知内部存储的数据是0还是1，若BL端电压下降，则存储的数据为0，若BLB端电压下降，则存储的数据为1。

## b. 1R1W SRAM与2RW SRAM

 ![伪双端口SRAM](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/ea03eadf-8f9b-4cbe-9e3f-afb289f18541)
 ![真双端口SRAM](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/08ab6e52-7506-4882-9bed-f597233171d9)
 
由于之前的单端口SRAM读写都是通过BL，因此不能做到同时读写且在低电压下稳定性较差，人们又开发了1R1W SRAM的结构（上图）。相对于6T SRAM，该结构有独立的读字线RWL写字线WWL以及读位线RBL 写位线WBL WBLB。由于读写位线字线的分离，因此该结构可以做到同时读写。与1R1W SRAM 中的某一端口只能完成读或写功能不同，在2RW SRAM （下图）中，每一个端口都可以进行读和写操作。
# 4 SRAM架构设计

## a.架构图

 ![SRAM架构](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/56d1245f-6087-46f7-ac17-fc487a4dd9bb)
 
## b.功能单元说明
存储阵列：存储阵列由一个个6TSRAM组成，每一个SRAM存储一位数据。
行/列译码器：根据控制电路得到数据读取或写入的地址。
灵敏放大器：放大微弱的电位差信号从而判断读取的数据是0还是1。
读/写数据电路：将灵敏放大器得到的数据返回控制电路，根据控制电路将数据写入对应的地址。

# 5 SRAM模块设计
 ## a.6T 单元
    6T SRAM为SRAM中常见的基本单元，其中电路图与工作原理介绍已在第一节给出。接下来需要确定具体晶体管的尺寸,尺寸参考https://www.ques10.com/p/23593/explain-read-and-write-operation-of-6-t-sram-cell-/
    
## b.灵敏放大器
  灵敏放大器的主要作用为将读操作时的电压变化或电流变化转化为符合逻辑的高低电平信号。本次采用的电路结构如下，
  
 ![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/a64a6e53-b2ce-4b8d-bfe8-8f9a7985f86c)

该结构为锁存型的SA,其信号放大主要依赖在反相器过渡区域的高增益放大和两级反相器组成的正反馈结构。SAE为低电平时，灵敏放大器不工作，在读操作开始前，BL与BLB被预充电至高电平，此时P3 P4 管导通，锁存结构内部为高阻态。当BL或BLB端有足够的 电压变化后，SAE为高电平，灵敏放大器开始工作，P3 P4管关闭，M3打开，此时M1 M2也将下拉，当上拉PMOS打开后，形成正反馈的信号放大。
参考资料：
https://eecs.wsu.edu/~daehyun/teaching/2019_EE466/lecture_notes/lecture_25.pdf
http://dx.doi.org/10.4103/0256-4602.107343

## c.行/列译码器
  本设计计划制作一个2×2bit的SRAM ，由于每行每列均只有两个单元，则用反相器即可完成选择。
  
## d.存储阵列
  存储阵列由2x2个6T单元组成，其中每一列公用一组位线，行/列译码器的输出端连接到一个两输入与门，两输入与门的输出连接到6T单元的字线，以此实现阵列中单个6T单元的选中。
  
# 6 仿真
## a.模块仿真
   6T单元仿真：
  6TSRAM写操作电路图如图所示，M1M4 M5M6分别构成一对反相器用来锁存数据，M7M8为传输管，M7M8的栅极连接到字线WL。数据data连接到位线BL，data非连接到BLB(net1)。
  
 ![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/4e572078-41b6-4db4-b20e-dbcbda5f3587)

Data设定为幅值0-1.8V 脉宽5ns 周期10ns
字线WL设定为幅值0-1.8V 脉宽10ns 周期20ns
由波形图可知 data与net1 Q与Q’均变化规律相反，说明连接的反相器工作正常。

 ![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/f838e802-2a29-4b1c-8218-e4604b596526)
 
当WL为高电平时，Q=data,当WL为低电平时，Q保持不变。这表明SRAM的写数据与数据保持功能正常。

![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/d8ed84a9-7e20-4ebf-bd10-ffb697df1d70)

读操作电路如上图所示，首先将BL与BLB充电至高电平，当WL同时为高时，观察BL端或BLB端的压降，若BLB端电压下降则Q为1，若BL端电压下降则Q为0。
仿真前将Q点的电压预设为1.6V，2ns时BL与BLB均预充电至高电平1.7V左右，5ns时WL拉高，此时发现BLB端电压明显下降，下降约0.5V，这表明存储的值为1，和预设的状态相符，表明SRAM的读1功能正常。

 ![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/b0015ef8-6cba-469a-b671-a8704f28849d)
 
随后将Q点电压预设为0V，仿真结果如图，在5ns时BL端能观察到约0.5V的压降，说明存储的值为0,符合预期，表明读该SRAM读0功能正常。
综上，该SRAM的读写功能仿真均通过。

![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/5634b459-384d-4e5e-ba76-ebc89ff6ad71)

灵敏放大器仿真:

仿真电路如下
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/d86b00e0-2b62-40d0-acae-67278f9491be)

仿真条件：BL与BLB端放置50fF的电容用来模拟位线寄生电容，仿真前对BL BLB端预设电压值，以模拟实际读取6T单元的情况。BL与BLB端预设为高低电平后，预充电低电平有效，打开预充电电路和SAE，由于一端是低电平，随后在BL或BLB端会产生电压变化。

原理：一端的电压变化接入到灵敏放大器的两级锁存内部，此时一端为高电平输入，一端为中间电平输入，导致有一级反相器工作在过渡区域，此时电压增益最高，经过反相器正反馈后，中间电平端的输入会越来越小，最终导致较低电平输入端的电压为低电平，另一边为高电平。

BL预设0.1V，BLB预设1.8V，仿真结果如下

![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/fa54b24f-43d2-474f-9e12-6af090bc086b)

可以看出 2ns时预充电打开，3ns时SAE打开，约3.25s后OUT稳定为高电平 OUT- 稳定为低电平

BL预设1.8V，BLB预设0.1V，仿真结果如下

![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/237dfa78-edcc-4f99-bf7a-6fc5fdc17965)

同样，约3.25s后OUT稳定为低电平 OUT- 稳定为高电平

写控制电路：目的为通过控制信号write来控制输入数据到BL以及BLB端的传输
BL端   
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/6f41bc51-71ea-4bdc-9984-286a1873a82d)

仿真
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/22f5248f-ba64-4b81-8a54-72912e3fc0da)

当write为高时，输入din与输出net4变化同步，当write为低时，输出保持为低电平
BLB端
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/a359867c-a3b5-459f-a9bb-318998a625cd)

仿真：
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/0db05e23-c510-4c6d-9536-d140227e16b7)

     当write为高时，输入din与输出net4变化相反，当write为低时，输出保持为高电平
单管读写仿真:
电路由一个 6T单元一个灵敏放大器 bl端和blb端写控制电路构成，电路图如下：
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/3f3e3805-1603-4404-b300-5b0500232399)
xy作为行列译码器的输出信号，当xy均为高时，字线为高。write写控制信号，高有效。预充电低电平有效。SAE为灵敏放大器的使能信号，高有效。data为写入数据信号，out为读出数据。q为6t单元内部存储的值。
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/b3c86005-cb56-4c34-8f51-40203ef4745c)
写0读0仿真 图中6-8ns时，xy均为高，此时字线为高，写入数据0。之后write关闭，开启预充电，SAE开启。15ns时读出out信号为0
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/da72650e-2623-41d7-9ee7-f688732713f1)
写1读1仿真 图中6-8ns时，xy均为高，此时字线为高，写入数据1。之后write关闭，开启预充电，SAE开启。15ns时读出out信号为1

2x2阵列仿真
电路图如下:
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/3ede0fce-4a41-4629-9f1a-8218b9c19847)
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/cee45a10-0fda-4e72-8d09-458a32a53917)
整体电路结构介绍：
行列译码器为反相器，x为0选中第一行，x为1选中第二行，列同。
每一个6T单元中的字线WL连接到一个两输入与门的输出，两输入与门的输入为sel0 sel1。
每一个单元的sel0 sel1分别连接到行/列译码器的输出端。
每一列公用一个灵敏放大器，两个灵敏放大器公用一根预充电线，预充电信号低电平有效。
数据写入电路write为控制信号，高有效。

依次为四个存储单元6T0 6T1 6T2 6T3写入1 0 1 0 然后读出：
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/b938a64e-dc82-4f64-b117-ef1a62b48c98)
上图中data0 data1为第一列 第二列的输入数据 write控制高有效 xy信号在0-8ns内依次选中存储单元6T0 6T1 6T2 6T3，其中6T0 6T2会接到data0,
6T1 6T3会接到data1，因此实现了写入1 0 1 0，q为存储单元内存储的值，可以看到存储的值符合预期。
![image](https://github.com/RIOSMPW/OpenXRAM/assets/143074779/e6503859-6a98-4d1d-8014-0b3850364473)
上图为数据读出的波形图，6T0 6T2的所在列SA的输出接到out0，6T1 6T3的所在列SA的输出接到out1，预充电信号同此规律，precharge0为第一列precharge1为第二列。
由于预充电信号低电平有效，在9ns时开启预充电，11ns时两个SAE的使能sae0 sae1拉高，此时观察xy信号，预充电期间，选中为6T0 6T1，读出数据应为 1 0，11ns时out0为1，out1为0，符合预期，12ns后再次开启预充电，15ns时SAE均使能打开，此时xy应读出 6T2 6T3的值，得到out0为1，out1为0符合预期。
