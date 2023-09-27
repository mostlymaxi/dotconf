#!/usr/bin/bash

sudo pacman -Syu
curl https://sh.rustup.rs -sSf | sh

paru --version || sudo pacman -S --needed base-devel && cd /opt && git clone https://aur.archlinux.org/paru.git && makepkg -si
paru

cat packages.txt | xargs -o paru -S
cat aur-packages.txt | xargs -o paru -Sa

