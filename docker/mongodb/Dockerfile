FROM followtheart/ubuntu:aliyun

MAINTAINER followtheart "followtheart@outlook.com"

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927 \
    && echo 'deb http://mirrors.aliyun.com/mongodb/apt/ubuntu xenial/mongodb-org/stable multiverse' | \
    tee /etc/apt/sources.list.d/mongodb.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
       mongodb-org mongodb-org-server mongodb-org-shell mongodb-org-tools  \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*  

CMD  ["bash","-c", "/usr/bin/mongod --config /etc/mongod.conf"]
