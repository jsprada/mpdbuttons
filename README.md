# mpdbuttons
Use GPIO buttons to control mpd playback on Raspberry Pi.

By: Johnny Sprada

These files are from a working personal project, you may need to modify them to work for yours.

By adding GPIO based button controls to a Raspberry Pi already configured with a running instance of MPD, you can create a music playing appliance.  After installation, the service will run in the background and start automatically after each reboot. 

## Requirements
* Python
* python-mpd2 (http://pythonhosted.org/python-mpd2/index.html)
* mpd (https://www.musicpd.org/)

## Install

The installation script will create a directory `/usr/bin/mpdbuttons`, poppulate it with the required scripts, install a systemd unit, enable, and start the unit.  This will automatically start upon next reboot.
    git clone https://github.com/jsprada/mpdbuttons/edit/master/README.md
    sudo ./install.sh
 
 ## Maintenence
 ### Start/Stop  
     sudo systemctl stop mpdbuttons
     sudo systemctl start mpdbuttonsd
 
 ### Enable/Disable Auto-Start on Boot
     sudo systemctl stop mpdbuttonsd
     sudo systemctl enable mpdbuttonsd
     
 ### Check Status
     sudo systemctl status mpdbuttonsd
   
 
