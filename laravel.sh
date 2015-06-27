#laravel 配置
sh composer.sh
composer global require "laravel/installer=~1.1"

#添加laravel常用的php组件
sudo apt-get install php5-curl php5-mcrypt php5-gd
sudo service apache2 restart

echo 'export PATH=$PATH:"~/.composer/vendor/bin/"' >> /etc/profile

sh /etc/profile

