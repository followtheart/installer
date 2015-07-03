sudo apt-get install build-essential

sudo apt-get build-dep emacs24

wget http://ftp.gnu.org/gnu/emacs/emacs-24.4.tar.gz

tar -xzvf emacs-24.4.tar.gz

cd emacs-24.4

./configure --prefix=/opt/emacs 

make

apt-get install checkinstall

checkinstall
