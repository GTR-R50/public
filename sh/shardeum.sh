#!/bin/bash


sudo apt-get install expect
echo "第1步完成!"

sudo apt update && apt upgrade -y
echo "第2步完成!"

sudo apt-get install curl
echo "第3步完成!"


sudo apt update
echo "第4步完成!"

sudo apt install docker.io
echo "第5步完成!"

docker --version
echo "第6步完成!"


sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
echo "第7步完成!"

sudo chmod +x /usr/local/bin/docker-compose
echo "第7步完成!"

docker-compose --version
echo "第8步完成!"

sudo curl -O https://gitlab.com/shardeum/validator/dashboard/-/raw/main/installer.sh 
sudo chmod +x installer.sh 

sudo expect ./nine.sh 
echo "第9步完成!"

cd /home/ubuntu/.shardeum
echo "第10步完成!"

# sudo ./shell.sh
sudo expect /root/public/sh/eleven.sh
echo "第11步完成!"

sudo operator-cli gui start
echo "第12步完成!"




