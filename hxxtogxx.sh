#!/bin/bash

sudo rm /var/ALQO/hexxcoind /var/ALQO/hexxcoin-cli
sudo pkill -9 hexxcoind
sleep 5
sudo pkill -9 hexxcoind
sleep 3

sudo wget https://github.com/rbarsegi/Compiled_Wallets/raw/master/GravityCoin/config_files/config.ini -O /var/www/html/backend/config.ini && chmod -f 777 /var/www/html/backend/config.ini
sudo wget https://github.com/rbarsegi/Compiled_Wallets/raw/master/GravityCoin/config_files/configfile -O /var/www/html/backend/configfile && chmod -f 777 /var/www/html/backend/configfile

sudo mv /var/ALQO/hexxcoin.conf /var/ALQO/GravityCoin.conf

sudo wget https://github.com/hexxcointakeover/hexxcoin/releases/download/4.0.5.0/linux-x64.tar.gz -O /var/ALQO/gxx.tar.gz
sudo tar -zxvf /var/ALQO/gxx.tar.gz -C /var/ALQO
rm /var/ALQO/gxx.tar.gz
