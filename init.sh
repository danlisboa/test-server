#!/bin/bash
echo "Starting API Hello Server"
set -x #echo on

cd /home/ubuntu/projects

sudo service docker start

sudo docker build . -t test-app

sudo docker run -p 3000:3000 test-app

sudo docker ps