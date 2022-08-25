#! bin/bash

echo "Atualizando servidor..."
apt update
apt upgrade -y

echo "Instalando o apache..."
apt install apache2 -y

echo "Instalando o unzip..."
apt install unzip -y

echo "Realizando download da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando aplicação..."
unzip main.zip
cd /tmp/linux-site-dio-main/
cp -R * /var/www/html/

echo "FIM....."