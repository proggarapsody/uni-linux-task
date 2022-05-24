#!/bin/bash

sudo apt-get update 
sudo apt-get install -y dialog 

# Dialog - install wget packege?
dialog --title "Wget install" \
--backtitle "Web App installer" \
--yesno "Hello! firstly you must download wget package" 7 60
response=$?
case $response in
   0) clear; echo "Continue";;
   1) clear; echo "Goodbye!"; exit;;
   255) clear; echo "Goodbye!"; exit;;
esac

# Download main site files
sudo apt install -y wget
sudo apt install -y unzip
wget -O site.zip https://github.com/proggarapsody/uni-linux-task/archive/main.zip
sudo unzip -o site.zip -x "*.git/*"
sudo rm site.zip
cd uni-linux-task-main
sudo rm script.sh

# !!!DEPRECEATED!!!
# Working with images and videos - 
# cd media

# # Dialog - run image-convert script?
# dialog --title "Image convert" \
# --backtitle "Web App installer" \
# --yesno "NOTE: if you do not run convert the site will be without images!!!" 7 60
# response=$?
# case $response in
#    # convert image and delete photo-in folder
#    0) sudo bash image-convert.sh;;
# esac
 
# # Dialog - run video script?
# dialog --title "Video download" \
# --backtitle "Web App installer" \
# --yesno "NOTE: if you do not run video dwonload the site will be without videos!!!" 7 60
# response=$?
# case $response in
#    # Run video.sh script
#    0) sudo bash video.sh;;
# esac

# sudo rm image-convert.sh
# sudo rm video.sh

# Dialog - install apache2 package?

# Working with server
sudo apt install -y apache2
cd ..
sudo rm -rf /var/www/html/*
sudo mv -f ./* /var/www/html
cd .. 
sudo rm -rf uni-linux-task-main

sudo systemctl start apache2 

# Working with firefox

firefox --new-window localhost
