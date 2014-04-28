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

#Installation du détecteur de mouvements

cd /var/www/gladys/PHP/scripts/sensors
sudo make