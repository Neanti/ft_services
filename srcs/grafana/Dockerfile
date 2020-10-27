FROM alpine
RUN apk add bash && printf "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories 	&& apk add grafana@testing 
#CMD tail -f /dev/null
COPY ds1.yaml /usr/share/grafana/conf/provisioning/datasources/ds1.yaml
RUN rm -rf /usr/share/grafana/public/dashboards/home.json
COPY home.json /usr/share/grafana/public/dashboards/home.json
COPY start.sh /start.sh
CMD ["sh", "start.sh"]
