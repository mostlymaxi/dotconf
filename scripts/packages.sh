#!/usr/bin/bash

install_paru() {
	sudo pacman -S --needed base-devel	
	sudo git clone https://aur.archlinux.org/paru.git /opt/paru
	sudo chown -R $USER: /opt/paru
	(cd /opt/paru && makepkg -si)
}

sudo pacman -Syu
sudo pacman -Syu rustup
rustup default stable

paru --version || install_paru
paru

cat packages.txt | xargs -o paru -S
cat aur-packages.txt | xargs -o paru -Sa

sudo systemctl enable ly.service
sudo systemctl enable sshd

sudo mkdir -p /usr/share/fonts/codelia
sudo gpg -o /usr/share/fonts/codelia/Codelia-Regular.otf -d ~/.config/fonts/Codelia/Codelia-Regular.otf.gpg

mkdir -p ~/.ssh
cat ~/.config/scripts/*.pub >> ~/.ssh/authorized_keys

