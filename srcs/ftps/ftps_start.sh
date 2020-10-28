adduser -D augay
echo augay:password | chpasswd
/usr/sbin/pure-ftpd -Y 2 -p 30000:30000 -P ftps-service
