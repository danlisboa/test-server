#!/bin/bash
echo "Starting API Hello Server"
set -x #echo on

cd /home/ubuntu/projects

sudo docker kill $(sudo docker ps -q)