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

# Створення нової сесії з screen і запуск rivalz в ній
echo "create session screen and run rivalz..."
screen -S rivalz -dm bash -c "rivalz run"

echo "We can add screen session to this command: screen -r rivalz"
