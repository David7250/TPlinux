#!/bin/bash

echo "Architecture:" 
uname -a

echo "Nombre de CPU physique" 
nproc --all

echo "Nombre de CPU virtuelle"
grep -c ^processor /proc/cpuinfo

echo "Mémoire vive" 
free && vmstat

echo "Utilisation des CPU" 
top -n1 -b | grep "%Cpu(s)"

echo "Date et heure du dernier redemarrage" 
who -b

echo "LVM actif"  
lvscan

echo "Nombre de connexion active"
who | wc -l

echo "Nombre d'utilisateur du serveur"
wc -l /etc/passwd

echo "Adresse IPV4 et MAC"
ip a show | awk '/inet / {print "IPv4: " $2}' | grep -v '127.0.0.1'
ip link show | awk '/ether/ {print "MAC: " $2}'

echo "Nombre de commande sudo"
sudo grep 'COMMAND' /var/log/auth.log | wc -l
