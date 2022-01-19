#!/bin/bash
echo "Changing directory to acebook-t1w3"
cd /home/ec2-user/acebook-t1w3
pm2 start npm --name "acebook-t1w3" -- start