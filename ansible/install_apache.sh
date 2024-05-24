#!/bin/bash

if [ $(whoami) != "root" ]; then
	echo "Ce script doit etre execute avec les privileges root. Veuillez utiliser sudo."
	exit 1
fi

ansible-playbook install_apache.yml
