scp 90-interfaces root@172.28.255.2:/usr/local/etc/rc.syshook.d/carp/
ssh -t root@172.28.255.2 chmod 755 /usr/local/etc/rc.syshook.d/carp/90-interfaces

scp 90-interfaces root@172.28.255.3:/usr/local/etc/rc.syshook.d/carp/
ssh -t root@172.28.255.3 chmod 755 /usr/local/etc/rc.syshook.d/carp/90-interfaces
