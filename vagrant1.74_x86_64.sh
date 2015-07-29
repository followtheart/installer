#Name vagrant1.74_x86_64
#
#Reference
#   http://docs.vagrantup.com/v2/installation/index.html
#      
#Dependencies
#
#1.vagrant
#2.ubuntu 64
#3.virtual box
#
#By followtheart


wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.deb

dpkg -i vagrant_1.7.4_x86_64.deb

apt-get install virtualbox

vagrant init hashicorp/precise32

vagrant up
