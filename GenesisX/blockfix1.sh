#!/bin/bash

blockcount="$(/var/ALQO/genesisx-cli --datadir=/var/ALQO/data getblockhash 208151)"
echo $blockcount

if [ "$blockcount" != "c9716f47ba942bff1d9f84a12065df768248522572cbaf3c8e56772abda1c3d8" ]
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
