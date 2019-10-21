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

# remove unused packages
apt-get --purge autoremove -y

# clean up
apt-get autoclean -y