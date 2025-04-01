# ! /bin/bash

echo "Criando diretórios... "
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /dan
mkdir /car

echo "Criando grupos de usuários..."

groupadd GRP-ADM
groupadd GRP-VEN
groupadd GRP-DAN
groupadd GRP-CAR

echo "Criando usuários e adicionando eles aos grupos devidos..."

useradd -m -s /bin/bash -p $(openssl passwd -1 Senha 123) -G GRP-ADM davi
useradd -m -s /bin/bash -p $(openssl passwd -1 Senha 123) -G GRP-ADM guest1

useradd -m -s /bin/bash -p $(openssl passwd -1 Senha 123) -G GRP-VEN guest2
useradd -m -s /bin/bash -p $(openssl passwd -1 Senha 123) -G GRP-VEN guest3
useradd -m -s /bin/bash -p $(openssl passwd -1 Senha 123) -G GRP-VEN guest4

useradd -m -s /bin/bash -p $(openssl passwd -1 Senha 123) -G GRP-DAN guest5
useradd -m -s /bin/bash -p $(openssl passwd -1 Senha 123) -G GRP-DAN guest6
useradd -m -s /bin/bash -p $(openssl passwd -1 Senha 123) -G GRP-DAN guest7

useradd -m -s /bin/bash -p $(openssl passwd -1 Senha 123) -G GRP-CAR guest8
useradd -m -s /bin/bash -p $(openssl passwd -1 Senha 123) -G GRP-CAR guest9
useradd -m -s /bin/bash -p $(openssl passwd -1 Senha 123) -G GRP-CAR guest10

echo "Expecificando permissões dos diretórios... "

chown root:GRP—ADM /adm
chown root:GRP—VEN /ven
chown root:GRP—DAN /dan
chown root:GRP—CAR /car

chmod 770 /adm
chmod 770 /ven
chmod 770 /dan
chmod 770 /car
chmod 777 /publico

echo "Fim!"