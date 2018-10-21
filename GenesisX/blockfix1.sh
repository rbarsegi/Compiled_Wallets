#!/bin/bash

blockcount="$(/var/ALQO/genesisx-cli --datadir=/var/ALQO/data getblockhash 208104)"
echo $blockcount

if [ "$blockcount" != "55eb1124ea462c1eea3d88f3b6dc96eb7194eb48edb626fd3ca25f4ae13b47da" ]
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
