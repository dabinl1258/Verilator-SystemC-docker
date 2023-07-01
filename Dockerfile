FROM ubuntu:22.04
RUN /bin/bash 
RUN	apt update 
RUN apt install apt-utils cmake ninja-build clang make pkg-config build-essential  -y 
RUN apt-get install git help2man perl gdb python3 make autoconf g++ flex bison ccache -y 
RUN apt-get install libgoogle-perftools-dev numactl perl-doc -y 
RUN apt-get install libfl2  -y 
RUN apt-get install libfl-dev  -y 
RUN apt-get install zlib1g zlib1g-dev -y
RUN mkdir /home/git 
WORKDIR /home/git

# install systemc

RUN git clone https://github.com/accellera-official/systemc

RUN cd systemc 
WORKDIR /home/git/systemc
RUN git checkout 2.3.4
RUN mkdir build
RUN cd build

WORKDIR /home/git/systemc/build 

RUN cmake -DCMAKE_CXX_STANDARD=17 .. -G Ninja
RUN cmake --build .
RUN cmake --install .

RUN echo "export SYSTEMC_INCLUDE=/opt/systemc/include \
export SYSTEMC_LIBDIR=/opt/systemc/lib \
export SYSTEMC=/opt/systemc \
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/systemc/lib" >> ~/.bashrc 

RUN cd /home/git 
WORKDIR /home/git

# install verilator
RUN git clone https://github.com/verilator/verilator 
WORKDIR /home/git/verilator
RUN git checkout v5.012
RUN autoconf
RUN unset VERILATOR_ROOT
RUN ls
RUN ./configure
RUN make -j $(nproc) CXXFLAGS=' -std=c++17' 
RUN make install 

#RUN source ~/.bashrc






