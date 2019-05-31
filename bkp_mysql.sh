#!/usr/bin/env bash


DIR = ~/backup_mysql
DATA = $(date +\%F__%R)


#apaga arquivos com mais de 7 dias para manutencao de espaço
echo "Removendo arquivos com mais de 7 dias..."
find ~/backup_mysql -type f -mtime +7 -exec rm {} +
#gera o backup de toda a base mysql
echo "Gerando backup das bases de dados MySql..."

#mysqldump --defaults-extra-file=~/mysql_config.cnf teste > ~/backup_mysql/$(date +\%F__%R)_full_teste.sql
#mysqldump --defaults-extra-file=~/mysql_config.cnf exchange > ~/backup_mysql/$(date +\%F__%R)_full_exchange.sql
mysqldump --defaults-extra-file=~/mysql_config.cnf winco > ~/backup_mysql/$(date +\%F__%R)_full_winco.sql

#comprimi os arquivos gerados
echo "Comprimindo arquivos .sql para 7zip..."
7z a ~/backup_mysql/$(date +\%F__%R)_full.7z ~/backup_mysql/*.sql
#apaga os arquivos originais sql, deixa apenas compactado
echo "Excluindo arquivos .sql..."
rm -f ~/backup_mysql/*.sql
#envia o backup para dropbox
echo "Enviando arquivos compactados para o DropBox"
/opt/Dropbox-Uploader/dropbox_uploader.sh upload ~/backup_mysql/* /
