#!/bin/bash
source "/var/www/html/backend/configfile"

"$clipath" -datadir="$datapath"/ -getinfo > /var/ALQO/services/data/getinfo
"$clipath" -datadir="$datapath"/ getpeerinfo > /var/ALQO/services/data/getpeerinfo

"$clipath" -datadir="$datapath"/ ghostnode status &> /var/ALQO/services/data/masternode_status
"$clipath" -datadir="$datapath"/ ghostnode list full > /var/ALQO/services/data/masternode_list_full
"$clipath" -datadir="$datapath"/ ghostnodelist rank > /var/ALQO/services/data/masternode_list_rank


