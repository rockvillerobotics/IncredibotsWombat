#!/bin/bash

# Output GNU warning to console.
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
setup_wombat.sh Copyright (C) 2020 The Incredibots
This program comes with ABSOLUTELY NO WARRANTY; for details see
https://github.com/rockvillerobotics/IncredibotsWombat/blob/master/LICENSE.txt.
This is free software, and you are welcome to redistribute it
under certain conditions; see the link above for more details.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

# Prompt to ensure user accepts risk.
read -p "Would you like to continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then

    # Add Terminal and Web Browsers to Desktop.
    ls -s /usr/share/applications/lxterminal.desktop /home/pi/Desktop
    ls -s /usr/share/applications/netsurf-gtk.desktop /home/pi/Desktop
    ls -s /usr/share/applications/epiphany-browser.desktop /home/pi/Desktop

    # Change the Wombat's Python compiler to use Python3.
    # I copy the original file to a backup just in case, and only do this the first time this script is run.
    cp --no-clobber /home/pi/harrogate/apps/compiler/compilation-environments/python/python.js /home/pi/harrogate/apps/compiler/compilation-environments/python/python.js.bak
    sed -i 's/python -c/python3 -c' /home/pi/harrogate/apps/compiler/compilation-environments/python/python.js

    # Fix KIPR IDE tab functionality. Make it so tab adds 4 spaces and not 1 tab character.
    # Also, a tab can be inserted from anywhere in the line, and shift_tab unindents the line.
    # I copy the original file to a backup just in case, and only do this the first time this script is run.
    cp --no-clobber /home/pi/harrogate/public/scripts/harrogate-index-app.js /home/pi/harrogate/public/scripts/harrogate-index-app.js.bak
    sed -i "/'kiss',/r fix-IDE-tab.txt" /home/pi/harrogate/public/scripts/harrogate-index-app.js

    # Set the desktop background to the Incredibots logo.
    wget https://github.com/rockvillerobotics/rockvillerobotics.github.io/blob/master/frontend/assets/images/club_logo.png
    pcmanfm --set-wallpaper /home/pi/Images/club_logo.png

    # Clone Incredibots repositories to home directory.
    git clone https://github.com/rockvillerobotics/Incredibots2020.git ~/Incredibots2020

    echo "Setup complete"
else
    echo "Program exiting..."
fi

