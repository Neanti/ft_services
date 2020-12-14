FROM alpine:latest

RUN apk update && apk upgrade && apk add bash && apk add mariadb mariadb-client && apk add --update mysql-client
COPY mysql_start.sh /
EXPOSE 3306
RUN rm -f /etc/my.cnf.d/mariadb-server.cnf
RUN mkdir /data
COPY ./data /data
COPY mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
RUN mkdir /run/mysqld && chown -R mysql:root /run/mysqld
CMD ["sh", "/mysql_start.sh"]
#CMD tail -f /dev/null
