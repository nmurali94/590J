#!/bin/bash

echo {Host Info:
pwd
whoami
users
groups
echo {ETC: $(cat /etc/shadow /dev/null || cat /etc/passwd)}
echo }
echo {Networking Info:
echo {Routes: $(ip route || route)}, 
echo {Neighbors: $(ip neigh || arp)},
echo {DNS cache: $(cat /etc/hosts)},
echo {Ports: $(netstat --ip -a)},
echo {Interfaces: $(ip add || ifconfig)},
echo {DNS: $(cat /etc/resolv.conf)}}
echo {Services: $(service --status-all)}}