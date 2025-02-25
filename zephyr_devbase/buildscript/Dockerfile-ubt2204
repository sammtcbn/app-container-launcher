FROM ubuntu:22.04


ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./prerequisite/zephyr-sdk-0.16.9 /home/foo/zephyr-sdk-0.16.9
COPY ./prerequisite/python_requirements /home/foo/python_requirements

# install basic package
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y autoremove && \
  apt-get -y autoclean && \
  apt-get -y install curl vim tree wget lsb-release git sudo tzdata locales git xz-utils file make gcc build-essential automake autoconf libtool m4 gperf ccache gcc-multilib g++-multilib apt-utils bsdmainutils sshpass cmake device-tree-compiler

# Install required python packages for Zephyr develop environment
RUN apt-get install -y --no-install-recommends python3-dev python3-pip python3-setuptools python3-tk python3-wheel python-is-python3

# Install required packages for Zephyr develop environment
RUN apt-get install -y --no-install-recommends ninja-build dfu-util device-tree-compiler libsdl2-dev libmagic1

RUN locale-gen "en_US.UTF-8"

RUN useradd -ms /bin/bash foo && echo "foo:bar" | chpasswd && adduser foo sudo

RUN chown -R foo:foo /home/foo

USER foo

WORKDIR /home/foo

# Install west
RUN pip3 --no-cache-dir install --user -U west && \
    echo 'export PATH=~/.local/bin:"$PATH"' >> ~/.bashrc
#    source ~/.bashrc

# install zephyr SDK
WORKDIR /home/foo/zephyr-sdk-0.16.9
RUN ./setup.sh -t all -c

RUN touch ~/.zephyrrc && \
  echo "export ZEPHYR_TOOLCHAIN_VARIANT=zephyr" > ~/.zephyrrc && \
  echo "export ZEPHYR_SDK_INSTALL_DIR=/home/foo/zephyr-sdk-0.16.9" >> ~/.zephyrrc

# install required python packages for Zephyr develop environment
RUN pip3 --no-cache-dir install --user -r /home/foo/python_requirements/requirements.txt && \
  rm -rf /home/foo/python_requirements/

#ENTRYPOINT ["/entrypoint.sh"]

USER foo

WORKDIR /home/foo

ENV PATH=/home/foo/.local/bin:$PATH

# Launch bash shell by default
CMD ["/bin/bash"]
