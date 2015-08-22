#laravel 配置
##第一步安装composer
echo "laravel.sh-installing composer"
curl -sS https://raw.githubusercontent.com/followtheart/installer/master/composer.sh | sh

##第二步安装laravel-framework
echo "laravel.sh-composer global require \"laravel/installer=~1.1\""
composer global require "laravel/installer=~1.1"

#添加laravel常用的php组件
echo "laravel.sh-install php5-curl php5-mcrypt php5-gd..."
sudo apt-get install php5-curl php5-mcrypt php5-gd
sudo service apache2 restart

echo 'export PATH=$PATH:"~/.composer/vendor/bin/"' >> /etc/profile

source /etc/profile

