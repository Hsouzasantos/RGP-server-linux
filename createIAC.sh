#!/bin/bash

echo "Criando pastas de uso"

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRp_SEC

echo "Criando Usuarios"

useradd hugo -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM
useradd carminha -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN
useradd carla -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC

echo "permissoes dos diretorios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 / sec
chmod 777 /public

echo "Servidor montado"
