FROM alpine
RUN apk add bash && printf "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk add telegraf@testing
RUN rm /etc/telegraf.conf
COPY start.sh /start.sh
COPY telegraf.conf /etc/telegraf.conf
EXPOSE 8125
CMD ["sh", "start.sh"]


