#! /bin/bash

echo "Update servidor"
apt-get update 
apt-get upgrade -y
echo "Instalando Apache"
apt-get install apache2 -y
echo "Instalando Unzip"
apt-get install unzip -y
cd /tmp
echo "Baixando conteudo"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando conteudo"
unzip main.zip
cd linux-site-dio-main
echo "Instalando conteudo no apache"
cp -R * /var/www/html/
