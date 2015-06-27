#laravel 配置
sh composer.sh
composer global require "laravel/installer=~1.1"


echo 'export PATH=$PATH:"~/.composer/vendor/bin/"' >> /etc/profile

sh /etc/profile

