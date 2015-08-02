sudo apt-get install -y build-essential build-dep emacs24 libncurses5-dev

if [ ! -f "emacs-24.4.tar.gz" ]; then
    wget http://ftp.gnu.org/gnu/emacs/emacs-24.4.tar.gz
fi
tar -xzvf emacs-24.4.tar.gz

cd emacs-24.4

./configure --prefix=/opt/emacs --without-x

make

sudo apt-get install -y checkinstall

sudo checkinstall


#复制配置文件
cd ~
mv .emacs.d .emacs.d.bak
git clone https://github.com/followtheart/emacs.d.git .emacs.d
git checkout prelude
