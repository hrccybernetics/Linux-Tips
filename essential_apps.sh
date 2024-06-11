echo "HR-Cyber-Labs"
echo "Hey Distro Hoppers"
echo "Please run this script in /home/$USER/ directory" 
sudo apt update && sudo apt upgrade -y
sudo apt install figlet -y

#Extras
sudo apt install htop neofetch cmatrix cowsay -y
figlet "Please close all apps and work"
figlet "This script will reboot"
figlet "pc updated and upgraded"

#Firewall
figlet "firewall"
sudo apt install ufw -y
#sudo apt install firewalld firewall-config -y
echo "get the GUFW deb file from internet - sorry its not available in debian testing repo"

#Antivirus
figlet "Antivirus"
sudo apt install clamav -y
sudo apt install clamtk -y
sudo freshclam

#Media player
figlet "VLC"
sudo apt install vlc -y

#Music Player
figlet "Music player"
sudo apt install rhythmbox -y

#Office and Fonts
figlet "Office and MS-fonts"
sudo apt install libreoffice -y 
sudo apt install ttf-mscorefonts-installer -y
mkdir .fonts
wget -qO- http://plasmasturm.org/code/vistafonts-installer/vistafonts-installer | bash
sudo apt install atril -y

#Archive Manager
figlet "archive manager - ark"
sudo apt install ark -y

#backup tool
figlet "timeshift"
sudo apt install timeshift -y

#Note-taking
figlet "Notes"
sudo apt install cherrytree -y
sudo apt install joplin -y

#Flatpak
figlet "Flatpak"
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install gnome-software-plugin-flatpak

#Drive integration tool
figlet "Rclone"
sudo apt install -y rclone rclone-browser

#Finialyze
figlet "Everything is setup"
figlet "Restarting in . . ."
figlet "3"
figlet "2"
figlet "1"
echo "Everything set to GO -- Please Reboot your machine"
#sudo reboot now
