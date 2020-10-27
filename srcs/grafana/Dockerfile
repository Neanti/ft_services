FROM alpine
RUN apk add bash && printf "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories 	&& apk add grafana@testing 
#CMD tail -f /dev/null
COPY start.sh /start.sh
CMD ["sh", "start.sh"]
