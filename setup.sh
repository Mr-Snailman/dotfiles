#!/bin/bash

echo 'Default Installs'
sudo dnf update -y
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y git maven java nodejs vim docker-ce docker-compose xorg-x11-drv-nvidia akmod-nvidia
sudo dnf update -y

echo 'Setup Docker Group'
sudo groupadd docker
sudo usermod -aG docker dustin.saunders

echo 'Enable Docker'
sudo systemctl enable docker
sudo systemctl start docker

echo 'Configuring vim'
cp vimrc $HOME/.vimrc
mkdir $HOME/.vim/bundle -p
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
