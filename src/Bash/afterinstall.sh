#!/bin/bash

# RUN AS ROOT

# pre configuring packages
dpkg --configure -a
# fix broken dependencies
apt-get install -f
# update apt cache
apt-get update
# upgrade packages
apt-get upgrade -y
# distribution upgrades
apt-get dist-upgrade -y

# Clean-up System
apt-get purge epiphany-browser epiphany-browser-data #browser
apt-get purge scratch-text-editor #text-editor
apt-get purge geary #email
apt-get purge pantheon-mail #email

# remove unused packages
apt-get --purge autoremove -y
# clean up
apt-get autoclean -y

# Properties Commons (to install elementary tweaks)
sudo apt-get install software-properties-common
# Terminator
sudo apt-get install terminator
# Gdepi package manager
sudo apt install gdebi
#Install File Compression Libs
sudo apt-get install rar unrar zip unzip p7zip-full p7zip-rar
# GIT
sudo apt-get install git
# HTOP
sudo apt-get install htop
# GParted
sudo apt-get install gparted
# VLC
sudo apt-get install vlc browser-plugin-vlc
# Firefox
sudo apt-get install firefox
# OpenSSH
sudo apt install openssh-server
# Libre office
sudo apt-get install libreoffice
# Gimp
sudo apt install gimp


# Elementary Tweak
## 1. adding repository
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
## 2. updating apt-get
sudo apt-get update 
## 3. installing tweaks
sudo apt-get install elementary-tweaks
## 4. installing wallpapers
sudo apt-get install elementary-wallpapers-extra

# Google Chrome
# 1. downloading last stable package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# 2. installing package
sudo dpkg -i google-chrome-stable_current_amd64.deb
# 3. fixing broken dependencies
sudo apt-get install -f
# 4. Enable maximize and minimize button on Google Chrome
gconftool-2 --set /apps/metacity/general/button_layout --type string ":minimize:maximize:close"

# JEnv
## 1. Downloading and installing package
curl -L -s get.jenv.io | bash
## 2. updating bash
source ~/.jenv/bin/jenv-init.sh
## 3. update jenv local repository
jenv selfupdate

#Install Spotify
## 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
## 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
## 3. Update list of available packages
sudo apt-get update
## 4. Install Spotify
sudo apt-get install spotify-client

# installing docker
sudo rm /var/lib/apt/lists/* -vf
sudo apt-get update
curl -fsSl https://get.docker.com/ | sh

# Sublime Text 3
## 1. downloading package
wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
## 2. installing package
sudo dpkg -i sublime-text_build-3126_amd64.deb
## 3. fixing broken dependencies
sudo apt-get install -f

# VScode


# Elementary Transparent Theme
## 1. adding repository
sudo add-apt-repository ppa:yunnxx/elementary
## 2. updating apt-get
sudo apt-get update
## 3. installing transparent theme
sudo apt-get install elementary-transparent-theme

# Get R (base) and a few dependencies for packages
sudo apt-get -y install r-base libapparmor1 libcurl4-gnutls-dev libxml2-dev libssl-dev
sudo su - -c "R -e \"install.packages('tidyverse', repos = 'http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('devtools', repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"devtools::install_github('daattali/shinyjs')\""
sudo su - -c "R -e \"install.packages('rmarkdown', repos='http://cran.rstudio.com/')\""

# Get R-Studio
sudo apt-get install gdebi-core
wget https://www.rstudio.org/download/latest/daily/desktop/ubuntu64/rstudio-latest-amd64.deb # latest as now()!
sudo gdebi rstudio-latest-amd64.deb

# Python
sudo apt-get -y install fastqc python-stdeb python-pip python-dev
sudo apt-get -y install build-essentials
sudo pip install psutil
sudo pip install configobj
sudo apt-add-repository ppa:neufeldlab/ppa && sudo apt-get update && sudo apt-get -y install pandaseq

#Reduce overheating and improve battery life
## 1. adding repository
sudo add-apt-repository ppa:linrunner/tlp
## 2. updating apt-get
sudo apt-get update
## 3. installing package
sudo apt-get install tlp tlp-rdw
## 4. starting application
sudo tlp start

