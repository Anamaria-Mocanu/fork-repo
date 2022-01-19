#!/bin/bash
pwd
cd /home/ec2-user/acebook-t1w3
pwd
npm install pm2 -g
pm2 --name acebook-t1w3 start npm -- start