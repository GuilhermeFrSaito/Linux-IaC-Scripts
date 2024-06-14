#!/bin/bash

# Criando os diretórios
echo "Criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criando os grupos
echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criando os usuarios
echo "Criando os usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -e -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -e -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -e -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -e -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -e -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -e -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -e -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -e -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -e -G GRP_SEC

# Criando as associações de pastas e grupos
echo "Criando as associações de pastas e grupos..."

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# Modificando as permissões de cada pasta
echo "Modificando as permissões de pastas..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado!"
