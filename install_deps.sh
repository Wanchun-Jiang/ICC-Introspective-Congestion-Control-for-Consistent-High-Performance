sudo apt-get update
# General dependencies
# g++5 for NS3, g++5/g++8 for UserSpace
sudo apt-get install -y gcc-5 g++-5 python python3 python3-dev

# NS3 dependencies
sudo apt-get install -y python3-setuptools git mercurial qt5-default mercurial gir1.2-goocanvas-2.0 python-gi python-gi-cairo python-pygraphviz python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython ipython3 openmpi-bin openmpi-common openmpi-doc libopenmpi-dev autoconf cvs bzr unrar gdb valgrind uncrustify doxygen graphviz imagemagick texlive texlive-extra-utils texlive-latex-extra texlive-font-utils dvipng latexmk python3-sphinx dia gsl-bin libgsl-dev libgsl23 libgslcblas0 tcpdump sqlite sqlite3 libsqlite3-dev libxml2 libxml2-dev cmake libc6-dev libc6-dev-i386 libclang-6.0-dev llvm-6.0-dev automake libgtk2.0-0 libgtk2.0-dev vtun lxc uml-utilities libboost-signals-dev libboost-filesystem-dev fftw3 fftw3-dev

# UserSpace dependencies
sudo apt-get install -y g++ makepp libboost-dev libprotobuf-dev protobuf-compiler libjemalloc-dev iperf libboost-python-dev fftw3 fftw3-dev gnuplot
sudo add-apt-repository -y ppa:keithw/mahimahi
sudo apt-get update
sudo apt-get install mahimahi


