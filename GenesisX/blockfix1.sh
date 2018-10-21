#!/bin/bash

blockcount="$(/var/ALQO/genesisx-cli --datadir=/var/ALQO/data getblockhash 208000)"
echo $blockcount

if [ "$blockcount" != "a05a71e57024728643e8e352bb96c113c787c06e131ccf257bbea21f34d7ddea" ]
then
  echo "no match";
  sudo mv /var/ALQO/genesisxd /root/genesisxd
  echo "1" > /var/ALQO/updating
  sudo pkill -9 genesisxd
  sleep 5
  sudo mv /var/ALQO/data/genesisx.conf /var/ALQO/genesisx.conf
  cd /var/ALQO/data
  sudo rm -r *
  sudo mv /var/ALQO/genesisx.conf /var/ALQO/data/genesisx.conf
  sudo mv /root/genesisxd /var/ALQO/genesisxd
  echo "0" > /var/ALQO/updating
fi
