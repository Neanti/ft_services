FROM alpine

RUN apk update && apk add bash && apk add nginx php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib \
php7-curl php7-mbstring php7-json php7-session && apk add phpmyadmin

RUN rm -f /etc/nginx/conf.d/default.conf && rm -f /etc/php7/php-fpm.d/www.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY www.conf /etc/php7/php-fpm.d/www.conf
RUN mkdir /run/nginx && chown -R nginx:root /run/nginx
RUN chmod -R a+x /usr/share/webapps/phpmyadmin
RUN chmod 644 /usr/share/webapps/phpmyadmin/config.inc.php
COPY start.sh /
COPY config.inc.php.tmp /
CMD ["sh", "start.sh"]
#CMD tail -f /dev/null
