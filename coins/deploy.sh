#!/bin/sh
ssh-keygen
apt-get update
apt-get install libboost-system1.55-dev libboost-filesystem1.55-dev libboost-thread1.55-dev libboost-program-options1.55-dev -y
apt-get install software-properties-common -y
apt-get install language-pack-zh-hans -y
add-apt-repository ppa:bitcoin/bitcoin
add-apt-repository ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install libdb4.8++-dev -y
apt-get install libminiupnpc-dev -y
