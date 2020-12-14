#sed 's/MYSQL_IP/'$MYSQL_SERVICE_SERVICE_HOST'/g' wp-config-sample.php.tmp > /usr/share/webapps/wordpress/wp-config.php
mv wp-config-sample.php.tmp /usr/share/webapps/wordpress/wp-config.php
php-fpm7
nginx -g 'daemon off;'
