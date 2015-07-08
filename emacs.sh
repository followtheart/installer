sudo apt-get install build-essential

sudo apt-get build-dep emacs24 libncurses5-dev

wget http://ftp.gnu.org/gnu/emacs/emacs-24.4.tar.gz

tar -xzvf emacs-24.4.tar.gz

cd emacs-24.4

./configure --prefix=/opt/emacs --without-x

make

apt-get install checkinstall

checkinstall


#复制配置文件
cd ~
mv .emacs.d .emacs.d.bak
git clone https://github.com/followtheart/emacs.d.git .emacs.d
git checkout prelude
