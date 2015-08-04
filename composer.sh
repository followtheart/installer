#安装composer
#https://github.com/composer/composer

#安装php5
sudo apt-get install php5 php5-cli -y

#安装
curl -sS https://getcomposer.org/installer | php

#移动到可执行目录
mv composer.phar /usr/local/bin/composer
