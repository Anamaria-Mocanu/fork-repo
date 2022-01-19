#!/bin/bash
pwd
cd /home/ec2-user/acebook-t1w3
pwd
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
npm install pm2 -g
pm2 --name acebook-t1w3 start npm -- start