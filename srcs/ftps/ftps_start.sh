adduser -D augay
touch /home/augay/blob.txt
echo augay:password | chpasswd
/usr/sbin/pure-ftpd -Y 2 -p 30000:30005 -P 172.17.0.2
