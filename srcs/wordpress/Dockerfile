FROM alpine

RUN apk update && apk add bash && apk add nginx php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib \
php7-curl php7-mbstring php7-json php7-session

RUN rm -f /etc/nginx/conf.d/default.conf && rm -f /etc/php7/php-fpm.d/www.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY www.conf /etc/php7/php-fpm.d/www.conf
RUN mkdir /run/nginx && chown -R nginx:root /run/nginx
RUN wget http://wordpress.org/latest.tar.gz && mkdir /usr/share/webapps
RUN mv latest.tar.gz /usr/share/webapps/
RUN cd /usr/share/webapps && tar -xzvf latest.tar.gz && rm -f latest.tar.gz
RUN chmod -R a+x /usr/share/webapps/
COPY wp-config-sample.php.tmp /wp-config-sample.php.tmp
COPY start.sh /start.sh
#CMD tail -f /dev/null
CMD ["sh", "start.sh"]
