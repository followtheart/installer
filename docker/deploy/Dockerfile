FROM ubuntu:14.04

MAINTAINER followtheart "followtheart@outlook.com"

COPY sources.list /etc/apt/sources.list

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       libboost-system1.55-dev libboost-filesystem1.55-dev libboost-thread1.55-dev libboost-program-options1.55-dev \
       software-properties-common zip\
       language-pack-zh-hans \
    && add-apt-repository ppa:bitcoin/bitcoin -y \
    && add-apt-repository ppa:ubuntu-toolchain-r/test -y \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
       libdb4.8++-dev git \
       libminiupnpc-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*  \
    && mkdir -p /data

WORKDIR /data

VOLUME /data

CMD ["bash","-c","/data/coind -reindex --datadir=/data"]
