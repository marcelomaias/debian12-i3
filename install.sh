#!/bin/bash

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput xorg-dev

sudo apt install -y intel-microcode

sudo apt install -y lxappearance

# File Manager (eg. thunar,krusader)
sudo apt install -y pcmanfm

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal (eg. terminator,kitty,xfce4-terminal,tilix)
sudo apt install -y alacritty

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# Printing and bluetooth (if needed)
sudo apt install -y cups
sudo apt install -y bluez blueman

sudo systemctl enable bluetooth
sudo systemctl enable cups

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr

# Desktop background browser/handler
#sudo apt install -y feh
# feh --bg-fill /path/to/directory 
# example if you want to use in autostart.sh for i3-gaps
# sudo apt install -y nitrogen
sudo apt install -y feh

# Lightdm
sudo apt install -y lightdm slick-greeter lightdm-settings
sudo systemctl enable lightdm

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# i3-wm
sudo apt install -y i3-wm

# Packages needed i3-wm after installation
sudo apt install -y dmenu polybar sxhkd rofi dunst libnotify-bin picom unzip simple-scan


source ~/debian12-i3/configs.sh


sudo apt autoremove

printf "\e[1;32mAll done! You can now reboot.\e[0m\n"
