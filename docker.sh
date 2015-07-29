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
sudo apt-get install wget

wget -qO- https://get.docker.com/ | sh

docker run hello-world
