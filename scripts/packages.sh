#!/usr/bin/bash

sudo pacman -Syu
curl https://sh.rustup.rs -sSf | sh

paru --version || sudo pacman -S --needed base-devel && cd /opt && git clone https://aur.archlinux.org/paru.git && makepkg -si
paru -Syu

paru --repo wofi --limit 5
paru --repo helix --limit 5
paru cava --limit 5
paru fastfetch --limit 5
paru --repo fish --limit 5
paru --repo python3 --limit 5
paru mpvpaper --limit 5


