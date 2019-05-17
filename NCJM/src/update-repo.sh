#!/bin/bash

# Actualizamos repositorios
echo 'deb http://archive.ubuntu.com/ubuntu bionic main restricted universe' > /etc/apt/sources.list
echo 'deb http://archive.ubuntu.com/ubuntu bionic-security main' >> /etc/apt/sources.list
echo 'deb http://archive.ubuntu.com/ubuntu bionic-updates main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://archive.ubuntu.com/ubuntu bionic multiverse' >> /etc/apt/sources.list
# Actualizamos la maquina
apt update
# Instalacion del JohnTheReapper
apt-get -y install john
# Instalacion de nmap
apt-get -y install nmap
# Instalacion del medusa
apt-get -y install medusa
# Instalacion del crunch
apt-get -y install crunch

