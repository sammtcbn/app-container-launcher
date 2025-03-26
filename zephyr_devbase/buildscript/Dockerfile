FROM ubuntu:22.04

ARG USERNAME=foo
ARG USERHOME=/home/$USERNAME

ENV TZ=Asia/Taipei
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./prerequisite/zephyr-sdk-0.16.9 $USERHOME/zephyr-sdk-0.16.9
COPY ./prerequisite/python_requirements $USERHOME/python_requirements

# install basic package
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y autoremove && \
  apt-get -y autoclean && \
  apt-get install -y --no-install-recommends curl vim tree wget lsb-release git sudo tzdata locales git xz-utils unzip file make gcc build-essential automake autoconf libtool m4 gperf ccache gcc-multilib g++-multilib apt-utils bsdmainutils sshpass cmake device-tree-compiler

# Install required python packages for Zephyr develop environment
RUN apt-get install -y --no-install-recommends python3-dev python3-pip python3-setuptools python3-tk python3-wheel python-is-python3

# Install required packages for Zephyr develop environment
RUN apt-get install -y --no-install-recommends ninja-build dfu-util device-tree-compiler libsdl2-dev libmagic1

RUN locale-gen "en_US.UTF-8"

RUN rm -rf /var/lib/apt/lists/*

#RUN useradd -ms /bin/bash $USERNAME && echo "foo:bar" | chpasswd && adduser $USERNAME sudo
RUN useradd -ms /bin/bash $USERNAME
RUN echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir -p $USERHOME/workspace

RUN chown -R $USERNAME:$USERNAME $USERHOME

USER $USERNAME

WORKDIR $USERHOME

# Install west
RUN pip3 --no-cache-dir install --user -U west && \
    echo 'export PATH=~/.local/bin:"$PATH"' >> ~/.bashrc
#    source ~/.bashrc

# install zephyr SDK
WORKDIR $USERHOME/zephyr-sdk-0.16.9
RUN ./setup.sh -t all -c

RUN touch ~/.zephyrrc && \
  echo "export ZEPHYR_TOOLCHAIN_VARIANT=zephyr" > ~/.zephyrrc && \
  echo "export ZEPHYR_SDK_INSTALL_DIR=/home/foo/zephyr-sdk-0.16.9" >> ~/.zephyrrc

# install required python packages for Zephyr develop environment
RUN pip3 --no-cache-dir install --user -r $USERHOME/python_requirements/requirements.txt
#RUN rm -rf $USERHOME/python_requirements/

#ENTRYPOINT ["/entrypoint.sh"]

USER $USERNAME
WORKDIR $USERHOME

ENV PATH=/home/foo/.local/bin:$PATH

# Launch bash shell by default
CMD ["/bin/bash"]
