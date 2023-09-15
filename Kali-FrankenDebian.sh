#!/bin/bash

echo " [!!] Warning This Code will definitely break the Linux Distribution "
echo " [!!!] We add the repo to the distro and change the kali repo's priority to minimal - Line number : 25 "
echo " [!] Read the source before you run the file "
echo " [!] Instruction given for both kali rolling and kali last snapshot "

# Installation
echo '[::] Adding kali repository to apt sources [::]
sudo touch /etc/apt/sources.list.d/kali.list
sudo chmod 666 /etc/apt/sources.list.d/kali.list
sudo echo 'deb http://kali.download/kali kali-last-snapshot main non-free contrib' > /etc/apt/sources.list.d/kali.list
#sudo echo 'deb http://kali.download/kali kali-last-snapshot main non-free contrib' > /etc/apt/sources.list.d/kali.list
sudo chmod 644 /etc/apt/sources.list.d/kali.list
sudo apt install gnupg
wget 'https://archive.kali.org/archive-key.asc'
sudo apt-key add archive-key.asc
rm archive-key.asc
echo "[::] setting low priority for kali repository [::]"
sudo touch /etc/apt/preferences.d/kali.pref
sudo chmod 666 /etc/apt/preferences.d/kali.pref 
echo 'Package: *'>/etc/apt/preferences.d/kali.pref
echo 'Pin: release a=kali-last-snapshot'>>/etc/apt/preferences.d/kali.pref
echo 'Pin: release a=kali-rolling'>>/etc/apt/preferences.d/kali.pref
echo 'Pin-Priority: 50'>>/etc/apt/preferences.d/kali.pref
sudo chmod 644 /etc/apt/preferences.d/kali.pref
echo "[::] Install completed. [::]"
sudo apt update && sudo apt upgrade -y

echo "[!] Now you can easily install all Kali Linux Tools"
echo "[!] Visit = https://wiki.debian.org/DontBreakDebian"
echo "[!] Now you can install apps usinng command :: sudo apt install -t kali-last-snapshot <application name> :: "
 

