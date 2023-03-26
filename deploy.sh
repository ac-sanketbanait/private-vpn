#!/bin/sh

clear

echo 'Remove old version & build app cluster ...'
echo ''

docker compose -p private-vpn down --remove-orphans
docker compose -p private-vpn build

echo ''
echo '########################################## Done ##########################################'
echo ''

echo 'Prepare project folders ...'
echo ''

mkdir -p ./.app_data
mkdir -p ./.app_data/vpn

touch ./.app_data/vpn/vpn-config.ovpn

ls -l ./.app_data

echo ''
echo '########################################## Done ##########################################'
echo ''

echo 'Start app cluster ...'

docker compose -p private-vpn up -d

echo ''
echo '########################################## Done ##########################################'
echo ''

echo 'Prepare VPN config file ...'
echo ''

sleep 5

curl localhost:8001 > ./.app_data/vpn/vpn-config.ovpn

echo ''
echo '########################################## Done ##########################################'
echo ''
