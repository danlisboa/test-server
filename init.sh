#!/bin/bash
echo "Starting API Hello Server"
set -x #echo on
systemctl start docker


sudo docker build . -t test-app

sudo docker run -p 3000:3000 test-app

sudo docker ps