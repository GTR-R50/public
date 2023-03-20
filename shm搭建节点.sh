#!/bin/bash

# 更新系统并安装Docker
sudo apt update -y && sudo apt upgrade -y
sudo apt-get install curl -y
echo "1" | sudo apt install docker.io
docker --version

# 安装Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# 执行安装器
echo "Cgy19980227" | curl -O https://gitlab.com/shardeum/validator/dashboard/-/raw/main/installer.sh && chmod +x installer.sh && ./installer.sh

# 启动服务
cd .shardeum
./shell.sh
operator-cli gui start

echo "节点搭建完成" >>nibid.log
