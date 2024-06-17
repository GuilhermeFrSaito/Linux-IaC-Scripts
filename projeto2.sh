#!/bin/bash

# Script de Provisionamento - Servidor WEB

echo "Iniciando a atualização do sistema..."

apt-get update
apt-get upgrade -y

echo "Sistema atualizado."
echo "Instalando o servidor de arquivos apache..."

apt-get install apache2 -y

echo "Servidor instalado."
echo "Instalando o unzip..."

apt-get install unzip -y

echo "Unzip instalado."
echo "Fazendo o download dos arquivos da aplicação..."

cd /tmp
mkdir conteudo
cd conteudo
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos..."

unzip main.zip
cd linux-site-dio-main

echo "Movendo arquivos para a pasta de destino..."

mv -R * /var/www/html/ -y

echo "Finalizado!"
