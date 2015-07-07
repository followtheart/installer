#ubuntu下允许root用户ssh远程登录

#1. 使用apt命令安装openssh server
sudo apt-get install openssh-server

#2. 可以对 openssh server进行配置
sudo nano /etc/ssh/sshd_config
#找到PermitRootLogin no一行，改为PermitRootLogin yes

#3. 重启 openssh server

sudo service ssh restart
