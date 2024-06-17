#!/bin/bash

# Script de Provisionamento - Servidor WEB

echo "Iniciando a atualização do sistema..."

apt update
apt upgrade

echo "Sistema atualizado"
echo "Instalando o servidor de arquivos apache..."

apt install apache2 -y

echo "Instalando o unzip..."

apt install unzip -y

echo "Fazendo o download dos arquivos da aplicação..."

cd /tmp
mkdir conteudo
cd conteudo
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos..."

unzip main.zip
cd linux-site-dio-main

echo "Movendo arquivos para a pasta de destino..."

mv * /var/www/html/ -y

echo "Finalizado!"
