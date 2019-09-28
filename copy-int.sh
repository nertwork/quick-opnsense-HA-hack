#!/usr/bin/env bash
primary_opnsense=$1
secondary_opnsense=$2

ssh-copy-id root@$primary_opnsense
ssh-copy-id root@$secondary_opnsense

scp 90-interfaces root@$primary_opnsense:/usr/local/etc/rc.syshook.d/carp/
ssh -t root@$primary_opnsense chmod 755 /usr/local/etc/rc.syshook.d/carp/90-interfaces

scp 90-interfaces root@$secondary_opnsense:/usr/local/etc/rc.syshook.d/carp/
ssh -t root@$secondary_opnsense chmod 755 /usr/local/etc/rc.syshook.d/carp/90-interfaces

scp 100-stop root@$secondary_opnsense:/usr/local/etc/rc.syshook.d/start/
ssh -t root@$secondary_opnsense chmod 755 /usr/local/etc/rc.syshook.d/carp/100-stop
