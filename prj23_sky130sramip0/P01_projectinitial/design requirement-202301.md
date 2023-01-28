设计目录
========

项目启动时会在project/ip下新建一个文件夹放置项目文件。其共有5个子目录。

**\$workdir/sch ：** 
存放电路数据文件，包括IP、test-chip、padring等。

**\$workdir/sim：**
存放仿真数据、激励及配置文件等，子目录可包括Block、IP、test-chip等。

**\$workdir/lay：**
存放版图数据文件等，可包括IP、test-chip等。

**\$workdir/ant：**
存放ant的检查结果，layout组可写，个人分别新建以自己用户名命名的文件夹，在此文件夹下存放ant的结果及临时文件。

**\$workdir/drc：**
存放drc的检查结果，layout组可写，个人分别新建以自己用户名命名的文件夹，在此文件夹下存放drc的结果及临时文件。

**\$workdir/lvs：**
存放lvs的检查结果，layout组可写，个人分别新建以自己用户名命名的文件夹，在此文件夹下存放lvs的结果及临时文件。

**\$workdir/gds：** 
存放版图GDS数据文件等，可包括IP、test-chip等。

命名规范
========

Pin脚命名规范
-------------

-   信号名具有一定含义，除低有效信号最末尾外其余都用大写字符。

-   与模式相关的信号：信号名+模式名，如VREFPGM。模式主要包含RD/PGM/PROG/ERS等，电压信号一般以V开头，电流以I开头。

-   低有效信号在最后需要加b：DYNRDb（dynamic read）

-   模块相关电压电流偏置信号缩写：模块名+BIAS，例如XDBIAS(x-decoder bias)

-   固定电压偏置命名：VREF\_电压值，如VREF1P2V(1.2V vref)

-   Fuse 信号一般用FT\_XXX进行命名。

-   信号的延迟信号在源信号名称后加D，如PROGD

-   使能信号一般命名为XXXX+EN，如PROGEN

-   probe信号应该在源信号名称后加\_ PROBE!，如XDBIAS\_PROBE!

-   单个pin为总线时，单信号总线命名应从大到小顺序排列如A\<18:0\>，多个信号总线用逗号隔开。

模块命名规范
------------

-   模块名（cell name）具有一定含义，用小写字符m开头。

-   模块instance名称应为I+模块名如ImAPOWER

-   逻辑控制模块结尾一般为CTL/CT

电路输入与标注规范
------------------

![image](https://user-images.githubusercontent.com/100336131/215266974-f5fd3d2c-920e-42d5-85d7-52b9b5aa211a.png)


-   电路输入/输出pin脚分别摆放至左右两端。

-   整体电路摆放整齐至电路图中间部分，并加board框(电路库中的board
    instance)（图中黄色外框）

-   电源与地symbol调用统一库，mos管的电源与地节点统一使用label标注

-   需要版图特殊处理的器件、信号线、Option metal请加白色虚线框注明

-   修改过的部分请用白色虚线框标注并注明修改人，日期，修改点，原因等

-   模块的仿真结果或者Trimming范围需同白色虚线框内说明

![image](https://user-images.githubusercontent.com/100336131/215266985-73091cf7-8169-425d-9fef-67df8b536fca.png)

-   同一大模块内部的子模块symbol宽度保持一致

-   输入输出pin脚分别放置于symbol左右两端，INOUT放置symbol右端

-   需要在symbol中部加入\@cellName 和\@libName属性

-   \@instanceName放置于symbol右上角，justification设置为lowerleft

-   修改pin脚后更新symbol时注意去掉右下角残留信息
