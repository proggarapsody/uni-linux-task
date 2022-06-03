#!/bin/bash

sudo apt-get update 
sudo apt-get install -y dialog 

# Dialog - install wget packege?
dialog --title "Установка unzip" \
--backtitle "Установкщик сайта" \
--yesno "Здравствуйте! Для установки сайта требуется установить пакет unzip" 7 60
response=$?
case $response in
   0) clear; echo "Продолжение...";;
   1) clear; echo "Процесс не выполнен. Требуемые пакеты не установлены."; exit;;
   255) clear; echo "Процесс не выполнен. Требуемые пакеты не установлены."; exit;;
esac

# Download main site files

sudo apt install -y unzip

sudo unzip -o site.zip -x "*.git/*"
sudo rm site.zip
cd uni-linux-task-main
# sudo rm script.sh



# Dialog - install apache2 package?
dialog --title "Установка APACHE" \
--backtitle "Установкщик сайта" \
--yesno "Для запуска сервера требуется установка пакета apache" 7 60
response=$?
case $response in
   0) clear; echo "Продолжение...";;
   1) clear; echo "Процесс не выполнен. Требуемые пакеты не установлены."; exit;;
   255) clear; echo "Процесс не выполнен. Требуемые пакеты не установлены."; exit;;
esac

# Working with server
sudo apt install -y apache2

sudo rm -rf /var/www/html/*
sudo mv -f ./* /var/www/html
cd .. 
sudo rm -rf uni-linux-task-main

sudo systemctl start apache2 

# Working with firefox

firefox --new-window localhost
