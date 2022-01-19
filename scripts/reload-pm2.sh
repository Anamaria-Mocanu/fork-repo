#!/bin/bash
pwd
cd /home/ec2-user/acebook-t1w3
pwd
npm install pm2 -g 
pm2 --name acebookDeployW3Team2 start npm -- start