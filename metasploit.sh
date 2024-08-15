#!/bin/bash

fol() {
    cd ~/Metasploit-Installation/javascript || exit
}

folp() {
    cd ~/Metasploit-Installation/php || exit
}

folpy() {
    cd ~/Metasploit-Installation/python || exit
}

folba() {
    cd ~/Metasploit-Installation/bash || exit
}

folfi() {
    cd ~/Metasploit-Installation/files || exit
}

meta() {
    cd ~/Metasploit-Installation/bash || exit
    printf "\n\033[1;92m Please wait ..\n"
    bash meta.sh
}

about() {
    cd ~/Metasploit-Installation/javascript || exit
    node about.js
}

banner() {
    clear
    fol
    node banner.js
    folp
    php detail.php
}

menu() {
    banner
    folpy
    python menu.py
    echo -e -n "\033[1;92m Metasploit\033[1;96m >>\033[0m "
    read -r ab
    case $ab in
        1) meta ;;
        2) about ;;
        3) exit ;;
        *) menu ;;
    esac
}

menu
