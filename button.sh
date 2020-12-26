#!/bin/bash

#Проверяем установлен ли гит
if [ "$(git version | cut -c 1-11)" != "git version" ];then
    sudo apt update
    sudo apt install git -y
fi

#read -p "Press enter to continue"

if [ "$(git version | cut -c 1-11)" = "git version" ];then
    cd ~ && git clone https://github.com/chicagomg/start.git start
    cd start
    sudo ./start.sh
fi
