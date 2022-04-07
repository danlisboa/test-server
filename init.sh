#!/bin/bash
echo "Starting API Hello Server"

docker build -t test-app .

sudo docker run -p 3000:3000 -d test-app