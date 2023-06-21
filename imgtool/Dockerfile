FROM ubuntu:22.04

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install package
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y autoremove && \
  apt-get -y autoclean && \
  apt-get -y install tzdata curl vim git locales sudo python3-pip

RUN locale-gen "en_US.UTF-8"

RUN useradd -ms /bin/bash mcu && echo "mcu:1234" | chpasswd && adduser mcu sudo

RUN chown -R mcu:mcu /home/mcu

USER root

WORKDIR /root

RUN pip3 --no-cache-dir install pyyaml

RUN git clone https://github.com/mcu-tools/mcuboot && \
    cd mcuboot/scripts && \
    pip3 install -r requirements.txt && \
    python3 setup.py install

USER mcu

WORKDIR /home/mcu
