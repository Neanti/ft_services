FROM alpine
RUN apk add bash influxdb
COPY start.sh /start.sh
#CMD tail -f /dev/null
CMD ["sh", "start.sh"]

