#!/bin/bash

if [ $(whoami) != "root" ]; then
	echo "Ce script doit etre executer avec les privileges root. Veillez utiliser sudo."
	exit 1
fi

#installer serveur ssh
sudo apt update
sudo apt install openssh-server
sudo apt install ansible


# activer le serveur ssh
sudo systemctl enable ssh
sudo systemctl start ssh


#configurer en fichier hosts
#gsi_machine ansible_host=your_server_ip
ansible --version

echo "Ansible a ete installe et configure avec succes"
