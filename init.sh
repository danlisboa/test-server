#!/bin/bash
echo "Starting API Hello Server"
pm2 start npm --name "API" -- start