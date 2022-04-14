#!/bin/bash
echo "Starting API Hello Server"
set -x #echo on

cd /home/ubuntu/
sudo snap install docker
sudo snap status docker #check the status
sudo snap start docker # start the service

sudo addgroup --system docker
sudo adduser ubuntu docker
sudo usermod -a -G docker ubuntu
docker -v
docker info

sudo service docker start

docker kill $(docker ps -q)

sudo docker build . -t test-app

sudo docker run -p 3000:3000 test-app

sudo docker ps