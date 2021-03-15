#!/bin/bash
set -e
##################################################################################################################
# Author 	: Peter Dauwe
##################################################################################################################

#Part 1  - first update your system
yay -Syu --noconfirm
echo 'Your system is now updated.'
##################################################################################################################

#Part 2 - install needed pgms
sudo pacman -S --noconfirm --needed youtube-dl
sudo pacman -S --noconfirm --needed zathura
sudo pacman -S --noconfirm --needed zathura-pdf-poppler
sudo pacman -S --noconfirm --needed zathura-cb
sudo pacman -S --noconfirm --needed zathura-djvu
sudo pacman -S --noconfirm --needed vifm
sudo pacman -S --noconfirm --needed unclutter
sudo pacman -S --noconfirm --needed python-pywal
sudo pacman -S --noconfirm --needed python-ueberzug
sudo pacman -S --noconfirm --needed sublime-text-dev
sudo pacman -S --noconfirm --needed menulibre
sudo pacman -S --noconfirm --needed sddm
sudo pacman -S --noconfirm --needed meld
sudo pacman -S --noconfirm --needed atom
#sudo pacman -S --noconfirm --needed virtualbox
#sudo pacman -S --noconfirm --needed virtualbox-host-dkms
#sudo pacman -S --noconfirm --needed linux-headers
#sudo pacman -S --noconfirm --needed discord
#sudo pacman -S --noconfirm --needed smplayer
#sudo pacman -S --noconfirm --needed alacritty
sudo pacman -S --noconfirm --needed electron

#if yay -Qi freetube &> /dev/null ; then 
#      echo "Freetube is already installed"
#  else
#yay -S --noconfirm --needed freetube
#fi

echo 'All the needed software is installed.'
##################################################################################################################

#Part 3 - Copy what needs to go to etc
# Sddm.conf , just lines 8 and 9 are adapted
# Enable Sddm

sed -i "5s/.*/User="$USER"/g" Root/etc/sddm.conf
#In case of a inlog problem
#sed -i "2s/.*/User="$USER"/g" Root/etc/sddm.conf.d/autologin.conf

sudo rsync -rtv Root/etc/ /etc/
sudo systemctl enable sddm.service -f

##################################################################################################################

#Part 4 - Copy what needs to go to usr
# local/bin/ bobodmenu is needed for the MANPAGES , it is an custom made dmenu
# share/backgrounds/noobie are added backgrounds
# share/icons : candy-icons added , DiamondBlue cursor added , Default changed to DiamondBlue
# share/oh-my-zsh : added a custom theme
# share/sddm : added a theme with a custom background
# share/themes : added some custom themes
sudo rsync -rtv Root/usr/ /usr/


##################################################################################################################

#Part 5 - Copy what needs to go to grub
# Just changed the background for grub 
sudo rsync -rtv Root/boot/ /boot/

##################################################################################################################

#Part 6 - Custom config files
# Added a .bashrc-personal
# Added a .zsh-personal
# Changed .face
# Edit i3 and polybar.....
# Found out for yourself
rsync -rtv HomeDir/ ~/

##################################################################################################################

#Part 7 - change terminal from bash to zsh
sudo chsh $USER -s /bin/zsh

##################################################################################################################

echo 'All is in place - please , reboot now'

###############################################################################################

echo "################################################################"
echo "############# Thank you for trying out this script #############"
echo "################################################################"
