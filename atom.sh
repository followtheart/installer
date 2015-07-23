#Name
#Atom install for Ubuntu
#Environment
#
#Dependence
#https://github.com/atom/atom/blob/master/docs/build-instructions/linux.md
#By followtheart

sudo apt-get install build-essential git libgnome-keyring-dev fakeroot

#1.Clone the Atom repository:
git clone https://github.com/atom/atom
cd atom

#2.Checkout the latest Atom release:
git fetch -p
git checkout $(git describe --tags `git rev-list --tags --max-count=1`)

#3.Build Atom:
script/build

#4.Install the atom and apm commands to /usr/local/bin by executing:
sudo script/grunt install


