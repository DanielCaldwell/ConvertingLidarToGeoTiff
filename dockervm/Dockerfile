FROM ubuntu:14.04

MAINTAINER Daniel Caldwell "daniel@danielcaldwell.com"
LABEL description="This docker vm is used to create a machine that can be used to convert lidar data to a geotiff."

RUN apt-get update 
RUN apt-get install -y  software-properties-common python-software-properties
RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu/ trusty-security multiverse"
RUN apt-get update
RUN apt-get install -y \
gdal-bin \
build-essential \
libboost-all-dev \
vim \
git \
libproj-dev \
libtiff5 \
libtiff5-dev \
libtool \
unzip \
python-pip \
cmake \
libcurl3 \
locate \
liblas-bin \
zip


RUN apt-get install -y liblas-dev

WORKDIR /root/.
RUN git clone https://github.com/CRREL/points2grid.git
WORKDIR ./points2grid
RUN mkdir build
WORKDIR ./build
RUN cmake ..
RUN make
RUN make install
RUN ldconfig -v | grep pts

RUN apt-get install unrar

WORKDIR /root/.


