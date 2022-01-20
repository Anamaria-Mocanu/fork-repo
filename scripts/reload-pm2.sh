#/bin/bash
echo "Changing directory to acebook-t1w3"
cd /home/ec2-user/acebook-t1w3
# nvm bash_completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install 12.14.1
sudo yum install -y mongodb-org-4.2.0 mongodb-org-database-4.2.0 mongodb-org-server-4.2.0 mongodb-org-shell-4.2.0 mongodb-org-mongos-4.2.0 mongodb-org-tools-4.2.0
npm install
npm i pm2@latest -g
pm2 start npm --name "acebook-t1w3" -- start