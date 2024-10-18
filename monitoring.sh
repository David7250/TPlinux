#!/bin/bash

echo "Architecture:" 
sudo uname -a

echo "Nombre de CPU" 
sudo cat /proc/cpuinfo | grep "cpu cores"

echo "Mémoire vive" 
sudo free && vmstat

echo "Utilisation des CPU" 
sudo top -n1 -b | grep "%Cpu(s)"

echo "Date et heure du dernier redemarrage" 
sudo who -b

echo "LVM actif"  
sudo lvscan

echo "Nombre de connexion active"
sudo netstat -taupn

echo "Nombre d'utilisateur du serveur"
sudo wc -l /etc/passwd

echo "Adresse IPV4 et MAC"
sudo ip a | inet link/ether

echo "Nombre de commande sudo"
sudo wc -l var/log/sudo.log
