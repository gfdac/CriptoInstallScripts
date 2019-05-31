#!/bin/bash

#atualiza os codigos dos projetos com base no github

cd /var/www/html/api
pwd
sudo git config credential.helper store
sudo git pull origin master

cd /var/www/html/ativos
pwd
sudo git config credential.helper store
sudo git pull origin master

#modelo bithaus uinversal 14bit clone
cd /var/www/html/ex
pwd
sudo git config credential.helper store
sudo git pull origin master

#modelo bithaus fiat
cd /var/www/html/bth
pwd
sudo git config credential.helper store
sudo git pull origin master

cd /var/www/html/token
pwd
sudo git config credential.helper store
sudo git pull origin master


cd /home/ubuntu/scripts_coin
pwd
sudo git config credential.helper store
sudo git pull origin master