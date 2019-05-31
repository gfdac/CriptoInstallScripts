#!/usr/bin/env bash

echo "Bitcoin Wallet";
7z a $HOME/backup/btc_wallet_$(date +\%F__%R).7z $HOME/.bitcoin/wallet.dat

#echo "Bitcoin Folder";
#7z a $HOME/backup/btc_folder_$(date +\%F__%R).7z $HOME/.bitcoin/*

echo "Bitcoin Cash Wallet";
7z a $HOME/backup/bch_wallet_$(date +\%F__%R).7z $HOME/.bitcoin_cash/wallet.dat

#echo "Bitcoin Cash Folder";
#7z a $HOME/backup/bch_folder_$(date +\%F__%R).7z $HOME/.bitcoin_cash/*

echo "ZCash Wallet";
7z a $HOME/backup/zec_wallet_$(date +\%F__%R).7z $HOME/.zcash/wallet.dat

#echo "ZCash Folder";
#7z a $HOME/backup/zec_folder_$(date +\%F__%R).7z $HOME/.zcash/*

echo "Litecoin Wallet";
7z a $HOME/backup/ltc_wallet_$(date +\%F__%R).7z $HOME/.litecoin/wallet.dat

#echo "Litecoin Folder";
#7z a $HOME/backup/ltc_folder_$(date +\%F__%R).7z $HOME/.litecoin/*

echo "Dogecoin Wallet";
7z a $HOME/backup/doge_wallet_$(date +\%F__%R).7z $HOME/.dogecoin/wallet.dat

#echo "Dogecoin Folder";
#7z a $HOME/backup/doge_folder_$(date +\%F__%R).7z $HOME/.dogecoin/*

echo "Dashcoin Wallet";
7z a $HOME/backup/dash_wallet_$(date +\%F__%R).7z $HOME/.dashcore/wallet.dat

#echo "Dashcoin Folder";
#7z a $HOME/backup/dash_folder_$(date +\%F__%R).7z $HOME/.dashcore/*

echo "Ethereum private keys";
7z a $HOME/backup/eth_keystore_$(date +\%F__%R).7z $HOME/.ethereum/keystore/*

#echo "Ethereum Folder";
#7z a $HOME/backup/eth_folder_$(date +\%F__%R).7z $HOME/.ethereum/*

#echo "MySQL Database";
#$HOME/bkp_mysql.sh

echo "Bash Scripts";
7z a $HOME/backup/bash_script_$(date +\%F__%R).7z $HOME/*.sh

echo "Sites Folder";
#sudo 7z a $HOME/backup/sites_folder_$(date +\%F__%R).7z /var/www/html/*

echo "uploading all to DropBox";
/opt/Dropbox-Uploader/dropbox_uploader.sh upload $HOME/backup/* /core/
