#!/usr/bin/env bash

mkdir -p ~/bin
curl -L https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -o ~/bin/lein
chmod 755 ~/bin/lein
export PATH=.:~/bin:$PATH
cd /tmp && \
    git clone https://github.com/USGS-EROS/lcmap-system.git && \
    cd lcmap-system && \
    lein install
    cd ~

sudo apt-add-repository ppa:ubuntugis/ppa -y
sudo apt-get update -qq
sudo apt-get install libgdal-dev libgdal-java -y
