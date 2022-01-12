#!/bin/bash

#update, upgrade, install nginx
sudo apt-get update -y

sudo apt-get upgrade -y

#install nginx
sudo apt-get install nginx -y

#install nodejs version 6
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install nodejs -y

#install npm
sudo npm install pm2 -g

#Create env var DB_HOST

#replace default file in nginx 
# sudo rm -rf /etc/nginx/sites-available/default
sudo cp /home/vagrant/app/default /etc/nginx/sites-available/default

#update bashrc with env var DB_HOST
# sudo rm -rf .bashrc
sudo cp /home/vagrant/app/.bashrc ./.bashrc
sudo nginx -t
sudo systemctl restart nginx

#SEED
cd app
cd app
cd seeds
node seed.js

# npm install

# npm start