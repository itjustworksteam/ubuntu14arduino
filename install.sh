#!/bin/bash

sudo apt-get update
sudo apt-get install arduino arduino-core -y
wget https://bootstrap.pypa.io/3.2/get-pip.py
python get-pip.py
pip install --upgrade pip
pip install ino
sudo rm -Rf /usr/share/arduino/libraries/Robot_Control