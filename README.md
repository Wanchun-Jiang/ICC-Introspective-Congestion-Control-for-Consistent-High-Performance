# Introspective Congestion Control for Consistent High Performance
Code of ICC for Eurosys'25: NS3+User-space

### Environment

Dell 5810| Intel(R) Xeon(R) W-2133 CPU @ 3.60GHz|16G

OS: Ubuntu 18.04.6 LTS 

### Dependencies

Automatically install dependencies via

`sudo bash install_deps.sh`

Or manually install dependencies according to the corressponding README

### Description of directory and source codes

`NS3/`: Simulation platform of ICC based on NS3.27

`NS3/scratch/periodcCCEvaDumbbell.cc`: An simple evaluation on dumbbell topology

`NS3/src/internet/model/tcp-periodicDC.cc/h`: The core logic of ICC

`User-space/`: User-space implementation of ICC based on [GenericCC](https://github.com/venkatarun95/genericCC)

`User-space/ICC.cc/hh`: The core logic of ICC

### Quick Build

#### Update submodules

`git submodule update --init --recursive --remote`

#### NS3

`cd NS3/`

`CC='gcc-5' CXX='g++-5' ./waf configure`

`./waf`

#### User-space

`cd User-space/`

`makepp`

### Acknowledgement

Thanks a lot for all fixes and suggestions from Reviews of AES of EuroSys'25!
