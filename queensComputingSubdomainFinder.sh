# Horace Yip 10184901
#!/bin/bash

printf "IP Address\t"; printf "Sub-Domain\n"
for ip in 130.15.{0..255}.{0..255}
do
domain=$(nslookup $ip | awk '/name = /{print $4}')
printf "$ip\t"; printf "${domain%"."}\n"
done
