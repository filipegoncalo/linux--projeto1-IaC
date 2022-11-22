#!/bin/bash

echo "Criando diretorios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

echo "administrativo"
useradd carlos -m -c "Carlos Adm" -s /bin/bash -p $(openssl passwd -crypt senhausuario) -G GRP_ADM
useradd maria -m -c "Maria Adm" -s /bin/bash -p $(openssl passwd -crypt senhausuario) -G GRP_ADM
useradd joao -m -c "Joao Adm" -s /bin/bash -p $(openssl passwd -crypt senhausuario) -G GRP_ADM

echo "vendas"
useradd debora -m -c "Debora Vendas" -s /bin/bash -p $(openssl passwd -crypt senhausuario) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Vendas" -s /bin/bash -p $(openssl passwd -crypt senhausuario) -G GRP_VEN
useradd roberto -m -c "Roberto Vendas" -s /bin/bash -p $(openssl passwd -crypt senhausuario) -G GRP_VEN

echo "secretariado"
useradd josefina -m -c "Josefina Secrataiado" -s /bin/bash -p $(openssl passwd -crypt senhausuario) -G GRP_SEC
useradd amanda -m -c "Amanda Secrataiado" -s /bin/bash -p $(openssl passwd -crypt senhausuario) -G GRP_SEC
useradd rogerio -m -c "Rogerio Secrataiado" -s /bin/bash -p $(openssl passwd -crypt senhausuario) -G GRP_SEC

echo "Atribuindo permissoes..."

echo "grupos"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "usurios"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado!"