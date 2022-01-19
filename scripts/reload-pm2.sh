#!/bin/bash
cd ~/aws-codedeploy
sudo npm install pm2 -g
sudo ln -s /usr/local/bin/pm2 /usr/bin/pm2
sudo pm2 update
pm2 startOrReload ecosystem.config.js 
sudo su
pm2 kill
npm remove pm2 -g
exit