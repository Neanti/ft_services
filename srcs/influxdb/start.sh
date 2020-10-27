if [ ! -e $/var/lib/influxdb/data ]
then
        cp -R /influxdb/* /var/lib/influxdb/
fi
influxd run -config /etc/influxdb.conf
