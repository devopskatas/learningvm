#!/bin/bash

gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ shortcut-overlay false
gsettings set com.canonical.Unity.Launcher favorites "['gnome-terminal.desktop', 'firefox.desktop','gedit.desktop']"
firefox "http://www.devopskatas.com/?utm_source=lvm" &
sleep 5
xdotool windowmove $(xdotool search --name 'DevOps Katas') 215 0 
xdotool windowsize $(xdotool search --name 'DevOps Katas') 75% 100%

if [ ! -f '/home/devops/Desktop/DevOps Katas Sample.desktop' ]; then
    echo 'copying sample'
    cp '/home/devops/DevOps Katas Sample.desktop' '/home/devops/Desktop/DevOps Katas Sample.desktop'
    chmod +x 'Desktop/DevOps Katas Sample.desktop'
fi