FROM ubuntu:18.04

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install package
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y autoremove && \
  apt-get -y autoclean && \
  apt-get -y install tzdata curl vim tree lsb-release git wget xz-utils file make gcc build-essential automake autoconf libtool m4 locales subversion texinfo sshpass pkg-config unzip cmake sudo libxml2-dev libssl-dev bsdmainutils python3-pip

RUN locale-gen "en_US.UTF-8"

RUN pip3 --no-cache-dir install pycryptodome crypto pycrypto

RUN useradd -ms /bin/bash ast && echo "ast:1234" | chpasswd && adduser ast sudo

RUN chown -R ast:ast /home/ast

USER root

WORKDIR /root

RUN git clone https://github.com/AspeedTech-BMC/socsec.git && \
    cd socsec && \
    pip3 install -r requirements.txt && \
    python3 setup.py install

USER ast

WORKDIR /home/ast
