#!/bin/bash

gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ shortcut-overlay false
gsettings set com.canonical.Unity.Launcher favorites "['gnome-terminal.desktop', 'firefox.desktop','gedit.desktop','/home/devops/dk/DevOps Katas Sample.desktop']"
firefox "http://www.devopskatas.com/?utm_source=lvm" &
