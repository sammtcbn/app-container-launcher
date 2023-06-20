FROM ubuntu:bionic

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /root

# install package
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y autoremove && \
  apt-get -y autoclean && \
  apt-get install -y tzdata locales vim curl unzip

RUN locale-gen "en_US.UTF-8"

ENV LANG     en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL   en_US.UTF-8

RUN curl -fsSL https://deno.land/x/install/install.sh | sh
#RUN echo "export PATH=\$HOME/.deno/bin:\$PATH" >> $HOME/.bashrc
RUN mv /root/.deno/bin/deno /usr/bin && rm -rf /root/.deno/

