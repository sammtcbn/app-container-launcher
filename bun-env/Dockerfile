FROM ubuntu

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

RUN curl -fsSL https://bun.sh/install | bash
RUN mv /root/.bun/bin/bun /usr/bin && rm -rf /root/.bun/
