#!/bin/bash

#added by me
touch /root/.Xresources

# Remove VNC lock (if process already killed)
rm /tmp/.X1-lock /tmp/.X11-unix/X1
# Run VNC server with tail in the foreground
vncserver :1 -geometry 1280x720 -depth 24 && tail -F /root/.vnc/*.log
