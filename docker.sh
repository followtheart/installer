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

sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual -y

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"

sudo apt-get update
sudo apt-get install docker-ce -y

#Or
#wget -qO- https://get.docker.com/ | sh

############docker-enter#################
cd /tmp;
wget https://www.kernel.org/pub/linux/utils/util-linux/v2.29/util-linux-2.29.tar.xz; tar xJvf util-linux-2.29.tar.xz
cd util-linux-2.29
./configure --without-ncurses && make nsenter
sudo cp nsenter /usr/local/bin
wget -P ~ https://github.com/yeasy/docker_practice/raw/master/_local/.bashrc_docker;
echo "[ -f ~/.bashrc_docker ] && . ~/.bashrc_docker" >> ~/.bashrc; source ~/.bashrc

