#!/bin/bash


echo "Inicializando o Script:"

echo "Criando os diretórios:"

mkdir /publico
mkdir /adm
mkdir /vend
mkdir /sec

echo "Grupos sendo Criados:"

groupadd GRP_ADM
groupadd GRP_VEND
groupadd GRP_SEC

echo "Criando os usuários e atribuindo aos grupos:"

useradd ana -m -s /bin/bash -p $(openssl passwd -crypt S3311224) -G GRP_ADM
useradd bruno -m -s /bin/bash -p $(openssl passwd -crypt S3311224) -G GRP_ADM
useradd clara -m -s /bin/bash -p $(openssl passwd -crypt S3311224) -G GRP_ADM

useradd daniel -m -s /bin/bash -p $(openssl passwd -crypt S3311224) -G GRP_VEND
useradd elena -m -s /bin/bash -p $(openssl passwd -crypt S3311224) -G GRP_VEND
useradd felipe -m -s /bin/bash -p $(openssl passwd -crypt S3311224) -G GRP_VEND

useradd gabi -m -s /bin/bash -p $(openssl passwd -crypt S3311224) -G GRP_SEC
useradd hugo -m -s /bin/bash -p $(openssl passwd -crypt S3311224) -G GRP_SEC
useradd iris -m -s /bin/bash -p $(openssl passwd -crypt S3311224) -G GRP_SEC


echo "Definindo os donos e os grupos dos diretórios:"

chown root:GRP_ADM /adm
chown root:GRP_VEN /vend
chown root:GRP_SEC /sec

echo "Definindo as permissões de usuário nos diretórios:"

chmod 777 /publico
chmod 770 /adm
chmod 770 /vend
chmod 770 /sec

echo "Sucesso @caducrs!!"
