#!/bin/bash

# install Docker
sudo apt-get update
sudo apt-get install -y docker.io

# install Docker Compose
sudo apt-get install -y docker-compose 

# start Docker service
sudo systemctl start docker
sudo systemctl enable docker

# info of output Docker and Docker Compose
echo "Docker version: $(docker --version)"
echo "Docker Compose version: $(docker-compose --version)"
