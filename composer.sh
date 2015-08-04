#安装composer
#https://github.com/composer/composer

#安装php5
echo "Installing php5 and php5-cli..."
sudo apt-get install php5 php5-cli -y

#安装
echo "Installing composer..."
curl -sS https://getcomposer.org/installer | php

#移动到可执行目录
echo "mv composer.phar /usr/local/bin/composer ..."
sudo mv composer.phar /usr/local/bin/composer
