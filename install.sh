#!/bin/bash

source <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/common.sh)

printLogo

# Оновлення списку пакетів та оновлення системи
sudo apt update && sudo apt upgrade -y

# Встановлення screen для управління сесіями
sudo apt install -y screen

# Встановлення Node.js
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

# Встановлення global-пакета rivalz-node-cli та запуск
echo "setup rivalz-node-cli"
npm i -g rivalz-node-cli


