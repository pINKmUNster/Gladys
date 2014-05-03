#!/bin/bash

 #===================================================
 #* Projet Gladys
 #* http://intelligenceonline.synergize.co
 #* ===================================================
 #* 
 #* Copyright 2014, Pierre-Gilles Leymarie
 #* Logiciel sous License Creative Commons 3.0 France
 #* http://creativecommons.org/licenses/by-nc-sa/3.0/fr/
 #* 
 #* Pas d’Utilisation Commerciale
 #* Partage dans les mêmes conditions et 
 #* avec mentions et lien vers le projet initial.
 #*
 #* Contact : projectgladys@gmail.com
 #* 
 #* ========================================================== 

# Test des droits
if [ $USER != "root" -o $UID != 0 ]
then
  echo "Ce script doit être exécuté en tant qu'administrateur."
  echo "Placez sudo devant votre commande !"
  exit 1
fi




#Mise à jour des paquets
sudo apt-get update
sudo apt-get upgrade

#Installation d'Apache, MySQL, PHP, phpmyadmin

sudo apt-get install apache2 php5 mysql-server libapache2-mod-php5 php5-mysql
sudo apt-get install phpmyadmin
sudo ln -s /usr/share/phpmyadmin /var/www/phpmyadmin

#Installation de NodeJS + Npm
sudo apt-get install nodejs npm

#Prérerequis NPM
sudo npm config set registry http://registry.npmjs.org/
sudo npm install -g xmlhttprequest
sudo npm install -g googlemaps

#Installation des modules NPM en local
cd /var/www/gladys/JS
sudo npm install xmlhttprequest
sudo npm install googlemaps

#Installation de mpg321 et madplay
sudo apt-get install mpg321
sudo adduser www-data audio

sudo apt-get install madplay

#Droits pour les fichiers mouvements

sudo chown www-data /var/www/gladys/PHP/motion_history.txt
sudo chown www-data /var/www/gladys/PHP/wake_up_history.txt

#Installation de MOC

sudo apt-get install moc

#Installation WiringPi

sudo apt-get install git-core
cd /home/pi/
sudo git clone git://git.drogon.net/wiringPi
cd /home/pi/wiringPi
sudo ./build

#Installation RcSwitch Pi
cd /home/pi/
sudo git clone https://github.com/r10r/rcswitch-pi.git
cd /home/pi/rcswitch-pi
sudo make

#Installation du détecteur de mouvements

apt-get install libcurl4-openssl-dev

cd /var/www/gladys/PHP/scripts/sensors
sudo make
