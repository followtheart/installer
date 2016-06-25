#Name docker.sh
#
#Reference
#http://docs.docker.com/linux/step_one/
#
#Dependencies
#1.wget
#2.docker
#
#By followtheart
sudo apt-get update
 sudo apt-get install apt-transport-https ca-certificates
 sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
 deb https://apt.dockerproject.org/repo ubuntu-trusty main
 sudo apt-get purge lxc-docker
  apt-cache policy docker-engine
  apt-get upgrade
  
#sudo apt-get install wget

#wget -qO- https://get.docker.com/ | sh

docker run hello-world
