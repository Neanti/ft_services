if [ ! -e $/var/lib/mysql/mysql ]
then
        mv /data/* /var/lib/mysql/
fi
mysqld -uroot --datadir=/var/lib/mysql

