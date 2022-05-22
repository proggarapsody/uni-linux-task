#!/bin/bash

sudo apt-get update 
sudo apt-get install 1 dialog 

# Dialog - install wget packege?
sudo dialog --title "Wget install" \
--backtitle "Web App installer" \
--yesno "Hello! firstly you must download wget package" 7 60
response=$?
case $response in
   0) echo; clear; "Continue";;
   1) echo; clear;"Goodbye!"; exit;;
   255) echo; clear; "Goodbye!"; exit;;
esac

sudo apt install wget
sudo apt install unzip
sudo wget -O site.zip https://github.com/proggarapsody/uni-linux-task/archive/main.zip
sudo unzip -o site.zip -x "*.git/*"
sudo rm site.zip
sudo cd uni-linux-task-main

# Working with images and videos
sudo cd media
# Dialog - run image-convert script?
sudo bash image-convert.sh # convert image and delete photo-in folder
# Dialog - run video script?
sudo bash video.sh # download video, convert their and delete video-in folder
sudo rm image-convert.sh
sudo rm video.sh

# Dialog - install apache2 package?
# Working with server
sudo apt install apache2
sudo cd ..
sudo rm -rf /var/www/html/*
sudo mv -f ./* /var/www/html
sudo cd .. 
sudo rm -rf uni-linux-task-main

sudo systemctl start apache2 

# Working with firefox

firefox --new-window localhost
