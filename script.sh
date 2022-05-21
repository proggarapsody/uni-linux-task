#!/bin/bash

# Install git, download files and delete git
# apt install git-all
# git clone https://github.com/proggarapsody/uni-linux-task.git
# apt-get remove git-all

apt-get update 
apt-get install 1 dialog 

# Dialog - install wget packege?
dialog --title "Wget install" \
--backtitle "Web App installer" \
--yesno "Hello! firstly you must download wget package" 7 60
response=$?
case $response in
   0) echo; clear; "Continue";;
   1) echo; clear;"Goodbye!"; exit;;
   255) echo; clear; "Goodbye!"; exit;;
esac

apt install wget
wget -O site.zip https://github.com/proggarapsody/uni-linux-task/archive/main.zip
unzip -o site.zip -x "*.git/*"
rm site.zip
cd uni-linux-task-main

# Working with images and videos
cd media
# Dialog - run image-convert script?
image-convert.sh # convert image and delete photo-in folder
# Dialog - run video script?
video.sh # download video, convert their and delete video-in folder

# Dialog - install apache2 package?
# Working with server
apt install apache2
cd ..
rm -rf /var/www/html/*
mv -f ./* /var/www/html

systemctl start apache2 

# Working with firefox
firefox --new-window localhost
