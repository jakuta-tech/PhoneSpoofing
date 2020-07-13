#!/usr/bin/bash
rm -rf node_modules
echo "[!] Installing package"
sleep 1

cek=(ls | grep "ngrok")
amd=$(dpkg --print-architecture | grep "amd64")
arm=$(dpkg --print-architecture | grep "arm")

if [[ $cek == "ngrok" ]]; then

else

if [[ $amd == "amd64" ]]; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
fi

if [[ $arm == "arm" ]]; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
unzip ngrok-stable-linux-arm.zip
fi

fi

apt-get install nodejs -y
npm install
node spoof
