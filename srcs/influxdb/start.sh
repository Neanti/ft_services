if [ ! -e $/var/lib/influxdb/data ]
then
        mv /influxdb/* /var/lib/influxdb/
fi
rm -rf /influxdb
influxd run -config /etc/influxdb.conf
