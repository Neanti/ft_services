FROM alpine:latest

RUN apk update && apk add bash && apk add openssl && \
    printf "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add pure-ftpd@testing
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=FR/ST=FR/L=FR/O=FR/CN=augay' -keyout /etc/ssl/private/pure-ftpd.pem -out /etc/ssl/certs/pure-ftpd.crt
RUN cat /etc/ssl/certs/pure-ftpd.crt >> /etc/ssl/private/pure-ftpd.pem
COPY ftps_start.sh /
EXPOSE 21 30000
CMD ["sh", "ftps_start.sh"]
