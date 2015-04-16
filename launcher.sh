#!/bin/bash

# xrandr command will show all monitors
# xinput command will show all inputs

#fix touch inputs
xinput map-to-output 11 HDMI1
xinput map-to-output 12 VGA1

# optional to run xinput_calibrator to fix off by a few touch errors

# Open the PDF viewer
sleep 10
evince /home/caleb/Desktop/Amadeus-Smart-Podium/scores/brookeshire.pdf
