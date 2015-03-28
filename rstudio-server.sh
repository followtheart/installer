#RStudio Server 安装
sudo apt-get install gdebi-core -y
sudo apt-get install -y libapparmor1 # Required only for Ubuntu, not Debian
wget http://download2.rstudio.org/rstudio-server-0.98.1103-amd64.deb
sudo gdebi rstudio-server-0.98.1103-amd64.deb
