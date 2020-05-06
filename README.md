This is a quick Opnsense hack that allows for active/backup opnsense routing using VRRP on the local network and takes the DCHP upstream interface offline.

This script takes two arguments the primary node first, the secondary node after. It is recommended to run this every time any member of the HA pair reboots, or on a cron schedule. You should also have your SSH key saved under the root user. System -> Access -> Users -> root

```
git clone ssh://git@git.nertwork.com:2222/jfarr/quick-opnsense-hack.git
cd quick-opnsense-hack
./copy-int.sh 192.168.1.2 192.168.1.3
```
