#!/bin/bash

sudo apt-get update
sudo aptitude update
sudo apt-get -y dist-upgrade
sudo aptitude -y dist-upgrade

source ~/.zshrc
nvm install node
sdk selfupdate
sdk upgrade
