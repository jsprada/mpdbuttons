rm -rf /usr/bin/mpdbuttons
systemctl disable mpdbuttonsd
systemctl stop mpdbuttonsd
rm /etc/systemd/system/mpdbuttonsd.service
systemctl daemon-reload
systemctl reset-failed
