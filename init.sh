#!/bin/bash
echo "Starting API Hello Server"

npm install

pm2 start npm --name "API" -- start