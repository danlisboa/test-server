#!/bin/bash
set -x #echo on

echo "Starting API Hello Server"

sudo docker build . -t test-app

sudo docker run -p 3000:3000 test-app

sudo docker ps