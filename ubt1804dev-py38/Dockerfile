FROM ubuntu:18.04

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install package
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y autoremove && \
  apt-get -y autoclean && \
  apt-get install -y --no-install-recommends tzdata curl vim tree lsb-release git wget xz-utils file make gcc build-essential automake autoconf libtool m4 locales subversion texinfo sshpass pkg-config unzip cmake sudo libxml2-dev libssl-dev bsdmainutils python3-pip
  
RUN locale-gen "en_US.UTF-8"

ENV LANG     en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL   en_US.UTF-8

# install python
RUN apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:deadsnakes/ppa && \
  apt-get -y update && \
  apt-get install -y python3.8 && \
  apt-get install -y python3-pip && \
  update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 0 && \
  update-alternatives --config python3 && \
  apt-get install -y python3.8-distutils && \
  pip3 install --upgrade setuptools && \
  pip3 install --upgrade pip && \
  pip3 install --upgrade distlib

USER root

WORKDIR /root

