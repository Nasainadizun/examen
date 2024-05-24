#!/bin/bash

if [ $(whoami) != "root" ]; then
	echo "atao mode root"
	exit 1
fi

docker build -t my-apache-image:latest .
