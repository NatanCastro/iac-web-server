#!/bin/bash

# Atualizando pacotes
apt update
apt upgrade -y

# Instalando servidor apache
# e o programa unzip para descompactar o arquivo zip do site que sera usado para teste
apt install apache2 zip -y

# Pegando o site teste via wget e descompactando-o
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

# Copiando arquivos para a pasta do server

cp -R linux-site-dio-main/* /var/www/html
