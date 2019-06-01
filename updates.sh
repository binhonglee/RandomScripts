#!/bin/bash

if [ $(uname) == "Darwin" ]; then
	brew update
	brew upgrade
	source ~/.zshrc
else
	sudo apt-get update
	sudo aptitude update
	sudo apt-get -y dist-upgrade
	sudo aptitude -y dist-upgrade
	source ~/.zshrc
	sdk update
	sdk upgrade
fi

nvm install node
