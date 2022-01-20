#!/bin/bash
sudo echo "Changing directory to acebook-t1w3"
sudo cd /home/ec2-user/acebook-t1w3
sudo npm i pm2@latest -g
pm2 start npm --name "acebook-t1w3" -- start