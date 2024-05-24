#!/bin/bash

# Nom de l'image Docker
IMAGE_NAME="custom-apache"

# Nom du conteneur
CONTAINER_NAME="apache_server"

# Vérifier si le conteneur existe déjà
if [ $(docker ps -a -q -f name=$CONTAINER_NAME) ]; then
    echo "Container $CONTAINER_NAME already exists. Removing it..."
    docker rm -f $CONTAINER_NAME
fi

# Démarrer le conteneur
echo "Starting container $CONTAINER_NAME from image $IMAGE_NAME..."
docker run -d -p 8081:8081 --name $CONTAINER_NAME $IMAGE_NAME

echo "Container $CONTAINER_NAME started successfully."
