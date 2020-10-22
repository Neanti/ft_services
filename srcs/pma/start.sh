sed 's/MYSQL_IP/'$MYSQL_SERVICE_SERVICE_HOST'/g' config.inc.php.tmp > /usr/share/webapps/phpmyadmin/config.inc.php
rm /config.inc.php.tmp
php-fpm7
nginx -g 'daemon off;'

