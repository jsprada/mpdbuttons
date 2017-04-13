mkdir /usr/bin/mpdbuttons
cp mpdbuttonsd.py /usr/bin/mpdbuttons/mpdbuttonsd.py
cp longpress.py /usr/bin/mpdbuttons/longpress.py

cat << _EOF_ > /etc/systemd/system/mpdbuttonsd.service
[Unit]
Description=Use GPIO buttons to control mpd

[Service]
ExecStart=/usr/bin/mpdbuttons/mpdbuttonsd.py

[Install]
WantedBy=multi-user.target
_EOF_
systemctl enable mpdbuttonsd
systemctl daemon-reload
systemctl start mpdbuttonsd
systemctl status mpdbuttonsd