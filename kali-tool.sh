#!/bin/bash

YELLOW="\033[1;33m"
RED="\033[0;31m"
ENDCOLOR="\033[0m"
echo -e "LOADING ..."
echo -e

BAR='============================================='
for i in {1..45}; do
   # echo -ne  $RED"\r${BAR:0:$i}\n"$ENDCOLOR
    echo -ne  $RED"\r${BAR:0:$i}"$ENDCOLOR
    sleep .01
done
echo -e
echo -e "Thank you for waiting :D"
echo -e
sleep 1.5

echo -e
echo -e
YELLOW="\033[1;33m"
RED="\033[0;31m"
ENDCOLOR="\033[0m"
echo -e $YELLOW"================Kali-MetaPackger========================================"$ENDCOLOR
echo -e $RED"=      Little MetaPackager for Kali by AMSH4CK3R [:]                   ="$ENDCOLOR
echo -e $YELLOW"========================================================================"$ENDCOLOR
echo -e
echo -e

GREEN='\033[0;32m%s\033[0m\n'
GREEN2='\033[1;32m'
command printf -- "${GREEN2}HELLO TO KALI LINUX METAPACKAGE INSTALLER "$ENDCOLOR

echo -e
echo -e
echo -e "1. Updating"
echo -e
echo -e "2. Installing"
echo -e
echo -e "3. Cleaning"
echo -e

#local KALI-META
#local KALI-VERSION
#local KALI-INFO

KALIVERSION=$(grep VERSION /etc/os-release)
KALIINFO=$(uname -a)
#KALIMETA=$(apt-cache search kali-linux)

echo -e
echo -e
sleep .7
echo -e $KALIVERSION
echo -e
sleep .7
echo -e $KALIINFO
echo -e
#echo -e $KALIMETA
#echo -e
BAR='==============='
for i in {1..15}; do
   # echo -ne  $RED"\r${BAR:0:$i}\n"$ENDCOLOR
    echo -ne  $RED"\r${BAR:0:$i}"$ENDCOLOR
    sleep .01
done
echo -e
echo -e $YELLOW"Start Updating !!!"$ENDCOLOR
echo -e

echo -e -n $GREEN2"Do you want to update your kali ? "$ENDCOLOR
read answer3
if [ "$answer3" != "${answer3#[Yy]}" ]; then
    sleep .4
    echo -e
    echo -e "Updating resources"
    apt-get update
    echo -e
    echo -e "Upgrading packages"
    apt-get upgrade
    echo -e
    echo -e "Upgrading system"
    apt-get dist-upgrade
    echo -e
    echo -e "Upgrading Full system"
    apt-get full-upgrade
    echo -e
else
    echo -e
    echo -e "No Updaing process !!!"
    echo -e
    sleep 2
    echo -e "Abort"
    echo -e
fi

echo -e $YELLOW"Start Installing !!!"$ENDCOLOR
echo -e

apt-cache search kali-linux

echo -e

echo -e -n $GREEN2"Now if you want to start installing ? "$ENDCOLOR
read answer

echo -e
echo -e

if [ "$answer" != "${answer#[Yy]}" ]; then

    sleep .6
    echo -e "Starting ..."
    sleep .9
    YELLOW="\033[1;33m"
    RED="\033[0;31m"
    ENDCOLOR="\033[0m"
    echo -e
    
    BAR='==============='
    for i in {1..15}; do
       # echo -ne  $RED"\r${BAR:0:$i}\n"$ENDCOLOR
        echo -ne  $RED"\r${BAR:0:$i}"$ENDCOLOR
        sleep .01
    done
    apt-get install kali-linux
    apt-get install kali-linux-all
    apt-get install kali-linux-forensic
    apt-get install kali-linux-full
    apt-get install kali-linux-gpu
    apt-get install kali-linux-nethunter
    apt-get install kali-linux-pwtools
    apt-get install kali-linux-rfid
    apt-get install kali-linux-sdr
    apt-get install kali-linux-top10
    apt-get install kali-linux-voip
    apt-get install kali-linux-wireless
    echo -e

else

    echo -e
    echo -e $YELLOW"No Installing process !!!"$ENDCOLOR
    sleep 1
    echo -e
    echo "Abort"
    sleep 1

    BAR='============================================='
    for i in {1..45}; do
        echo -ne "\r${BAR:0:$i}"
        sleep .1
    done
        echo -e
        #echo -e $RED"GOODBYE"
        echo -e
        # exit;
fi
echo -e
echo -e $GREEN2"Continue Process of cleaning !!"$ENDCOLOR
echo -e
echo -e $YELLOW"Start Cleaning process"$ENDCOLOR
echo -e
echo -e -n $GREEN2"Do you want to clean Kali Linux ? "$ENDCOLOR
read answer2
echo -e
if [ "$answer2" != "${answer2#[Yy]}" ]; then
    sleep .9
    echo -e "Auto Removing"
    echo -e
    sleep 1
    apt autoremove
    sleep 1
    echo -e
    echo -e "Auto Cleaning"
    echo -e
    sleep 1
    apt autoclean
    sleep 1
    echo -e
    echo -e "Removing"
    echo -e
    sleep 1
    apt remove
    sleep 1
    echo -e
    echo -e "Cleaning"
    echo -e
    sleep 1
    apt clean
    sleep 2
    echo -e
    echo -e "Purging Old Configs"
    echo -e 
    sleep 1
    apt purge
    sleep .5
    echo -e
    echo -e "Aptitude Clean"
    echo -e
    sleep .6
    aptitude clean
    sleep .8
    echo -e
    echo -e "Aptitude Remove"
    echo -e
    sleep .4
    aptitude remove
    sleep .6
    echo -e

else
    echo -e
    echo -e "No Cleaning process "
    echo -e

    BAR='============================================='
    for i in {1..45}; do
        echo -ne "\r${BAR:0:$i}"
        sleep .1
    done
fi

echo -e
sleep .3
echo -e "..."
sleep 3
echo -e
echo -e $RED"GOODBYE"
echo -e

    