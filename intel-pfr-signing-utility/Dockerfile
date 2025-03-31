FROM ubuntu:22.04

ARG USERNAME=intel
ARG USERHOME=/home/$USERNAME

ENV TZ=Asia/Taipei
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install package
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y autoremove && \
  apt-get -y autoclean && \
  apt-get -y install tzdata curl vim tree lsb-release git wget xz-utils file make gcc build-essential automake autoconf libtool m4 locales subversion texinfo sshpass pkg-config unzip cmake sudo libxml2-dev libssl-dev bsdmainutils

RUN locale-gen "en_US.UTF-8"

RUN rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash $USERNAME
RUN echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir -p $USERHOME/workspace

RUN chown -R $USERNAME:$USERNAME $USERHOME

USER $USERNAME

WORKDIR $USERHOME/patch
RUN curl -sL https://raw.githubusercontent.com/AspeedTech-BMC/openbmc/refs/heads/aspeed-master/meta-aspeed-sdk/meta-aspeed-pfr/recipes-intel/pfr/intel-pfr-signing-utility/0001-support-openssl-3.0.patch -o 0001-support-openssl-3.0.patch && \
    curl -sL https://raw.githubusercontent.com/AspeedTech-BMC/openbmc/refs/heads/aspeed-master/meta-aspeed-sdk/meta-aspeed-pfr/recipes-intel/pfr/intel-pfr-signing-utility/0002-fix-verify-error-if-block1-b0sig-hashalg-set-to-sha384.patch -o 0002-fix-verify-error-if-block1-b0sig-hashalg-set-to-sha384.patch && \
    curl -sL https://raw.githubusercontent.com/AspeedTech-BMC/openbmc/refs/heads/aspeed-master/meta-aspeed-sdk/meta-aspeed-pfr/recipes-intel/pfr/intel-pfr-signing-utility/0003-Fix-signature-RS-extration-error.patch -o 0003-Fix-signature-RS-extration-error.patch

WORKDIR $USERHOME
RUN git clone https://github.com/Intel-BMC/intel-pfr-signing-utility && \
    patch --directory=intel-pfr-signing-utility/ --strip=1 < $USERHOME/patch/0001-support-openssl-3.0.patch && \
    patch --directory=intel-pfr-signing-utility/ --strip=1 < $USERHOME/patch/0002-fix-verify-error-if-block1-b0sig-hashalg-set-to-sha384.patch && \
    patch --directory=intel-pfr-signing-utility/ --strip=1 < $USERHOME/patch/0003-Fix-signature-RS-extration-error.patch && \
    mkdir $USERHOME/build && \
    cd $USERHOME/build && \
    cmake ../intel-pfr-signing-utility && \
    make

RUN sudo cp $USERHOME/build/intel-pfr-signing-utility /bin && \
    sudo chmod 777 /bin/intel-pfr-signing-utility

USER $USERNAME
WORKDIR $USERHOME
