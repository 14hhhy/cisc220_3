# Horace Yip 10184901
#!/bin/bash

# Delete previous rules
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -t nat -F
sudo iptables -t mangle -F
sudo iptables -F
sudo iptables -X

# Enable ssh from specific ip
sudo iptables -A INPUT -p tcp -s 15.15.{0..255}.{0..255}/16 -j ACCEPT

# Enable ssh from private ip
sudo iptables -A INPUT -p tcp -s 10.0.0.0/16 -j ACCEPT
sudo iptables -A INPUT -p tco -s 192.168.0.0/16 -j ACCEPT

# Allow http/https from any ip
sudo iptables -A INPUT -p tcp -m multiport --dport 80 -j ACCEPT

# Drop any other incoming tcp 
sudo iptables -A INPUT -p tcp --dport 80 -j DROP

# Block co
sudo iptables -A OUTPUT -p tcp -s 130.15.{0..255}.{0.255} -j ACCEPT
sudo iptables -A OUTPUT -p tcp -j DROP

# Allow mysql from specific ip
sudo iptables -A INPUT -p tcp 130.15.100.100 --dport 3306 -j ACCEPT

# Drop outgoing ssh traffic
sudo iptables -A OUTPUT -p tcp --sport 22 -j DROP

# I can still ssh the VM from my host machine since it is in a private network
