adduser -D ftp1
echo ftp1:qwerty | chpasswd
/usr/sbin/pure-ftpd -Y 2 -p 30000:30000 -P 192.168.99.100