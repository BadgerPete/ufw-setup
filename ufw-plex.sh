#!/bin/sh

ips-v4="192.168.1.0/24"
ips-v6=""

apt install ufw -y > /dev/null
ufw enable > /dev/null

for ip in ips-v4; do ufw allow from $ip to any port 22 proto tcp; done
for ip in ips-v4; do ufw allow from $ip to any port 40365 proto tcp; done
for ip in ips-v4; do ufw allow any to any port 32400 proto tcp; done

#for ip in ips-v6; do ufw allow from $ip; done

ufw reload > /dev/null

# Examples to retrict to port 80
#for ip ip ips-v4; do ufw allow from $ip to any port 80 proto tcp; done
#for ip in ips-v6; do ufw allow from $ip to any port 80 proto tcp; done
