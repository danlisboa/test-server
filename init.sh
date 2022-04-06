#!/bin/bash
echo "Starting API Hello Server"
cd /home/ubuntu
sudo apt update && apt upgrade
mkdir projects
cd projects/
git clone https://github.com/danlisboa/test-server.git
cd test-server/
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
. ~/.nvm/nvm.sh
source ~/.bashrc
nvm install node --lts
npm install
npm install pm2@latest -g
pm2 start npm --name "API" -- start
