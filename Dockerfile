FROM ubuntu:22.04
MAINTAINER dabin
Run \ 
	apt update \
	apt install cmake ninja-build clang make pkg-config build-essential -y \ 
	apt-get install git help2man perl gdb python3 make autoconf g++ flex bison ccache -y \ 
	apt-get install libgoogle-perftools-dev numactl perl-doc -y \
	apt-get install libfl2  -y # Ubuntu only (ignore if gives error ) \ 
	apt-get install libfl-dev  -y# Ubuntu only (ignore if gives error) \ 
	apt-get install zlibc zlib1g zlib1g-dev -y  # Ubuntu only (ignore if gives error) \
	mkdir /home/git 
WORKDIR /home/git



