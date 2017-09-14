#!/bin/bash

apt install ufw -y > /dev/null
ufw enable > /dev/null

ipsv4="192.168.1.0/24"
ipsv6=""

for ip in $ipsv4
do
  echo -n "$ip "
  ufw allow from $ip to any port 80 proto tcp
  ufw allow from $ip to any port 40365 proto tcp
done

ufw allow any to any port 32400 proto tcp

ufw reload > /dev/null
