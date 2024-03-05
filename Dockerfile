FROM debian:buster

RUN apt-get update
RUN apt-get install build-essential make cmake wget autogen autoconf automake -y
RUN wget https://github.com/steward-fu/nds_miyoo/releases/download/assets/toolchain.tar.gz \
  && tar xvf toolchain.tar.gz \
  && mv mmiyoo /opt \
  && mv prebuilt /opt
RUN export PATH=/opt/mmiyoo/bin/:$PATH
WORKDIR sdl2_miyoo
