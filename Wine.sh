#!/bin/bash

sudo apt update

sudo dpkg --add-architecture i386 

sudo wget -nc -O /usr/share/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

sudo wget -nc -P /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/impish/winehq-impish.sources

sudo apt update

sudo apt-get install -f

sudo apt install --install-recommends winehq-staging

echo "WineHQ Installed"
