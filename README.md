This is a quick Opnsense hack that allows for active/backup opnsense routing using VRRP on the local network and takes the DCHP upstream interface offline.

This script takes two arguments the primary node first, the secondary node after.

```
git clone ssh://git@git.nertwork.com:2222/jfarr/quick-opnsense-hack.git
cd quick-opnsense-hack
./copy-int.sh 192.168.1.2 192.168.1.3
```
