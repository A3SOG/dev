#!/bin/bash

# Check and update ACE3 repository
if [ -d 'ACE3' ]; then
    cd ACE3
    git pull
else
    git clone https://github.com/acemod/ACE3.git
fi

# Check and update CBA_A3 repository
if [ -d 'CBA_A3' ]; then
    cd CBA_A3
    git pull
else
    git clone https://github.com/CBATeam/CBA_A3.git
fi

# Check and clone HEMTT repository
if [ -d 'HEMTT' ]; then
    rm -rf HEMTT
    git clone https://github.com/BrettMayson/HEMTT.git
    cd HEMTT
    cargo install --path bin
else
    git clone https://github.com/BrettMayson/HEMTT.git
    cd HEMTT
    cargo install --path bin
fi
