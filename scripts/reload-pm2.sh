#/bin/bash
echo "Changing directory to acebook-t1w3"
cd /home/ec2-user/acebook-t1w3

# Geting the nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm bash_completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install 12.14.1

# Installing mongodb
cd /etc/yum.repos.d/
touch mongodb-org-4.0.repo
echo "[mongodb-org-4.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2013.03/mongodb-org/4.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc" >> mongodb-org-4.0.repo
sudo yum install -y mongodb-org
sudo systemctl start mongod
sudo systemctl daemon-reload
sudo systemctl status mongod
sudo systemctl enable mongod

# Installing app dependencies
cd /home/ec2-user/acebook-t1w3
npm install
npm i pm2@latest -g

# starts application
pm2 delete all
pm2 start npm --name "acebook-t1w3" -- start