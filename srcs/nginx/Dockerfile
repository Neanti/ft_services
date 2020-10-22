FROM alpine:latest

RUN apk update && apk upgrade && apk add bash && apk add openssl
RUN apk add --update openssh && apk add nginx

RUN mkdir -p /run/nginx

COPY nginx_start.sh .
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /var/www
EXPOSE 80 443 22000

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=FR/ST=FR/L=FR/O=FR/CN=augay' -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

CMD ["sh", "nginx_start.sh"]

#CMD ["/usr/sbin/nginx", "-g", "\"daemon off;\""]