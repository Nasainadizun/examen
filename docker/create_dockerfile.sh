#!/bin/bash

if [ $(whoami) != "root" ]; then
	echo "Ce script doit etre execute avec les privileges root. Veuillez utiliser sudo."
	exit 1
fi

docker-compose -f ansible_playbook.yml ps | grep "image" | awk '{print $2}' | xargs docker images -q | sort | tail -n 1 | xargs docker export > Dockerfile
