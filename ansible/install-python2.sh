#!/bin/bash

if [[ $# -eq 0 ]]
then
  echo "Please specifiy a server or group from servers.inventory"
  exit
fi
ansible $1 -i servers.inventory --sudo --user root -m raw -a 'apt-get update'
ansible $1 -i servers.inventory --sudo --user root -m raw -a 'apt-get install python-minimal -y'
