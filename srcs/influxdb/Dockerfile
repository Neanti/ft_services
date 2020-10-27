FROM alpine
RUN apk add bash influxdb
COPY start.sh /start.sh
COPY ./influxdb /influxdb
RUN rm -rf /etc/influxdb.conf
COPY influxdb.conf /etc/influxdb.conf
#CMD tail -f /dev/null
CMD ["sh", "start.sh"]

