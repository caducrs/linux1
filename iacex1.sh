#!/bin/bash

# DIO Bootcamp 

echo "Inicializando o Script:"

echo "Criando os diretórios:"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Grupos sendo Criados:"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários e atribuindo aos grupos:"

useradd ana -c "Ana" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_ADM
useradd bruno -c "Bruno" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_ADM
useradd clara -c "Clara" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_ADM

useradd daniel -c "Daniel" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_VEN
useradd elena -c "Elena" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_VEN
useradd felipe -c "Felipe" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_VEN

useradd gabi -c "Gabi" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_SEC
useradd hugo -c "Hugo" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_SEC
useradd iris -c "Iris" -s /bin/bash -m -p $(openssl passwd -6 102030) -G GRP_SEC


echo "Definindo os donos e os grupos dos diretórios:"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo as permissões de usuário nos diretórios:"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Script finalizado com Sucesso!!"
