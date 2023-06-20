FROM ubuntu:18.04

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install package
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y autoremove && \
  apt-get -y autoclean && \
  apt-get -y install tzdata curl vim tree lsb-release git wget xz-utils file make gcc build-essential automake autoconf libtool m4 locales subversion texinfo sshpass pkg-config unzip cmake sudo libxml2-dev libssl-dev bsdmainutils

RUN locale-gen "en_US.UTF-8"

RUN useradd -ms /bin/bash intel && echo "intel:1234" | chpasswd && adduser intel sudo

RUN chown -R intel:intel /home/intel

USER root

WORKDIR /root

RUN git clone https://github.com/Intel-BMC/intel-pfr-signing-utility && \
    mkdir /root/build && \
    cd /root/build && \
    cmake ../intel-pfr-signing-utility && \
    make

RUN cp /root/build/intel-pfr-signing-utility /bin && \
    chmod 777 /bin/intel-pfr-signing-utility

USER intel

WORKDIR /home/intel
