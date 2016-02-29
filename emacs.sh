#!/bin/sh 
sudo apt-get install -y build-essential emacs24 libncurses5-dev libtinfo-dev

filename_gz="emacs-24.4.tar.gz"

dir_path="emacs-24.4"

if [ ! -f "$filename_gz" ]; then
    wget http://ftp.gnu.org/gnu/emacs/emacs-24.4.tar.gz
fi

if [ ! -d "$dir_path"]; then 
    tar -xzvf emacs-24.4.tar.gz
fi

cd emacs-24.4

./configure --prefix=/opt/emacs --without-x

make

sudo apt-get install -y checkinstall

sudo checkinstall

#复制配置文件

cd ~

mv .emacs.d .emacs.d.bak

git clone https://github.com/followtheart/emacs.d.git .emacs.d

cd .emacs.d

git checkout prelude
