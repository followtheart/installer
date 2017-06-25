FROM followtheart/ubuntu:aliyun
MAINTAINER followtheart "followtheart@outlook.com"
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       nodejs npm \
    && ln -s $(which nodejs) /usr/bin/node \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*  

CMD bash
