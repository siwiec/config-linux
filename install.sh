#!/bin/bash

sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y install \
    tmux \
    screen \
    vim \
    git \
    zsh \
    ghc \
    nmap \
    telnet \
    netcat \
    wget \
    subversion \
    chromium-browser \
    traceroute \
    qbittorrent \
    p7zip-full \
    inetutils-traceroute

for f in $(ls dotfiles); do
    ln -svf "$PWD/dotfiles/$f" "$HOME/.$f"
done

