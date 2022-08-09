#!/usr/bin/env bash

echo "Atualizando o servidor..."
sleep 2

apt-get update
apt-get upgrade
apt-get install apache2
apt-get install unzip

echo "Baixando arquivo e configurando..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


