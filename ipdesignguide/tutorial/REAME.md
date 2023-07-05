## Tutorial

### Using OpenLane to run a Digital Inveter targeting the gf180 technology.
The file `digital-inverter-openlane-gf180mcu.ipynb` is a digital inverter example with OpenLane flow targeting the gf180 based on google Colab. You can checkout the file for more details.


### Using Xschem and Ngspice to draw and simulate a Digital Inverter

#### Install tools
##### Install Xschem

###### Issues
1. when I execute 'xschem' command in centos 7, it prints 'xschem: error while loading shared libraries: libtk8.6.so: cannot open shared object file: No such file or directory', how can I fix it? 
> 1. Install tk by 'sudo yum install -y tk tcl tk-devel tcl-devel'
> 2. Add '/usr/local/lib' into the tail of the file '/etc/ld.so.conf'
> 3. Update the system's dynamic linker run-time bindings by 'sudo ldconfig'
> 4. Run xschem again


##### Install Ngspice
1. Pre-install the tools
1.1  `sudo yum install -y libXaw-devel libXmu-devel libXext-devel libXft-devel libX11-devel readline-devel` 

2. Install ngspice
2.1 Download the latest software package from the [website](https://ngspice.sourceforge.io/download.html)
2.2 Then the install flow can be followed by the folllowing commands:
```bash
$ tar -zxvf ngspice-40.tar.gz
$ mkdir release
$ cd release
$ ../configure --with-x --enable-xspice --disable-debug --enable-cider --with-readline=yes --enable-openmp CFLAGS="-m64 -O2 -std=c99"
$ make 2>&1 | tee make.log
$ sudo make install
$ ngspice --verison
```

#### Design a Digital Inveter spice netlist

#### Run the simulation on Ngspice
