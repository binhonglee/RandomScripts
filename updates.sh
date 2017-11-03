if [ $(uname) == "Darwin" ]; then
	brew update
	brew upgrade
else
	sudo apt-get update
	sudo aptitude update
	sudo apt-get dist-upgrade
	sudo aptitude dist-upgrade
fi
