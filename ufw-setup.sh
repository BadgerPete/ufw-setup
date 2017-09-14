#!/bin/bash

apt install ufw -y > /dev/null
ufw enable > /dev/null

ipsv4="192.168.1.0/24"
ipsv6=""

for ip in $ipsv4
do
  echo -n "$ip "
  ufw allow from $ip to any port 22 proto tcp
done

ufw reload > /dev/null
