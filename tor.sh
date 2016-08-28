#!/bin/sh
cat "deb http://deb.torproject.org/torproject.org trusty main" >>  /etc/apt/sources.list.d/tor-trusty.list
cat "deb-src http://deb.torproject.org/torproject.org trusty main" >>  /etc/apt/sources.list.d/tor-trusty.list

gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -

apt-get update
apt-get install tor 
