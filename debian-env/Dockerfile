FROM debian:12
#FROM debian:12-slim

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install basic package
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get install -y --no-install-recommends \
  tzdata locales curl vim wget && \
  apt-get -y autoremove && \
  apt-get -y autoclean && \
  apt-get -y clean && \
  rm -rf /var/lib/apt/lists/*

RUN locale-gen "en_US.UTF-8"

ENV LANG     en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
#ENV LC_ALL   en_US.UTF-8

CMD ["/bin/bash"]

USER root

WORKDIR /root
