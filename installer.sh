#!/bin/bash

# attach to a log file
sh -c /home/caleb/Desktop/Amadeus-Smart-Podium/launcher.sh >> /home/caleb/Desktop/Amadeus-Smart-Podium/logs/bootlog.txt 2>&1

# build autostart

DIRECTORY="/home/caleb/.config/autostart"

#make the directory if it does not exist
if [ ! -d "$DIRECTORY" ]; then
    echo "making autostart directory"
    mkdir "$DIRECTORY"
fi
# change permissions for the exicution
chmod +x podium.desktop
# copy over the .desktop file
if [ -e "~/.config/autostart/podium.desktop" ] 
then
    echo "file exists, removing it and reinstalling"
    rm ~/.config/autostart/podium.desktop
    cp podium.desktop ~/.config/autostart/podium.desktop
else
    echo "installing file"
    cp podium.desktop ~/.config/autostart/podium.desktop
fi
